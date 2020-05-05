<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../images/favicon.png">
    <title>Vela Music</title>
    
    <!-- Bootstrap Core CSS -->
    <link href="../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Calendar CSS -->
    <link href="../assets/plugins/calendar/dist/fullcalendar.css" rel="stylesheet" />
    
    <!-- Footable CSS -->
    <link href="../assets/plugins/footable/css/footable.bootstrap.min.css" rel="stylesheet">
	<link href="../assets/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../assets/plugins/datatables/media/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="../assets/plugins/datatables/media/css/responsive.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="../css/sweetalert2.min.css">
	
    <!-- Page plugins css -->
    <link href="../assets/plugins/clockpicker/dist/bootstrap-clockpicker.min.css" rel="stylesheet">
    
    <!-- Date picker plugins css -->
    <link href="../assets/plugins/bootstrap-datepicker/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />
    
    <!-- Custom CSS -->
<!--     <link href="../css/helper.css" rel="stylesheet"> -->
    <link href="../css/style.css" rel="stylesheet">
<!--     <link href="../css/icons/flag-icon-css/flag-icon.min.css" rel="stylesheet"> -->
    
    <!-- You can change the theme colors from here -->
    <link href="../css/blue.css" id="theme" rel="stylesheet">
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

 <!-- CSS Section -->
 
<style type="text/css">
.textarea textarea {
    background-color: white;
    /*background-image: url("http://ello.96.lt/images/as.jpg");*/
    line-height: 200%;
    padding-left: 75px;
    padding-right: 0.3em;
    border: solid 1px #525252;
}

/*     * { */
/*       font-family: 'Source Sans Pro', sans-serif; */
/*     } */
    
    .hero-unit {
      margin-top: 100px;
      font-weight: 400;
    }


.tooltip-inner {
    background-color: #28afd0;
    text-align: left;
}
.tooltip.bs-tooltip-right .arrow:before {
    border-right-color: #28afd0 !important;
    text-align: left;
}
.tooltip.bs-tooltip-left .arrow:before {
    border-right-color: #28afd0 !important;
    text-align: left;
}
.tooltip.bs-tooltip-bottom .arrow:before {
    border-right-color: #28afd0 !important;
    text-align: left;
}
.tooltip.bs-tooltip-top .arrow:before {
    border-right-color: #28afd0 !important;
    text-align: left;
}

ul {
  text-align: left;
}


</style>
</head>


<body class="fix-header fix-sidebar card-no-border" style="">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader" style="display: none;">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10"></circle> </svg>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <!-- header header  -->
        <jsp:include page="../headBody.jsp" />

        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->

        <!-- Left Sidebar  -->
        <jsp:include page="../menuIzq.jsp" />

        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper" style="min-height: 800px;">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid"  style="font-size: 0.7rem;">
                
                <!-- barra Head -->
                <jsp:include page="../barraHead.jsp" />

                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <!-- Row -->
                <div class="row">
	                <div class="col-lg-12 col-xlg-12 col-md-12">
	                	<div class="alert alert-success" id="success-alert">
							  <strong>Se agrego la llamada de manera exitosa!</strong> 
						</div>
						<div class="alert alert-success" id="success-alert-del">
							  <strong>Se dio de baja la llamada!</strong> 
						</div>
						<div class="alert alert-danger" id="success-danger">
							  <strong>! ! ! Hubo un error en el sistema, Contacte al de Sistemas ! ! !</strong> 
						</div>
					</div>
				</div>
                <div class="row">
                
                		<div id="add-call" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
                        	<div class="modal-dialog modal-md">
                            	<div class="modal-content">
                                	<div class="modal-header">
	                                	<button type="button" class="close" data-dismiss="modal" aria-hidden="true" ><i class="mdi mdi-account-check"></i></button>
                                       	<h4 class="modal-title" id="myModalLabel"> Hacer llamada</h4> </div>
                                       	<div class="modal-body">
                                       		<div class="card card-outline-info">
					                            <div class="card-header">
					                                <h4 class="m-b-0 text-white"></h4>
					                            </div>
					                            <div class="card-body">
                                       		<from class="form-horizontal">
