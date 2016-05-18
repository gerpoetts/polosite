
*******************************************       P O L O S I T E  - - - - -  2 0 1 6     ***************************************************


Lenguajes usados:
	Javascript, PHP, html5, xhtml, css3, python, json, jQuery, MySQL

Frameworks de lenguaje:
	Bootstrap 3.2   -  AngularJS   -   emberJS   -  CakePHP  -  jQueryGRid 4.5.4
	
API's usadas:
	calendarFR   CartF4   domPDF    RTS   SQLhandler  

Versión de sistemas:
	PHP 5.6   MySQL 5.4 (Puerto default)

Archivo SQL Database:
	backup - limpio.sql

Configuración Apache:
	.htacess

Configuración WS2002:
	web.config
	
Administrador de DB y PHP:
	phpmyadmin 

Archivo Conexión DB:
application/config/databse.php


Graficas
HighChart - JS 

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////                 CATEGORIAS DE CARPETA Y UBICACIONES        ///////////////////////////////////////////////// /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


Categoría de folders:

					°APPPLICATION: Core de la aplicación, logos, xhtml views, controllers para cada página de php con estructuración prima 5.0
								CACHE: procesamiento de cache de sesión
								CONFIG: configuracion de handlers, Conexión DB, Routers y user agent
								LANGUAGE: Lenguajes app (Sólo español)
								CONTROLLERS: PHP files unroute a HTML index, vistas de cada una de las páginas nombradas
								CORE: Cache core de la aplicación
								ERRORS: Handlers para errores de conexión, 402, 404, General, PHP y sistema
								HELPERS: Control debuger para formulas, error de conexión, tiempo de espera, desconexión por inactividad
								Libraries: APIS : dompdf con su estrctura completa      EnLetras  Traductor de numeros a letras
								MODELS : Inserción de modelos de sistema y configuración de cada sección

						°VIEWS: Vistas de cada sección de la aplicación, programadas sobre HTML para uso dinamico en PHP
										ACCESO: Starter del sitio, página de bienvenida
										ALMACEN: Configuración de acciones de almacén
										GUIA: Ayuda rapida para el usuario final
										INICIO: index
										MANTENIMIENTO: Handlers codificados en HTML sobre PHP para control de la Base de Datos
										POPUP: Modificacion al producto (ADD-SUB-EXCTRACT-continuesarray)
										RESPALDO: Handler para la configuración del respaldo
										VENTAS: Generación de reportes, devoluciones, proformas, factura, comprobante, impresion


				
						°ASSETS: 
														BOOTSTRAP:	configuración Bootstrap
																									configuración fuentes
																									JQueryGrid
																									JS responsible formats
														
														SCRIPTS:			JS generador del comprobante
														
														
														DOC: Documentación completa, sin interfaces. (Sólo visible en codigo)
						
						°BACKUPS:
															Carpeta de almacenaje de respaldos
															 
						°PHPMYADMIN: phpMyAdmin  * CONTENIDO NO MODIFICABLE *
						
						
						°SYSTEM:
													
													Funciones Core del sistema
													Database Drivers
													Fonts
													Helpers para configuración: Indexación, array, cookies, fecha, directorio, descarga, email, file reading UXML helper
													
							°LANGUAGE: 
													
													Lenguaje Ingles: Core de metadatos de los helpers
													
							°LIBRARIES:
													
													Cache drivers del core para sistema incluido
													
													JS
															Managers de sistema
				
								°UPLOADS:
												Reciever folder para JS y guardado de plantillas

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



FUNCIONAMIENTO GENERAL:


				
				
				
				
***************************************                                                    ***************************************
***************************************														POLOPLAST COMPONENTES, 2016					    		***************************************
***************************************                                                    ****************************************
				
				
	:::::::::::::::::::BASE DE DATOS:::::::::::::::::  MySQL Port: 3306
	
$db['default']['hostname'] = 'localhost';
$db['default']['username'] = 'root';
$db['default']['password'] = 'hiadmin';
$db['default']['database'] = 'polosite';
	
	
	
	::::::::::::::::::::USUARIOS::::::::::::::::::::::  [USUARIOS ENCRIPTADOS EN DM5]
	
	ggalvan    PoloPlast2015
	
	todos los demás: 123456   (589bebf4ae7babd1ba7c23b89358f899)
	
				
				
				
				

**********************************************************************************************************************************
*************************************                                                    *****************************************
***************************************									POLOPLAST COMPONENTES, 2016					    		********************************************
*************************************                                                    *****************************************
**********************************************************************************************************************************
				
				
				
				
				