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
	<link rel="stylesheet" type="text/css" href="../assets/plugins/wizard/steps.css" >
		
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
<style type="text/css">
.textarea textarea {
    background-color: white;
    /*background-image: url("http://ello.96.lt/images/as.jpg");*/
    line-height: 200%;
    padding-left: 75px;
    padding-right: 0.3em;
    border: solid 1px #525252;
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
            <div class="container-fluid">
                
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
						<div class="alert alert-danger" id="success-danger">
							  <strong>! ! ! Hubo un error en el sistema, Contacte al de Sistemas ! ! !</strong> 
						</div>
					</div>
				</div>
                <div class="row">
                		<div id="add-contact" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
                                    <div class="modal-dialog modal-md">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                 
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true" ><i class="mdi mdi-account-check"></i></button>
                                            <h4 class="modal-title" id="myModalLabel"> Hacer llamada</h4> </div>
                                            <div class="modal-body">
                                            	<from class="form-horizontal form-material">
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
    														<textarea class="form-control" name="detalleLlamada" id="detalleLlamada" rows="4" placeholder="	"></textarea>
					                                    </div>

					                               </div>
					                            </from>

                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success waves-effect" id="agregarLlamada" data-dismiss="modal">Guardar</button>
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
                                             <hr>
                                            	<div class="sl-item">
	                                                <div class="sl-left"> 
	                                                	<span class="round"><i class="ti-user"></i></span> </div>
	                                                <div class="sl-right">
	                                                    <div><a href="#" class="link">${llamadas.empleado.nombre} ${llamadas.empleado.apellidoPat} ${llamadas.empleado.apellidoMat}</a> 
	                                                    <span class="sl-date">${llamadas.tiempo}  <a href="javascript:eliminaLlamada(0)"><i class="ti-pencil-alt"></i></a></span>
	                                                        <p class="m-t-10"> ${llamadas.detalleLlamada} </p>
	                                                    </div>
	                                                </div>
	                                            </div>
										    </c:forEach>
										    <div class="sl-item">
										    
										    </div>
                                        </div>
                                    </div>
                                </div>
                                <!--second tab-->
                                <div class="tab-pane" id="profile" role="tabpanel">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-3 col-xs-6 b-r"> <strong>Nombre Completo</strong>
                                                <br>
                                                <p class="text-muted">${clienteDto.nombre} ${clienteDto.apellidos}</p>
                                            </div>
                                            <div class="col-md-3 col-xs-6 b-r"> <strong>Telefono(s)</strong>
                                                <br>
                                                <p class="text-muted">${clienteDto.telefono}</p>
                                            </div>
                                            <div class="col-md-3 col-xs-6 b-r"> <strong>Correo</strong>
                                                <br>
                                                <p class="text-muted">${clienteDto.correo}</p>
                                            </div>
                                            <div class="col-md-3 col-xs-6"> <strong>Ciudad</strong>
                                                <br>
                                                <p class="text-muted">${clienteDto.ciudad}</p>
                                            </div>
                                        </div>
                                        <hr>
                                        <p class="m-t-30">El grupo la Banda el Recodo tiene una trayectoria musical a lo largo de muchos años, hemos tenido eventos con ellos directamente con el representante artistico Juan Manuel Rodriguez y en todas las ocasiones se ha dado un deposito del 30% del total de costo del evento. a la cuenta 019293843732302 del Banco Scotiabank</p>
                                        <p>Las oficinas se encuentran en guadalajara Jalisco. </p>
                                        <p>Telefonos adicionales donde se puede contactar en caso que el principal no funciona 765 8376523</p>
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
                                        <!-- **************************** -->
                                        <!-- Validation wizard -->
						                <div class="row" id="validation">
						                    <div class="col-12">
						                        <div class="card wizard-content">
						                            <div class="card-body">
						                                <h4 class="card-title">Step wizard with validation</h4>
						                                <h6 class="card-subtitle">You can us the validation like what we did</h6>
						                                <form action="#" class="validation-wizard wizard-circle">
						                                    <!-- Step 1 -->
						                                    <h6>Step 1</h6>
						                                    <section>
						                                        <div class="row">
						                                            <div class="col-md-6">
						                                                <div class="form-group">
						                                                    <label for="wfirstName2"> First Name :
						                                                        <span class="danger">*</span>
						                                                    </label>
						                                                    <input type="text" class="form-control required" id="wfirstName2" name="firstName"> </div>
						                                            </div>
						                                            <div class="col-md-6">
						                                                <div class="form-group">
						                                                    <label for="wlastName2"> Last Name :
						                                                        <span class="danger">*</span>
						                                                    </label>
						                                                    <input type="text" class="form-control required" id="wlastName2" name="lastName"> </div>
						                                            </div>
						                                        </div>
						                                        <div class="row">
						                                            <div class="col-md-6">
						                                                <div class="form-group">
						                                                    <label for="wemailAddress2"> Email Address :
						                                                        <span class="danger">*</span>
						                                                    </label>
						                                                    <input type="email" class="form-control required" id="wemailAddress2" name="emailAddress"> </div>
						                                            </div>
						                                            <div class="col-md-6">
						                                                <div class="form-group">
						                                                    <label for="wphoneNumber2">Phone Number :</label>
						                                                    <input type="tel" class="form-control" id="wphoneNumber2"> </div>
						                                            </div>
						                                        </div>
						                                        <div class="row">
						                                            <div class="col-md-6">
						                                                <div class="form-group">
						                                                    <label for="wlocation2"> Select City :
						                                                        <span class="danger">*</span>
						                                                    </label>
						                                                    <select class="custom-select form-control required" id="wlocation2" name="location">
						                                                        <option value="">Select City</option>
						                                                        <option value="India">India</option>
						                                                        <option value="USA">USA</option>
						                                                        <option value="Dubai">Dubai</option>
						                                                    </select>
						                                                </div>
						                                            </div>
						                                            <div class="col-md-6">
						                                                <div class="form-group">
						                                                    <label for="wdate2">Date of Birth :</label>
						                                                    <input type="date" class="form-control" id="wdate2"> </div>
						                                            </div>
						                                        </div>
						                                    </section>
						                                    <!-- Step 2 -->
						                                    <h6>Step 2</h6>
						                                    <section>
						                                        <div class="row">
						                                            <div class="col-md-6">
						                                                <div class="form-group">
						                                                    <label for="jobTitle2">Company Name :</label>
						                                                    <input type="text" class="form-control required" id="jobTitle2">
						                                                </div>
						                                            </div>
						                                            <div class="col-md-6">
						                                                <div class="form-group">
						                                                    <label for="webUrl3">Company URL :</label>
						                                                    <input type="url" class="form-control required" id="webUrl3" name="webUrl3"> </div>
						                                            </div>
						                                            <div class="col-md-12">
						                                                <div class="form-group">
						                                                    <label for="shortDescription3">Short Description :</label>
						                                                    <textarea name="shortDescription" id="shortDescription3" rows="6" class="form-control"></textarea>
						                                                </div>
						                                            </div>
						                                        </div>
						                                    </section>
						                                    <!-- Step 3 -->
						                                    <h6>Step 3</h6>
						                                    <section>
						                                        <div class="row">
						                                            <div class="col-md-6">
						                                                <div class="form-group">
						                                                    <label for="wint1">Interview For :</label>
						                                                    <input type="text" class="form-control required" id="wint1"> </div>
						                                                <div class="form-group">
						                                                    <label for="wintType1">Interview Type :</label>
						                                                    <select class="custom-select form-control required" id="wintType1" data-placeholder="Type to search cities" name="wintType1">
						                                                        <option value="Banquet">Normal</option>
						                                                        <option value="Fund Raiser">Difficult</option>
						                                                        <option value="Dinner Party">Hard</option>
						                                                    </select>
						                                                </div>
						                                                <div class="form-group">
						                                                    <label for="wLocation1">Location :</label>
						                                                    <select class="custom-select form-control required" id="wLocation1" name="wlocation">
						                                                        <option value="">Select City</option>
						                                                        <option value="India">India</option>
						                                                        <option value="USA">USA</option>
						                                                        <option value="Dubai">Dubai</option>
						                                                    </select>
						                                                </div>
						                                            </div>
						                                            <div class="col-md-6">
						                                                <div class="form-group">
						                                                    <label for="wjobTitle2">Interview Date :</label>
						                                                    <input type="date" class="form-control required" id="wjobTitle2">
						                                                </div>
						                                                <div class="form-group">
						                                                    <label>Requirements :</label>
						                                                    <div class="m-b-10">
						                                                        <label class="custom-control custom-radio">
						                                                            <input id="radio3" name="radio" type="radio" class="custom-control-input">
						                                                            <span class="custom-control-label">Employee</span>
						                                                        </label>
						                                                        <label class="custom-control custom-radio">
						                                                            <input id="radio4" name="radio" type="radio" class="custom-control-input">
						                                                            <span class="custom-control-label">Membership</span>
						                                                        </label>
						                                                    </div>
						                                                </div>
						                                            </div>
						                                        </div>
						                                    </section>
						                                    <!-- Step 4 -->
						                                    <h6>Step 4</h6>
						                                    <section>
						                                        <div class="row">
						                                            <div class="col-md-6">
						                                                <div class="form-group">
						                                                    <label for="behName1">Behaviour :</label>
						                                                    <input type="text" class="form-control required" id="behName1">
						                                                </div>
						                                                <div class="form-group">
						                                                    <label for="participants1">Confidance</label>
						                                                    <input type="text" class="form-control required" id="participants1">
						                                                </div>
						                                                <div class="form-group">
						                                                    <label for="participants1">Result</label>
						                                                    <select class="custom-select form-control required" id="participants1" name="location">
						                                                        <option value="">Select Result</option>
						                                                        <option value="Selected">Selected</option>
						                                                        <option value="Rejected">Rejected</option>
						                                                        <option value="Call Second-time">Call Second-time</option>
						                                                    </select>
						                                                </div>
						                                            </div>
						                                            <div class="col-md-6">
						                                                <div class="form-group">
						                                                    <label for="decisions1">Comments</label>
						                                                    <textarea name="decisions" id="decisions1" rows="4" class="form-control"></textarea>
						                                                </div>
						                                                <div class="form-group">
						                                                    <label>Rate Interviwer :</label>
						                                                    <div class="c-inputs-stacked">
						                                                        <label class="inline custom-control custom-checkbox block">
						                                                            <input type="checkbox" class="custom-control-input">
						                                                            <span class="custom-control-label ml-0">1 star</span>
						                                                        </label>
						                                                        <label class="inline custom-control custom-checkbox block">
						                                                            <input type="checkbox" class="custom-control-input">
						                                                            <span class="custom-control-label ml-0">2 star</span>
						                                                        </label>
						                                                        <label class="inline custom-control custom-checkbox block">
						                                                            <input type="checkbox" class="custom-control-input">
						                                                            <span class="custom-control-label ml-0">3 star</span>
						                                                        </label>
						                                                        <label class="inline custom-control custom-checkbox block">
						                                                            <input type="checkbox" class="custom-control-input">
						                                                            <span class="custom-control-label ml-0">4 star</span>
						                                                        </label>
						                                                        <label class="inline custom-control custom-checkbox block">
						                                                            <input type="checkbox" class="custom-control-input">
						                                                            <span class="custom-control-label ml-0">5 star</span>
						                                                        </label>
						                                                    </div>
						                                                </div>
						                                            </div>
						                                        </div>
						                                    </section>
						                                </form>
						                            </div>
						                        </div>
						                    </div>
						                </div>
                                        <!-- **************************** -->
                                        
                                    </div>
                                </div>
                                
                                
                                <div class="tab-pane" id="eventos" role="tabpanel">
                                    <div class="card-body">
                                        <form class="form-horizontal form-material">
                                             <div class="card-body">
                                <div class="d-flex no-block align-self-center">
                                    <div>
                                        
                                    <h4 class="card-title">Products Availability</h4>
                                    <h6 class="card-subtitle">March  2017</h6>
                                    </div>
                                    <div class="ml-auto">
                                        
                                <select class="custom-select">
                                    <option selected="">Electronics</option>
                                    <option value="1">Kitchen</option>
                                    <option value="2">Crocory</option>
                                    <option value="3">Wooden</option>
                                </select>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table class="table stylish-table">
                                        <thead>
                                            <tr>
                                                <th style="width:90px;">Product</th>
                                                <th>Description</th>
                                                <th>Quantity</th>
                                                <th>Price</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td><span class="round"><i class="ti-shopping-cart"></i></span></td>
                                                <td>
                                                    <h6><a href="javascript:void(0)" class="link">Apple iPhone 6  Space Grey, 16 GB</a></h6><small class="text-muted">Product id : MI5457 </small></td>
                                                <td>
                                                    <h5>357</h5></td>
                                                <td>
                                                    <h5>$435</h5></td>
                                            </tr>
                                            <tr>
                                                <td><span class="round bg-success"><i class="ti-shopping-cart"></i></span></td>
                                                <td>
                                                    <h6><a href="javascript:void(0)" class="link">Fossil Marshall For Men Black Smartwatch</a></h6><small class="text-muted">Product id : MI5457 </small></td>
                                                <td>
                                                    <h5>357</h5></td>
                                                <td>
                                                    <h5>$435</h5></td>
                                            </tr>
                                            <tr>
                                                <td><span class="round bg-danger"><i class="ti-shopping-cart"></i></span></td>
                                                <td>
                                                    <h6><a href="javascript:void(0)" class="link">Sony Bravia 80cm - 32 HD Ready LED TV</a></h6><small class="text-muted">Product id : MI5457 </small></td>
                                                <td>
                                                    <h5>357</h5></td>
                                                <td>
                                                    <h5>$435</h5></td>
                                            </tr>
                                            <tr>
                                                <td><span class="round bg-primary"><i class="ti-shopping-cart"></i></span></td>
                                                <td>
                                                    <h6><a href="javascript:void(0)" class="link">Panasonic P75 Champagne Gold, 8 GB</a></h6><small class="text-muted">Product id : MI5457 </small></td>
                                                <td>
                                                    <h5>357</h5></td>
                                                <td>
                                                    <h5>$435</h5></td>
                                            </tr>
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
    <script src="../assets/plugins/calendar/jquery-ui.min.js"></script>
    <script src="../assets/plugins/moment/moment.js"></script>
    <script src="../assets/plugins/wizard/jquery.steps.min.js"></script>
    <script src="../assets/plugins/wizard/jquery.validate.min.js"></script>
    <script src="../js/jasny-bootstrap.js"></script>
    
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="../assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    
<!--     <script src="../../js/plugins/footable/js/footable.min.js"></script> -->
-     <script src="../assets/plugins/bootstrap-select/bootstrap-select.min.js" type="text/javascript"></script> -->
    <!--FooTable init-->
<!--     <script src="../../js/footable-init.js"></script> -->
    
<script type="text/javascript">

$(document).ready(function() {
	
	$('#add-contact').modal('hide');
	console.log('oculta');
	$('#success-alert').hide();
	$('#success-danger').hide();
	
	
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
	    			console.log(data);

	    			$('#add-contact').modal('toggle'); 
	    			 if ("ok" == data) {
		    			 $("#success-alert").show();
		    			 window.setTimeout(function () {
		    			     $("#success-alert").slideUp(500, function () {
		    			          $("#success-alert").hide();
		    			      });
		    			 }, 2000);
		    			 
		    			 var customTemplate = ('<div class="sl-item"> '+
		    	                    '<div class="sl-left"> <span class="round"><i class="ti-user"></i></span> </div> '+
		    	                    '  <div class="sl-right"> '+
		    	                    '    <div><a href="#" class="link">JESUS VELA GUZMAN</a> <span class="sl-date"> Justo ahora  <a href="javascript:eliminaLlamada(0)"><i class="ti-pencil-alt"></i></a> </span> '+
		    	                    '        <p class="m-t-10"> '+  $('#detalleLlamada').val() +' </p>'+
		    	                    '    </div>'+
		    	                    '  </div>'+
		    	                	'</div>')
		    		        $('.sl-item:first').before(customTemplate);

		    			 
		    			 $("#formClientes").submit();	

	    			 }
	    			 
	    		},
	    		error: function(data) {
	    			 $("#success-danger").show();
	    			 window.setTimeout(function () {
	    			     $("#success-danger").slideUp(500, function () {
	    			          $("#success-danger").hide();
	    			      });
	    			 }, 2000);
	            },
	    	});
	    });	 
});