<%--                                             	<form:form method="get" action="/musicapp/admin/guard" id="formClientes" class="form-horizontal">	 --%>
												<input type="hidden" id="clienteId" value="${clienteDto.clienteId}" >
												<input type="hidden" id="nombreEmpleado" name="nombreEmpleado" >
								                <input type="hidden" id="action" name="action">
								                <input type="hidden" id="empleadoId" name="empleadoId" value="7">
					                
				                                <div class="form-group">
				                                    <div class="col-md-12 m-b-20">
				                                    	<h2>Fecha: <span class="badge badge-secondary"> 12/Dic/2019 </span></h2>
				<!-- 					                                        <input type="text" class="form-control" placeholder="Type name">  -->
				                                    </div>
				                                </div>
				                                <div class="form-group">    
				                                    <div class="col-md-12 m-b-20">
				                                    	<h2>Cliente: <span class="badge badge-secondary"> ${clienteDto.nombre} ${clienteDto.apellidos} </span></h2>
				<!-- 					                                        <input type="text" class="form-control" placeholder="Type name">  -->
				                                    </div>
				                                </div>
					                            <div class="form-group">    
				                                    
				                                    <div class="col-md-12 m-b-20">
				                                    	<span for="hora" style="color: #009efb;">Hora de la llamada</span>
				<!-- 					                                    	<span class = "label label-primary">Primary Label</span> -->
				                                    	<input id="hora" name="hora" type="text" class="form-control" placeholder="HH:MM" readonly="readonly"> 
				                                    </div>
				                                    <div class="col-md-12 m-b-20">
				                                    	<label for="detalleLlamada" style="color: #009efb;">Teclee el detalle de la llamada</label>
																	<textarea class="form-control" name="detalleLlamada" id="detalleLlamada" rows="4" placeholder=" "></textarea>
																	<small class="form-control-feedback">Detalle de la llamada </small>
				                                    </div>
				
				                               	</div>
			                            	</from>
											<p>
											  
	                						  <a href="#add-evento" role="button" class="btn btn-info" data-toggle="modal" id="btnAgregar1">Crear Evento</a>
	                
											</p>
					                   </div>
                                       <div class="modal-footer">
                                           <button type="button" class="btn btn-success waves-effect" id="agregarLlamada" data-dismiss="modal">Guardar</button>
                                           <button type="button" class="btn btn-inverse waves-effect" data-dismiss="modal">Cancelar</button>
                                       </div>
                                        </div>
										                        </div>
                        	</div>
                                   <!-- /.modal-content -->
                    	</div>
                               <!-- /.modal-dialog -->
                    </div>
                    
                    <div id="add-evento" class="modal hide fade" data-backdrop-limit="1" tabindex="-1"" role="dialog" aria-labelledby="myModalEvento" aria-hidden="true" data-modal-parent="#add-call">
                        	<div class="modal-dialog modal-lg">
                            	<div class="modal-content">
                                	<div class="modal-header">
	                                	<button type="button" class="close" data-dismiss="modal" aria-hidden="true" ><i class="mdi mdi-account-check"></i></button>
                                       	<h4 class="modal-title" id=""> Crear Evento </h4> 
                                    </div>
                                     <div class="modal-body">
                                      	<from class="form-horizontal">
<%--                                             	<form:form method="get" action="/musicapp/admin/guard" id="formClientes" class="form-horizontal">	 --%>
											<input type="hidden" id="eventoId" value="">
											<input type="hidden" id="nombreEmpleado" name="nombreEmpleado" >
							                <input type="hidden" id="action" name="action">
							                <input type="hidden" id="empleadoId" name="empleadoId" value="${empleado.empleadoId}">
							                <input type="hidden" id="clienteId" name="clienteId" value="${clienteDto.clienteId}">
							                  
											<div class="card card-outline-info">
 													<div class="card-header">
					                                <h4 class="m-b-0 text-white"></h4>
					                            </div>
					                            <div class="card-body">
					                                <h4 class="card-title">Información del Evento</h4>
					                                <h6 class="card-subtitle">Teclee los datos del
					                                    <code>Evento</code> a dar de Alta.</h6>
					                                <div class="row">
					                                
					                                	<div class="col-md-6">
					                                        <label class="m-t-20">Grupo</label>
					                                        <div class="input-group ">
					                                            <input type="text" class="form-control" id="grupoE" value="">
					                                        </div>
					                                        
					                                       <label class="m-t-20">Anticipo</label>
					                                        <div class="input-group ">
					                                            <input type="text" class="form-control" id="anticipoE" value="">
					                                        </div>

					                                    </div>
					                                    <!-- OK -->
					                                    <div class="col-md-6">
					                                        <label class="m-t-20">Contrato</label>
					                                        <div class="input-group">
					                                            <input type="text" class="form-control" id="contratoE" value="">
					                                        </div>
					                                       <label class="m-t-20">Restante</label>
					                                        <div class="input-group">
					                                            <input type="text" class="form-control" id="restanteE" value="">
					                                        </div>
					                                    </div>
					                                    
					                                    <div class="col-md-6">
					                                        <label class="m-t-20">Telefono de Contacto</label>
					                                        <div class="input-group ">
					                                            <input type="text" class="form-control" id="telefonoE" value="">
					                                        </div>
					                                        
					                                        <label class="m-t-20">Hora Inicio</label>
					                                        <div class="input-group clockpicker data-placement="bottom" data-align="top" data-autoclose="true"">
					                                            <input type="text" class="form-control" value="12:00" id="horaInicioE">
					                                            <div class="input-group-append">
					                                                <span class="input-group-text">
					                                                    <i class="far fa-clock"></i>
					                                                </span>
					                                            </div>
					                                        </div>

					                                    </div>
					                                    <!-- OK -->
					                                    <div class="col-md-6">
					                                       <label class="m-t-20">Fecha</label>
					                                         <div class="input-group">
				                                                <input type="text" class="form-control mydatepicker" id="fechaE" placeholder="dd/mm/yyyy">
				                                                <div class="input-group-append">
				                                                    <span class="input-group-text">
				                                                        <i class="icon-calender"></i>
				                                                    </span>
				                                                </div>
				                                            </div>
					                                        <label class="m-t-20">Hora fin</label>
					                                        <div class="input-group clockpicker " data-placement="bottom" data-align="top" data-autoclose="true">
					                                            <input type="text" class="form-control" value="12:00" id="horaFinE">
					                                            <div class="input-group-append">
					                                                <span class="input-group-text">
					                                                    <i class="far fa-clock"></i>
					                                                </span>
					                                            </div>
					                                        </div>
					                                    </div>
					                                    
					                                    <div class="col-md-12">
					                                        <label class="m-t-20">Lugar del Evento</label>
					                                         <div class="input-group">
				                                                <input type="text" class="form-control" id="lugarEventoE" value="">
				                                            </div>
					                                        
					                                    </div>
					                                    
					                                    <div class="col-md-4">
					                                        <label class="m-t-20">Camioneta</label>
					                                        <div class="input-group">
				                                                <input type="text" class="form-control" id="camionetaE" value="">
				                                            </div>
					                                    </div>
					                                    <div class="col-md-4">
					                                        <label class="m-t-20">Tipo del Evento</label>
					                                        <div class="input-group">
				                                                <input type="text" class="form-control" id="tipoEventoE" value="">
				                                            </div>
					                                    </div>
					                                    <div class="col-md-4">
					                                        <label class="m-t-20">Chofer:</label>
					                                        <div class="input-group">
				                                                <input type="text" class="form-control" id="choferE" value="">
				                                            </div>
					                                    </div>
					                                </div>
					                            </div>
					                        </div>
				                
		                           </from>
                           		</div>
	                           	<div class="modal-footer">
