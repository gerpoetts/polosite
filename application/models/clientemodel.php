<?php
class ClienteModel extends CI_Model
{
	public function Actualizar($data)
	{
 		$this->db->trans_start();
 		
 		$data['Correo'] = strtolower($data['Correo']);
 		
		$id = $data['id'];
		
		$validacion = true;
		if($data['Rfc'] != '')
		{
			if(!isRfc($data['Rfc']))
			{
				$validacion = false;
				$this->responsemodel->message = 'El RFC ingresado no es válido.';					
			}
			else if($data['Direccion'] == '')
			{
				$validacion = false;
				$this->responsemodel->message = 'Un cliente con RFC debe tener obligatoramiente una dirección.';						
			}
			else if($this->db->query("SELECT COUNT(*) Total FROM cliente WHERE Empresa_id = " . $this->user->Empresa_id . " AND id != $id AND Rfc = '" . $data['Rfc'] . "'")->row()->Total > 0)
			{
				$validacion = false;
				$this->responsemodel->message = 'Ya existe un cliente con este RFC.';
			}
		}
		if($data['Curp'] != '')
		{
			if(!isCurp($data['Curp']))
			{
				$validacion = false;
				$this->responsemodel->message = 'El CURP ingresado no es válido.';					
			}
			else if ($this->db->query("SELECT COUNT(*) Total FROM cliente WHERE Empresa_id = " . $this->user->Empresa_id . " AND id != $id AND Curp = '" . $data['Curp'] . "'")->row()->Total > 0)
			{
				$validacion = false;
				$this->responsemodel->message = 'Ya existe un cliente con este CURP.';					
			}
		}			
		if($validacion)
		{
			$this->db->where('id', $data['id']);
			$this->db->update('cliente', $data);
	
			$this->responsemodel->SetResponse(true);				
		}
		
		$this->db->trans_complete();
		 
		if ($this->db->trans_status() === FALSE)
		{
			log_message('1', __CLASS__ . '->' . __METHOD__);
			$this->responsemodel->SetResponse(false);	
		}
				
 		return $this->responsemodel;
	}
	public function Registrar($data)
	{
		$this->db->trans_start();
		
		$data['Correo'] = strtolower($data['Correo']);
		
		$validacion = true;
		if($data['Rfc'] != '')
		{
			if(!isRfc($data['Rfc']))
			{
				$validacion = false;
				$this->responsemodel->message = 'El RFC ingresado no es válido.';					
			}
			else if($data['Direccion'] == '')
			{
				$validacion = false;
				$this->responsemodel->message = 'Un cliente con RFC debe tener obligatoramiente una dirección.';						
			}else if($this->db->query("SELECT COUNT(*) Total FROM cliente WHERE Empresa_id = " . $this->user->Empresa_id . " AND Rfc = '" . $data['Rfc'] . "'")->row()->Total > 0)
			{
				$validacion = false;
				$this->responsemodel->message = 'Ya existe un cliente con este RFC.';
			}
		}
		if($data['Curp'] != '')
		{
			if(!isCurp($data['Curp']))
			{
				$validacion = false;
				$this->responsemodel->message = 'El CURP ingresado no es válido.';					
			}
			else if($this->db->query("SELECT COUNT(*) Total FROM cliente WHERE Empresa_id = " . $this->user->Empresa_id . " AND Curp = '" . $data['Curp'] . "'")->row()->Total > 0)
			{
				$validacion = false;
				$this->responsemodel->message = 'Ya existe un cliente con este CURP.';					
			}
		}
		if($validacion)
		{
			$data['Empresa_id'] = $this->user->Empresa_id;
			$this->db->insert('cliente', $data);
			
			$this->responsemodel->SetResponse(true);
			$this->responsemodel->href   = 'mantenimiento/cliente/' . $this->db->insert_id();				
		}
		
		$this->db->trans_complete();
		 
		if ($this->db->trans_status() === FALSE)
		{
			log_message('1', __CLASS__ . '->' . __METHOD__);
			$this->responsemodel->SetResponse(false);	
		}
		
		return $this->responsemodel;
	}
	public function Obtener($id)
	{
		$this->db->where('Empresa_id', $this->user->Empresa_id);
		$this->db->where('id', $id);
		return $this->db->get('cliente')->row();
	}
	public function Eliminar($id)
	{
		if($this->db->query("SELECT COUNT(*) Total FROM comprobante WHERE cliente_id = $id")->row()->Total > 0)
		{
			$this->responsemodel->SetResponse(false, 'Este <b>registro</b> no puede ser eliminado.');
		}
		else
		{
			$this->db->where('Empresa_id', $this->user->Empresa_id);
			$this->db->where('id', $id);
			$this->db->delete('cliente');
			
			$this->responsemodel->SetResponse(true);
			$this->responsemodel->href = 'mantenimiento/clientes/';
		}
		
		return $this->responsemodel;
	}
	public function Listar()
	{
		$where  = "Empresa_id = " . $this->user->Empresa_id . ' ';;
		
		$this->filter = isset($_REQUEST['filters']) ? json_decode($_REQUEST['filters']) : null;

		if($this->filter != null)
		{
			foreach($this->filter->{'rules'} as $f)
			{
				if($f->field == 'Nombre') $where .= "AND Nombre LIKE '" . $f->data . "%' ";
				if($f->field == 'Identidad') $where .= "AND Identidad LIKE '" . $f->data . "%' ";
			}
		}

		$this->db->where($where);
		$this->jqgridmodel->Config($this->db->SELECT('COUNT(*) Total FROM cliente')->get()->row()->Total);
		
		$sql = "
			SELECT 
				*,
				IF(Rfc = '', Curp, Rfc) AS Identidad
			FROM cliente
			WHERE $where
			ORDER BY " . $this->jqgridmodel->sord . "
			LIMIT " . $this->jqgridmodel->start . "," . $this->jqgridmodel->limit;

		$this->db->where($where);
		$this->jqgridmodel->DataSource($this->db->query($sql)->result());
			
		return $this->jqgridmodel;
	}
	public function Buscar($criterio, $tipo=0)
	{
		// 1 Tiene Rfc 2 Solo Curp
		$select = "*, IF(Rfc = '', Curp, Rfc) AS Identidad";
		
		if($tipo == '3') $select = '*, Rfc Identidad';
		if($tipo == '2') $select = '*, Curp Identidad';
		
		$sql = "
			SELECT $select FROM cliente
			WHERE Nombre LIKE '%$criterio%'
			AND Empresa_id = " . $this->user->Empresa_id . "
			ORDER BY Nombre
			LIMIT 10
		";		

		return $this->db->query($sql)->result();
	}
}