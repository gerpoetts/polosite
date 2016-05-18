<?php
	//array_debug($cliente); 
?>
<script>
$(document).ready(function(){
	BuscarClientes();
})
function BuscarClientes(){
	var input = $("#txtCliente");

    input.autocomplete({
        dataType: 'JSON',
        source: function (request, response) {
            jQuery.ajax({
                url: base_url('services/clientes'),
                type: "post",
                dataType: "json",
                data: {
                    criterio: request.term
                },
                success: function (data) {
                    response($.map(data, function (item) {
                        return {
                            id: item.id,
                            value: item.Nombre,
                            identidad: item.Identidad,
                            direccion: item.Direccion
                        }
                    }))
                }
            })
        },
        search  : function(){$(this).addClass('ui-autocomplete-loading');},
        open    : function(){$(this).removeClass('ui-autocomplete-loading');},
        select: function (e, ui) {
        	return false;
        }
    })
}
</script>
<div class="row">
	<div class="col-md-12">
		<div class="page-header">
			<h1><?php echo $cliente == null ? "Nuevo Cliente" : $cliente->Nombre; ?></h1>
		</div>
		<ol class="breadcrumb">
		  <li><a href="<?php echo base_url('index.php'); ?>">Inicio</a></li>
		  <li><a href="<?php echo base_url('index.php/mantenimiento/clientes'); ?>">Clientes</a></li>
		  <li class="active"><?php echo $cliente == null ? "Nuevo Item" : $cliente->Nombre; ?></li>
		</ol>
		<div class="row">
			<div class="col-md-12">
				<?php echo form_open('mantenimiento/clientecrud', array('class' => 'upd')); ?>
				<?php if($cliente != null): ?>
				<input type="hidden" name="id" value="<?php echo $cliente->id; ?>" />
				<?php endif; ?>
				  <div class="well well-sm">(*) Campos obligatorios</div>
				  <div class="form-group">
				    <label>Nombre (*)</label>
				    <input id="txtCliente" autocomplete="off" name="Nombre" type="text" class="form-control required" placeholder="Nombre del cliente" value="<?php echo $cliente != null ? $cliente->Nombre : null; ?>" />
				    <span class="help-block">Puede consultar los datos con el RFC haciendo click en <a target="_blank" href="https://portalsat.plataforma.sat.gob.mx/ConsultaRFC/">RFC CONSULTAS EN LINEA</a>.</span>
				  </div>
				  <div class="form-group">
				    <label>RFC</label>
				    <input autocomplete="off" maxlength="13" name="Rfc" type="text" class="form-control" placeholder="Ingrese el RFC" value="<?php echo $cliente != null ? $cliente->Rfc : null; ?>" />
				  </div>
				  <div class="form-group">
				    <label>CURP</label>
				    <input autocomplete="off" maxlength="18" name="Curp" type="text" class="form-control" placeholder="Ingrese el CURP" value="<?php echo $cliente != null ? $cliente->Curp : null; ?>" />
				  </div>
				  <div class="form-group">
				    <label>Télefono Principal</label>
				    <input autocomplete="off" name="Telefono1"  type="text" class="form-control" placeholder="Télefono Principal" value="<?php echo $cliente != null ? $cliente->Telefono1 : null; ?>" />
				  </div>
				  <div class="form-group">
				    <label>Télefono Adicional</label>
				    <input autocomplete="off" name="Telefono2"  type="text" class="form-control" placeholder="Télefono Adicional" value="<?php echo $cliente != null ? $cliente->Telefono2 : null; ?>" />
				  </div>
				  <div class="form-group">
				    <label>Correo</label>
				    <input autocomplete="off" name="Correo"  type="text" class="form-control" placeholder="Correo" value="<?php echo $cliente != null ? $cliente->Correo : null; ?>" />
				  </div>
				  <div class="form-group">
				    <label>Dirección</label>
				    <textarea name="Direccion" class="form-control" placeholder="Dirección"><?php echo $cliente != null ? $cliente->Direccion : null; ?></textarea>
				  </div>
				  <div class="clearfix text-right">
				  <?php if(isset($cliente)): ?>
				  	<button type="button" class="btn btn-danger submit-ajax-button del" value="<?php echo base_url('index.php/mantenimiento/clienteeliminar/' . $cliente->id); ?>">Eliminar</button>
			  	  <?php endif; ?>
				  	<button type="submit" class="btn btn-info submit-ajax-button">Guardar</button>
				  </div>
				<?php echo form_close(); ?>
			</div>
		</div>
	</div>
</div>