<!-- 	                           		<button class="btn btn-success waves-effect" data-dismiss="modal" aria-hidden="true" id="agregarEvento">Guardar</button> -->
<!-- 	                           		<button class="btn btn-inverse waves-effect" data-dismiss="modal" aria-hidden="true">Cancel</button> -->
	                           		<button type="button" class="btn btn-success waves-effect" id="agregarEvento" data-dismiss="modal">Guardar</button>
                                    <button type="button" class="btn btn-inverse waves-effect" data-dismiss="modal">Cancelar</button>
	                        	</div>
                        	</div>
                                   <!-- /.modal-content -->
                    	</div>
                               <!-- /.modal-dialog -->
                    </div>
                    <!-- Column -->
                    <div class="col-lg-4 col-xlg-3 col-md-5">
                        <div class="card"> <img class="card-img" src="../assets/images/background/logoVela.jpeg" alt="Card image">
                            <div class="card-img-overlay card-inverse social-profile d-flex ">
                                <div class="align-self-center"> <img src="../assets/images/users/vela.jpeg" class="img-circle" width="100">
                                    <h4 class="card-title">Jesus Vela Guman</h4>
                                    <h6 class="card-subtitle">americanmusic@hotmail.com</h6>
                                    <p class="text-white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Administrador Principal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body"> 
                            	<small class="text-muted">Nombre o Raazon Social</small> <h6>${clienteDto.nombre} </h6> 
                            	<small class="text-muted p-t-30 db">Correo</small> <h6>americanmusic@hotmail.com </h6> 
                            	<small class="text-muted p-t-30 db">Telefono</small> <h6>${clienteDto.telefono}</h6> 
                            	<small class="text-muted p-t-30 db">Direccion</small> <h6>${clienteDto.calle} ${clienteDto.colonia} ${clienteDto.ciudad} ${clienteDto.estado} ${clienteDto.codigop}</h6>
                                <div class="map-box">
<!--                                     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d470029.1604841957!2d72.29955005258641!3d23.019996818380896!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e848aba5bd449%3A0x4fcedd11614f6516!2sAhmedabad%2C+Gujarat!5e0!3m2!1sen!2sin!4v1493204785508" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen></iframe> -->
                                    <iframe src="https://maps.google.com/maps?q=Calle%20La%20rivera%2017%2C%20cuernavaca%20morelos%20%20&t=&z=13&ie=UTF8&iwloc=&output=embed" width="100%" height="150" frameborder="0" style="border:0" allowfullscreen></iframe>
<!--                                     <iframe width="600" height="500" id="gmap_canvas" src="https://maps.google.com/maps?q=cuernacava%20&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe> -->
                                </div> <small class="text-muted p-t-30 db">Social Profile</small>
                                <br/>
                                <button class="btn btn-circle btn-secondary"><i class="fab fa-facebook-f"></i></button>
                                <button class="btn btn-circle btn-secondary"><i class="fab fa-twitter"></i></button>
                                <button class="btn btn-circle btn-secondary"><i class="fab fa-youtube"></i></button>
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                    <!-- Column -->
                    <div class="col-lg-8 col-xlg-9 col-md-7">
                        <div class="card">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs profile-tab" role="tablist">
                                <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home" role="tab">Historia de llamadas</a> </li>
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#profile" role="tab">Datos Personales</a> </li>
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#settings" role="tab">Editar</a> </li>
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#eventos" role="tab">Eventos</a> </li>
                            </ul>
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane active" id="home" role="tabpanel">
                                    <div class="card-body">
                                        <div class="profiletimeline">
<!--                                         	<div class="sl-item"> -->
<!--                                                 <div class="sl-left"> <h4>Hacer una llamada </h4></div> -->
<!--                                                 <div class="sl-right"> -->
<!--                                                     <div> -->
<%--                                                         <a href="javascript:hacerLlamada('${clienteDto.clienteId}', 7)" class="btn btn-success"> Hacer Llamada </a> --%>
<!--                                                     </div> -->
<!--                                                 </div> -->
<!--                                             </div> -->
                                             <div class="row">
								                	<div>
                                                        <a href="javascript:hacerLlamada()" class="btn btn-success"> Hacer Llamada </a>
                                                    </div>
											</div>
                                           
                                           <div class="sl-item">
	                                                
	                                       </div>
                                            <c:forEach var="llamadas" begin="0" items="${lstLlamadas}">
                                             	<div class="sl-item" id="item${llamadas.llamadaId}">
                                             		<hr>
	                                                <div class="sl-left"> 
	                                                <span class="round"><i class="ti-user"></i></span> </div>
	                                                <div class="sl-right">
	                                                    <div><a href="#" class="link">${llamadas.empleado.nombre} ${llamadas.empleado.apellidoPat} ${llamadas.empleado.apellidoMat}</a> 
	                                                    <span class="sl-date">${llamadas.tiempo}  <a href="javascript:eliminaLlamada(${llamadas.llamadaId})"><i class="fa fa-trash"></i></a></span>
	                                                        <p class="m-t-10"> ${llamadas.detalleLlamada} </p>
	                                                    </div>
	                                                </div>
	                                            </div>
										    </c:forEach>
										    <div class="sl-item">