function hacerLlamada() {

	/*$('#eventoId').val(eventoId);
	$('#action').val('delete');
	
	$("#formEventos").submit();*/
	console.log('Abre modal');
	var d = new Date();
	var n = d.toLocaleTimeString();
	$('#hora').val(d.toLocaleTimeString());
	//$('#clienteId').val(clienteId);
	$('#detalleLlamada').val('');

	$("#add-contact").modal("show");
	 
	
}

</script>
<script type="text/javascript">
		
	 $(document).off('click', '.remove');
	    $(document).on('click', '.remove', function () {
	        $(this).parent().remove()
	    });
	    
</script>
 <script>
        var form = $(".validation-wizard").show();

        $(".validation-wizard").steps({
            headerTag: "h6",
            bodyTag: "section",
            transitionEffect: "fade",
            titleTemplate: '<span class="step">#index#</span> #title#',
            labels: {
                finish: "Submit"
            },
            onStepChanging: function (event, currentIndex, newIndex) {
                return currentIndex > newIndex || !(3 === newIndex && Number($("#age-2").val()) < 18) && (currentIndex < newIndex && (form.find(".body:eq(" + newIndex + ") label.error").remove(), form.find(".body:eq(" + newIndex + ") .error").removeClass("error")), form.validate().settings.ignore = ":disabled,:hidden", form.valid())
            },
            onFinishing: function (event, currentIndex) {
                return form.validate().settings.ignore = ":disabled", form.valid()
            },
            onFinished: function (event, currentIndex) {
                swal("Form Submitted!", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lorem erat eleifend ex semper, lobortis purus sed.");
            }
        }), $(".validation-wizard").validate({
            ignore: "input[type=hidden]",
            errorClass: "text-danger",
            successClass: "text-success",
            highlight: function (element, errorClass) {
                $(element).removeClass(errorClass)
            },
            unhighlight: function (element, errorClass) {
                $(element).removeClass(errorClass)
            },
            errorPlacement: function (error, element) {
                error.insertAfter(element)
            },
            rules: {
                email: {
                    email: !0
                }
            }
        })
    </script>


</body></html>