<!-- 										    <td style="white-space:nowrap;" align="right"> -->
						                            
<!-- 						                            <button type="button" onclick="edita(9,'RECEPCIONISTA',1)" title="Editar Puesto" class="btn btn-outline-info btn-sm"> -->
<!-- 						                            	<i class="fa fa-edit"></i> -->
<!-- 						                            </button> -->
<!-- 						                            <button type="button" onclick="elimina(9)" title="Eliminar Puesto" class="btn btn-outline-info btn-sm"> -->
<!-- 						                            	<i class="fa fa-trash"></i> -->
<!-- 						                            </button> -->
						                                                        
<!-- 						                       </td> -->
										    </div>
                                        </div>
                                    </div>
                                </div>
                                <!--second tab-->
                                <div class="tab-pane" id="profile" role="tabpanel">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-3 col-xs-6 b-r" > <strong>Nombre Completo</strong>
                                                <br>
                                                <p class="text-muted" id="pNombre">${clienteDto.nombre} ${clienteDto.apellidos}</p>
                                            </div>
                                            <div class="col-md-3 col-xs-6 b-r"> <strong>Telefono(s)</strong>
                                                <br>
                                                <p class="text-muted" id="pTelefono">${clienteDto.telefono}</p>
                                            </div>
                                            <div class="col-md-3 col-xs-6 b-r"> <strong>Correo</strong>
                                                <br>
                                                <p class="text-muted" id="pCorreo">${clienteDto.correo}</p>
                                            </div>
                                            <div class="col-md-3 col-xs-6"> <strong>Ciudad</strong>
                                                <br>
                                                <p class="text-muted" id="pCiudad">${clienteDto.ciudad}</p>
                                            </div>
                                        </div>
                                        <hr>
                                        <p class="m-t-30" id="pDescripcion">${clienteDto.descripcion}</p>
<!--                                         <h4 class="font-medium m-t-30">Skill Set</h4> -->
<!--                                         <hr> -->
<!--                                         <h5 class="m-t-30">Wordpress <span class="pull-right">80%</span></h5> -->
<!--                                         <div class="progress"> -->
<!--                                             <div class="progress-bar bg-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width:80%; height:6px;"> <span class="sr-only">50% Complete</span> </div> -->
<!--                                         </div> -->
<!--                                         <h5 class="m-t-30">HTML 5 <span class="pull-right">90%</span></h5> -->
<!--                                         <div class="progress"> -->
<!--                                             <div class="progress-bar bg-info" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width:90%; height:6px;"> <span class="sr-only">50% Complete</span> </div> -->
<!--                                         </div> -->
<!--                                         <h5 class="m-t-30">jQuery <span class="pull-right">50%</span></h5> -->
<!--                                         <div class="progress"> -->
<!--                                             <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width:50%; height:6px;"> <span class="sr-only">50% Complete</span> </div> -->
<!--                                         </div> -->
<!--                                         <h5 class="m-t-30">Photoshop <span class="pull-right">70%</span></h5> -->
<!--                                         <div class="progress"> -->
<!--                                             <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width:70%; height:6px;"> <span class="sr-only">50% Complete</span> </div> -->
<!--                                         </div> -->
                                    </div>
                                </div>
                                <div class="tab-pane" id="settings" role="tabpanel">
                                    <div class="card-body">
                                        <form:form method="get" action="/musicapp/admin/listaClientes" id="formClientes" class="form-horizontal">
		                                	<input type="hidden" id="clienteId" value="${clienteDto.clienteId}">
		                                	<input type="hidden" id="direccionId" value="${clienteDto.direccionId}" >
		                                	<input type="hidden" id="cadena" name="cadena">
		                                	<input type="hidden" id="actualiza" value="1">
										    <input type="hidden" id="dellamada" value="">
		                                	
		                                    <div class="form-body">
		                                        <h3 class="box-title" style="color: black;">Informaci&oacute;n Personal</h3>
		                                        <hr class="m-t-0 m-b-40">
		                                        
		                                        <div class="row">
		                                            <div class="col-md-12">
		                                                <div class="form-group row">
		                                                    <label class="control-label text-center col-md-2">Nombre(s)</label>
		                                                    <div class="col-md-10">
		                                                        <input type="text" class="form-control" id="nombre" placeholder="" value="${clienteDto.nombre}">
		                                                        <small class="form-control-feedback">Nombre del Cliente o Razon Social </small> </div>
		                                                </div>
		                                            </div>
		                                            <!--/span-->
		                                            <!--/span-->
		                                        </div>
		                                        
		                                        <!--/row-->
		                                        <div class="row">
		                                            <div class="col-md-12">
		                                               <div class="form-group row">
		                                                    <label class="control-label text-center col-md-2">Apellidos</label>
		                                                    <div class="col-md-10">
		                                                        <input type="text" class="form-control" id="apellidos" placeholder="" value="${clienteDto.apellidos}">
		                                                        <small class="form-control-feedback"> Apellidos o Descripcion del Grupo. </small> </div>
		                                                </div>
		                                            </div>
		                                            <!--/span-->
		                                            
		                                            <!--/span-->
		                                        </div>
		                                        
		                                        <div class="row">
		                                            <div class="col-md-6">
		                                                <div class="form-group row">
		                                                    <label class="control-label text-right col-md-3">Correo</label>
		                                                    <div class="col-md-9">
		                                                        <input type="text" class="form-control" id="correo" placeholder="" value="${clienteDto.correo}">
		                                                        <small class="form-control-feedback">Correo Valido </small> </div>
		                                                </div>
		                                            </div>
		                                            
		                                            <div class="col-md-6">
		                                                <div class="form-group row">
		                                                    <label class="control-label text-right col-md-3">Telefono</label>
		                                                    <div class="col-md-9">
		                                                        <input type="text" class="form-control" id="telefono" placeholder="(777) 7777777" value="${clienteDto.telefono}">
		                                                        <small 	class="form-control-feedback"> Telefono de contacto </small> </div>
		                                                </div>
		                                            </div>
		                                        </div>
		                                        										                                        
		                                        <hr class="m-t-0 m-b-40">
		                                        <h3 class="box-title" style="color: black;">Direcci&oacute;n</h3>
		                                        <hr class="m-t-0 m-b-40">
		                                        <!--/row-->
		                                        <div class="row">
		                                            <div class="col-md-6">
		                                                <div class="form-group row">
		                                                    <label class="control-label text-right col-md-3">Calle</label>
		                                                    <div class="col-md-9">
		                                                        <input type="text" id="calle" class="form-control" value="${clienteDto.calle}">
		                                                    </div>
		                                                </div>
		                                            </div>
		                                            <div class="col-md-6">
		                                                <div class="form-group row">
		                                                    <label class="control-label text-right col-md-3">Colonia</label>
		                                                    <div class="col-md-9">
		                                                        <input type="text" id="colonia" class="form-control" value="${clienteDto.colonia}">
		                                                    </div>
		                                                </div>
		                                            </div>
		                                        </div>
		                                        <div class="row">
		                                            <div class="col-md-6">
		                                                <div class="form-group row">
		                                                    <label class="control-label text-right col-md-3">Ciudad</label>
		                                                    <div class="col-md-9">
		                                                        <input type="text" id="ciudad" class="form-control" value="${clienteDto.ciudad}">
		                                                    </div>
		                                                </div>
		                                            </div>
		                                            <!--/span-->
		                                            <div class="col-md-6">
		                                                <div class="form-group row">
		                                                    <label class="control-label text-right col-md-3">Estado</label>
		                                                    <div class="col-md-9">
		                                                        <input type="text" id="estado" class="form-control" value="${clienteDto.estado}">
		                                                    </div>
		                                                </div>
		                                            </div>
		                                            <!--/span-->
		                                        </div>
		                                        <!--/row-->
		                                        <div class="row">
		                                            <div class="col-md-6">
		                                                <div class="form-group row">
		                                                    <label class="control-label text-right col-md-3">C. P.</label>
		                                                    <div class="col-md-9">
		                                                        <input type="text" id="codigoPostal" class="form-control" value="${clienteDto.codigop}">
		                                                    </div>
		                                                </div>
		                                            </div>
		                                            <!--/span-->
		                                            <div class="col-md-6">
		                                                <div class="form-group row">
		                                                </div>
		                                            </div>
		                                            <!--/span-->
		                                        </div>
		                                        <!--/row-->
   		                                        <div class="row">
		                                            <div class="col-md-11">
		                                                <div class="form-group row">
		                                                    <label class="control-label text-right col-md-2">Descripcion</label>
		                                                    <div class="col-md-10">
    															<textarea class="form-control" id="descripcionText" rows="5">${clienteDto.descripcion}</textarea>
    															<small class="form-control-feedback">Descripción: para agregar saltos de linea agregue &lt;br&gt; </small>
		                                                    </div>
		                                                </div>
		                                            </div>
		                                            <!--/span-->
		                                            <div class="col-md-3">
		                                                <div class="form-group row">
															
		                                                </div>
		                                            </div>
		                                            <!--/span-->
		                                        </div>
		                                        <!--/row-->
		                                    </div>
		                                    <hr>
		                                    <div class="form-actions">
		                                        <div class="row">
		                                            <div class="col-md-6">
		                                                <div class="row">
		                                                    <div class="col-md-offset-3 col-md-9">
<!-- 		                                                        <button type="submit" class="btn btn-success">Submit</button> -->
<!-- 		                                                        <button type="button" class="btn btn-inverse">Cancel</button> -->
		                                                        
						                                        <button type="button" class="btn btn-success waves-effect" id="actualizarCliente" >Actualizar</button>
				                                                <button type="button" class="btn btn-inverse waves-effect" >Cancelar</button>
				                                            
		                                                    </div>
		                                                </div>
		                                            </div>
		                                            <div class="col-md-6"> </div>
		                                        </div>
		                                    </div>
		                                </form:form>
                                    </div>
                                </div>
                                
                                
                                <div class="tab-pane" id="eventos" role="tabpanel">
                                    <div class="card-body">
                                        <form class="form-horizontal form-material">
                                             <div class="card-body">
				                                <div class="d-flex no-block align-self-center">
				                                    <div>
				                                        
				                                    <h4 class="card-title">Eventos</h4>
				                                    <h6 class="card-subtitle">Total de Eventos creados por el Cliente</h6>
				                                    </div>
				                                    <div class="ml-auto">
				                                    <label class="m-t-10"></label>
				                                        <div class="input-group ">
				                                            <button type="button" class="btn btn-info btn-rounded m-t-10 float-right" data-toggle="modal" id="btnAgregar" data-target="#add-evento" style="font-size: smaller;">Agregar Nuevo Evento</button>
				                                        </div>    
				<!--                                 <select class="custom-select"> -->
				<!--                                     <option selected="">Electronics</option> -->
				<!--                                     <option value="1">Kitchen</option> -->
				<!--                                     <option value="2">Crocory</option> -->
				<!--                                     <option value="3">Wooden</option> -->
				<!--                                 </select> -->
				                                    </div>
				                                </div>
				                                <div class="table-responsive">
				                                    <table class="table stylish-table">
				                                        <thead>
				                                            <tr>
				                                                <th style="width:90px;">#Id</th>
				                                                <th>Lugar Evento</th>
				                                                <th>Anticipo</th>
				                                                <th>Restante</th>
				                                                <th>Total</th>
				                                            </tr>
				                                        </thead>
				                                        <tbody>
				                                        	<c:forEach var="eventos" begin="0" items="${lstEventos}">
					                                            <tr>
					                                                <td><span class="round"><i class="ti-shopping-cart"></i></span></td>
					                                                <td>
					                                                    <h6><a href="javascript:void(0)" class="link">${eventos.grupo},  ${eventos.lugarEvento}</a></h6>
					                                                    <small class="text-muted">Contrato: ${eventos.contrato} Fecha Evento: ${eventos.fechaEvento} Telefono: ${eventos.telefono}</small></td>
					                                                <td>
					                                                    <h5>${eventos.anticipo}</h5></td>
					                                                <td>
					                                                    <h5>$${eventos.restante}</h5></td>
					                                                <td>
					                                                    <h5>${eventos.anticipo + eventos.restante}</h5></td>
					                                            </tr>
				                                            </c:forEach>
				                                        </tbody>
				                                    </table>
				                                </div>
				                            </div>
                                        </form>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <!-- Column -->
                </div>
                <!-- Row -->
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer">
                © 2019 Production Vela Music
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
 	<script src="../assets/plugins/jquery/jquery.min.js"></script>
    <script src="../assets/plugins/calendar/jquery-ui.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../assets/plugins/popper/popper.min.js"></script>
    <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="../js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="../js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="../assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="../assets/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!--Custom JavaScript -->
    <script src="../js/custom.min.js"></script>
    <!-- Calendar JavaScript -->
    <script src="../assets/plugins/moment/moment.js"></script>
    
    <script src="../js/jasny-bootstrap.js"></script>
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="../assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    <script src="../assets/plugins/sweetalert/sweetalert.min.js"></script>
    
<!--     <script src="../../js/plugins/footable/js/footable.min.js"></script> -->
-     <script src="../assets/plugins/bootstrap-select/bootstrap-select.min.js" type="text/javascript"></script> -->
    <!--FooTable init-->
            <!-- Clock Plugin JavaScript -->
            <script src="../assets/plugins/clockpicker/dist/bootstrap-clockpicker.min.js"></script>
            
            <!-- Date Picker Plugin JavaScript -->
            <script src="../assets/plugins/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    
<script type="text/javascript">

$(document).ready(function() {
	
	$('#add-call').modal('hide');
	$('a[data-toggle=tooltip]').tooltip();
	$('#add-evento').modal('hide');
	
	console.log('oculta');
	$('#success-alert').hide();
	$('#success-alert-del').hide();
	$('#success-danger').hide();
	
	//Evento para guardar o actulizar el registro
	 $("#actualizarCliente").click(function() {
		 console.log($('#telefono').val());
		 Swal.fire({
			  title: 'Estas seguro de actualizar la información del Cliente?',
			  text: "Se actulizaran los registros modificados del Cliente!",
			  type: 'info',
			  showCancelButton: true,
			  /*confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',*/
			  confirmButtonText: 'Si, Actualizar Información!'
			}).then((result) => {
			  if (result.value) {
				  console.log(result.value);
			 	$.ajax({
		    		url: "actualizaInfo",
		    		type: "post",
		    		data: {
		    			clienteId:$('#clienteId').val(),
		    			direccionId:$('#direccionId').val(),
		    			nombre:$('#nombre').val(),
		    			apellidos:$('#apellidos').val(),
		    			correo:$('#correo').val(),
		    			telefono:$('#telefono').val(),
		    			calle:$('#calle').val(),
		    			ciudad:$('#ciudad').val(),
		    			colonia:$('#colonia').val(),
		    			estado:$('#estado').val(),
		    			codigoPostal:$('#codigoPostal').val(),
		    			descripcion:$('#descripcionText').val(),
		    			actualiza:$('#actualiza').val()
		    		},	
		    		success : function(data){
		    			console.log(data);
	
		    			 if ("ok" == data) {
		    				 
			    			 /*$("#success-alert").show();
			    			 window.setTimeout(function () {
			    			     $("#success-alert").slideUp(500, function () {
			    			          $("#success-alert").hide();
			    			      });
			    			 }, 3000);*/
				    			 $('#pNombre').text($('#nombre').val() + ' '+$('#apellidos').val())
				    			 $('#pTelefono').text($('#telefono').val())
				    			 $('#pCorreo').text($('#correo').val())
				    			 $('#pCiudad').text($('#ciudad').val())
				    			 $('#pDescripcion').text($('#descripcionText').val())
				    			 
				    			 
			    			 Swal.fire({ position: 'center', type: 'success', title: 'La información ha sido Actualizada',showConfirmButton: false,timer: 1500});
	// 		    			 $("#formClientes").submit();	
	
		    			 }
		    			 
		    		},
		    		error: function(data) {
		    			 $("#success-danger").show();
		    			 window.setTimeout(function () {
		    			     $("#success-danger").slideUp(500, function () {
		    			          $("#success-danger").hide();
		    			      });
		    			 }, 2500);
		            }, 
		    	}); /*fin Ajax*/
		 	
			  }
			});
		 	
	    }); /* Fin onClick*/
	
	//Evento para guardar o actulizar el registro
	 $("#agregarLlamada").click(function() {
		 	
			console.log('en boton');
	    	$.ajax({
	    		url: "guardaLlamada",
	    		type: "post",
	    		data: {
	    			clienteId:$('#clienteId').val(),
	    			hora:$('#hora').val(),
	    			detalleLlamada:$('#detalleLlamada').val(),
	    			empleadoId:$('#empleadoId').val()
	    		},	
	    		success : function(data){
	    			
	    			var arreglo = data.split("|");
	    			console.log(data);

	    			$('#add-call').modal('toggle'); 
	    			
	    			 if ("ok" == arreglo[0]) {
		    			 $("#success-alert").show();
		    			 window.setTimeout(function () {
		    			     $("#success-alert").slideUp(500, function () {
		    			          $("#success-alert").hide();
		    			      });
		    			 }, 2500);
		    			 var str = "item"+arreglo[1];
		    			 var customTemplate = ('<div class="sl-item" id="'+str+'" > <hr>'+
		    	                    '<div class="sl-left"> <span class="round"><i class="ti-user"></i></span> </div> '+
		    	                    '  <div class="sl-right"> '+
		    	                    '    <div><a href="#" class="link">JESUS VELA GUZMAN</a> <span class="sl-date"> Justo ahora  <a href="javascript:eliminaLlamada('+arreglo[1]+')"><i class="fa fa-trash"></i></a> </span> '+
		    	                    '        <p class="m-t-10"> '+  $('#detalleLlamada').val() +' </p>'+
		    	                    '    </div>'+
		    	                    '  </div>'+
		    	                	'</div>')
		    		        $('.sl-item:first').before(customTemplate);

		    			 //$("#formClientes").submit();	

	    			 }
	    			 
	    		},
	    		error: function(data) {
	    			 $("#success-danger").show();
	    			 window.setTimeout(function () {
	    			     $("#success-danger").slideUp(500, function () {
	    			          $("#success-danger").hide();
	    			      });
	    			 }, 2500);
	            },
	            
	    	});
	    });	 

	 $("#btnAgregar").click(function() {
		 console.log('Limpiando Campos ');
		 $(".modal-body #eventoId").val( "" );
	     $(".modal-body #grupoE").val( "" );
		 $(".modal-body #contratoE").val( "" );
      	 $(".modal-body #anticipoE").val( "" );
      	 $(".modal-body #restanteE").val( "" );
      	 $(".modal-body #telefonoE").val( "" );
      	 $(".modal-body #fechaE").val( "" );
      	 $(".modal-body #lugarEventoE").val( "" );
      	 $(".modal-body #horaInicioE").val( "" );
      	 $(".modal-body #horaFinE").val( "" );
      	 $(".modal-body #choferE").val( "" );
      	 $(".modal-body #camionetaE").val( "" );
      	 $("#fechaE").prop('readonly',false);
      	 //$(".modal-body #empleadoId").val( obj.ciudad );
      	 //$(".modal-body #clienteId").val( obj.estado );
      	 //$(".modal-body #tipoEventoE").val( obj.codigop );
      	 $(".modal-body #actualiza").val( 0 );
      	$(".modal-body #dellamada").val( 0 );	 
      	jQuery('.mydatepicker, #datepicker').datepicker({
      		showOn: "on"	
      	});
	 });

	 $("#btnAgregar1").click(function() {
		 console.log('Limpiando Campos ');
		 $(".modal-body #eventoId").val( "" );
	     $(".modal-body #grupoE").val( "" );
		 $(".modal-body #contratoE").val( "" );
      	 $(".modal-body #anticipoE").val( "" );
      	 $(".modal-body #restanteE").val( "" );
      	 $(".modal-body #telefonoE").val( "" );
      	 $(".modal-body #fechaE").val( "" );
      	 $(".modal-body #lugarEventoE").val( "" );
      	 $(".modal-body #horaInicioE").val( "" );
      	 $(".modal-body #horaFinE").val( "" );
      	 $(".modal-body #choferE").val( "" );
      	 $(".modal-body #camionetaE").val( "" );
      	 $("#fechaE").prop('readonly',false);
      	 //$(".modal-body #empleadoId").val( obj.ciudad );
      	 //$(".modal-body #clienteId").val( obj.estado );
      	 //$(".modal-body #tipoEventoE").val( obj.codigop );
      	 $(".modal-body #actualiza").val( '0' );	 
      	 $(".modal-body #dellamada").val( '1' );
      	jQuery('.mydatepicker, #datepicker').datepicker({
      		showOn: "on"	
      	});
	 });

	 
	//Evento para guardar o actualizar el registro
	 $("#agregarEvento").click(function() {
		 	
			console.log('en boton Agregar Evento');
	    	$.ajax({
	    		url: "guardaEvento",
	    		type: "post",
	    		data: {
	    			/*clienteId:$('#clienteId').val(),
	    			hora:$('#hora').val(),
	    			detalleLlamada:$('#detalleLlamada').val(),
	    			empleadoId:$('#empleadoId').val()*/
	    			
	    			eventoId:$('#eventoId').val(),
	    			grupo:$('#grupoE').val(),
	    			contrato:$('#contratoE').val(),
	    			anticipo:$('#anticipoE').val(),
	    			restante:$('#restanteE').val(),
	    			telefono:$('#telefonoE').val(),
	    			fechaEvento:$('#fechaE').val(),
	    			lugarEvento:$('#lugarEventoE').val(),
	    			horaInicio:$('#horaInicioE').val(),
	    			horaFin:$('#horaFinE').val(),
	    			chofer:$('#choferE').val(),
	    			camioneta:$('#camionetaE').val(),
	    			usuarioAlta:$('#empleadoId').val(),
	    			clienteId:$('#clienteId').val(),
	    			tipoEvento:$('#tipoEventoE').val()
	    			//activo:$('#activo').val()
	    			
	    		},	
	    		success : function(data){
	    			
	    			var arreglo = data.split("|");
	    			console.log(data);

	    			$('#add-evento').modal('toggle'); 
	    			 
	    			 if ("ok" == arreglo[0]) {
		    			 $("#success-alert").show();
		    			 window.setTimeout(function () {
		    			     $("#success-alert").slideUp(500, function () {
		    			          $("#success-alert").hide();
		    			      });
		    			 }, 2500);
		    			 var str = "item"+arreglo[1];
		    			 var dellamada = $('#dellamada').val();
		    			 console.log("De llamada : " + dellamada)
		    			 if (dellamada == '1') {
		    				 var detalleLlamada = $('#detalleLlamada').val();
			    			 $('#detalleLlamada').val(detalleLlamada+ '  #' +arreglo[1]);	 
			    		 }
		    			 
		    			 /*var customTemplate = ('<div class="sl-item" id="'+str+'" > <hr>'+
		    	                    '<div class="sl-left"> <span class="round"><i class="ti-user"></i></span> </div> '+
		    	                    '  <div class="sl-right"> '+
		    	                    '    <div><a href="#" class="link">JESUS VELA GUZMAN</a> <span class="sl-date"> Justo ahora  <a href="javascript:eliminaLlamada('+arreglo[1]+')"><i class="fa fa-trash"></i></a> </span> '+
		    	                    '        <p class="m-t-10"> '+  $('#detalleLlamada').val() +' </p>'+
		    	                    '    </div>'+
		    	                    '  </div>'+
		    	                	'</div>')
		    		        $('.sl-item:first').before(customTemplate);*/

		    			 //$("#formClientes").submit();	

	    			 }
	    			 
	    		},
	    		error: function(data) {
	    			 $("#success-danger").show();
	    			 window.setTimeout(function () {
	    			     $("#success-danger").slideUp(500, function () {
	    			          $("#success-danger").hide();
	    			      });
	    			 }, 2500);
	            },
	            
	    	});
	    });	 
		
});

function hacerLlamada() {

	/*$('#eventoId').val(eventoId);
	$('#action').val('delete');
	
	$("#formEventos").submit();*/
	var d = new Date();
	var n = d.toLocaleTimeString();
	$('#hora').val(d.toLocaleTimeString());
	//$('#clienteId').val(clienteId);
	$('#detalleLlamada').val('');

	$("#add-call").modal("show");
	 
	
}

</script>
<script type="text/javascript">
		
	function eliminaLlamada(obj) {

			Swal.fire({
			  title: 'Estas seguro de eliminar la llamada?',
			  text: "No seria posible recuperar el detalle de la llamada!",
			  type: 'warning',
			  showCancelButton: true,
			  /*confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',*/
			  confirmButtonText: 'Si, Borrar llamada!'
			}).then((result) => {
			  if (result.value) {
				  console.log(result.value);
				  $.ajax({
			    		url: "eliminaLlamada",
			    		type: "post",
			    		data: {
			    			llamadaId:obj
			    		},	
			    		success : function(data){
			    			
			    			console.log(data);

			    			//$('#add-call').modal('toggle'); 
			    			 if ("ok" == data) {
				    			 $("#success-alert-del").show();
				    			 window.setTimeout(function () {
				    			     $("#success-alert-del").slideUp(500, function () {
				    			          $("#success-alert-del").hide();
				    			      });
				    			 }, 2500);
				    			 
				    			 $("#item"+obj).remove();
				    			//swal("Borrada!", "La llamada ha sido eliminada del sistema.", "success");
				    			Swal.fire({ position: 'center', type: 'success', title: 'La llamada ha sido eliminada del sistema.',showConfirmButton: false,timer: 1500});

			    			 }
			    			 
			    		},
			    		error: function(data) {
			    			 $("#success-danger").show();
			    			 window.setTimeout(function () {
			    			     $("#success-danger").slideUp(500, function () {
			    			          $("#success-danger").hide();
			    			      });
			    			 }, 2500);
			            },
			            
			    	});
			  }
			});
			
			
			console.log('en eliminar llamada');
		  
		//});
		
		
		
    	
	}


	 $(document).off('click', '.remove');
	    $(document).on('click', '.remove', function () {
	        $(this).parent().remove()
	    });
	    
</script>
<script>

// $('.clockpicker').clockpicker();

                $('.clockpicker').clockpicker({
                    donetext: 'Ok',
                }).find('input').change(function () {
                    console.log(this.value);
                });
                
                jQuery('.mydatepicker, #datepicker').datepicker({
                	  format: 'dd/mm/yyyy'
                });
                

            </script>
</body></html>