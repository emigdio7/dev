<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="es">
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
    <link rel="stylesheet" type="text/css" href="../css/sweetalert2.min.css">
	
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


/* List View
--------------------------------------------------------------------------------------------------*/

/* possibly reusable */

.fc-event-dot {
	display: inline-block;
	width: 10px;
	height: 10px;
	border-radius: 5px;
}

/* view wrapper */

.fc-rtl .fc-list-view {
	direction: rtl; /* unlike core views, leverage browser RTL */
}

.fc-list-view {
	border-width: 1px;
	border-style: solid;
}

/* table resets */

.fc .fc-list-table {
	table-layout: auto; /* for shrinkwrapping cell content */
}

.fc-list-table td {
	border-width: 1px 0 0;
	padding: 8px 14px;
}

.fc-list-table tr:first-child td {
	border-top-width: 0;
}

/* day headings with the list */

.fc-list-heading {
	border-bottom-width: 1px;
}

.fc-list-heading td {
	font-weight: bold;
}

.fc-ltr .fc-list-heading-main { float: left; }
.fc-ltr .fc-list-heading-alt { float: right; }

.fc-rtl .fc-list-heading-main { float: right; }
.fc-rtl .fc-list-heading-alt { float: left; }

/* event list items */

.fc-list-item.fc-has-url {
	cursor: pointer; /* whole row will be clickable */
}

.fc-list-item:hover td {
	background-color: #f5f5f5;
}

.fc-list-item-marker,
.fc-list-item-time {
	white-space: nowrap;
	width: 1px;
}

/* make the dot closer to the event title */
.fc-ltr .fc-list-item-marker { padding-right: 0; }
.fc-rtl .fc-list-item-marker { padding-left: 0; }

.fc-list-item-title a {
	/* every event title cell has an <a> tag */
	text-decoration: none;
	color: inherit;
}

.fc-list-item-title a[href]:hover {
	/* hover effect only on titles with hrefs */
	text-decoration: underline;
}

/* message when no events */

.fc-list-empty-wrap2 {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
}

.fc-list-empty-wrap1 {
	width: 100%;
	height: 100%;
	display: table;
}

.fc-list-empty {
	display: table-cell;
	vertical-align: middle;
	text-align: center;
}

.fc-unthemed .fc-list-empty { /* theme will provide own background */
	background-color: #eee;
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
                <div class="row">
	                <div class="col-lg-12 col-xlg-12 col-md-12">
	                	<div class="alert alert-success" id="success-alert">
							  <strong>Se agrego el evento de manera exitosa!</strong> 
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
                <form action="">
                	<input type="hidden" value="${empleado.empleadoId}" name="empleadoId">
                </form>
<!--                     <div class="col-md-3"> -->
<!--                         <div class="card"> -->
<!--                             <div class="card-body"> -->
<!--                                 <h4 class="card-title">Arrastre y suelte su evento</h4> -->
<!--                                 <div class="row"> -->
<!--                                     <div class="col-md-12 col-sm-12 col-xs-12"> -->
<!--                                         <div id="calendar-events" class="m-t-20"> -->
<!--                                             <div class="calendar-events" data-class="bg-info"> -->
<!--                                                 <i class="fa fa-circle text-info"></i> Sonora Santanera</div> -->
<!--                                             <div class="calendar-events" data-class="bg-success"> -->
<!--                                                 <i class="fa fa-circle text-success"></i> Mariachi</div> -->
<!--                                             <div class="calendar-events" data-class="bg-danger"> -->
<!--                                                 <i class="fa fa-circle text-danger"></i> Banda La arrolladora</div> -->
<!--                                             <div class="calendar-events" data-class="bg-warning"> -->
<!--                                                 <i class="fa fa-circle text-warning"></i> Baile Santander</div> -->
<!--                                         </div> -->
<!--                                         checkbox -->
<!--                                         <div class="checkbox"> -->
<!--                                             <input id="drop-remove" type="checkbox"> -->
<!--                                             <label for="drop-remove"> -->
<!--                                                 Remueve despues de Borrar  -->
<!--                                             </label> -->
<!--                                         </div> -->
<!--                                         <a href="#" data-toggle="modal" data-target="#add-new-event" class="btn btn-lg m-t-40 btn-danger btn-block waves-effect waves-light"> -->
<!--                                             <i class="ti-plus"></i> Agrega nuevo evento -->
<!--                                         </a> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
                    <div class="col-md-9">
                        <div class="card">
                            <div class="card-body">
                                <div id="calendar"></div>
                            </div>
                        </div>
                    </div>
                </div>
                
                
                <!-- BEGIN MODAL -->
                <div class="modal none-border" id="add-evento">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" ><i class="mdi mdi-account-check"></i></button>
                                <h4 class="modal-title"> 
                                	<strong>Crear Evento</strong> 
                                </h4> 
                            </div>
                            <div class="modal-body"></div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-white waves-effect" data-dismiss="modal">Cerrar</button>
                                <button type="button" class="btn btn-success save-event waves-effect waves-light">Crear evento</button>
                                <button type="button" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal">Actualiza Evento</button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Modal Add Category -->
                <div class="modal fade none-border" id="add-new-event">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title">
                                    <strong>Agrega</strong> una categoria</h4>
                            </div>
                            <div class="modal-body">
                                <form role="form">
                                    <div class="row">
                                        <div class="col-md-6delete-event">
                                            <label class="control-label">Nombre de la categoria</label>
                                            <input class="form-control form-white" placeholder="Enter name" type="text" name="category-name" />
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">Elija el color del evento</label>
                                            <select class="form-control form-white" data-placeholder="Choose a color..." name="category-color">
                                                <option value="success">Success</option>
                                                <option value="danger">Danger</option>
                                                <option value="info">Info</option>
                                                <option value="primary">Primary</option>
                                                <option value="warning">Warning</option>
                                                <option value="inverse">Inverse</option>
                                            </select>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">Save</button>
                                <button type="button" class="btn btn-white waves-effect" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END MODAL -->
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
    <script src="../assets/plugins/calendar/dist/lib/moment.min.js"></script>
    <script src='../assets/plugins/calendar/dist/fullcalendar.min.js'></script>
	<script src='../assets/plugins/calendar/dist/locale/es.js'></script>
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="../assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    <script src="../assets/plugins/sweetalert/sweetalert.min.js"></script>
    
<script type="text/javascript">


!function($) {
    "use strict";

    var CalendarApp = function() {
        this.$body = $("body")
        this.$calendar = $('#calendar'),
        this.$event = ('#calendar-events div.calendar-events'),
        this.$categoryForm = $('#add-new-event form'),
        this.$extEvents = $('#calendar-events'),
        this.$modal = $('#add-evento'),
        this.$saveCategoryBtn = $('.save-category'),
        this.$calendarObj = null
    };

    

    /* on drop */
    CalendarApp.prototype.onDrop = function (eventObj, date) { 
    	alert ('en CalendarApp.prototype.onDrop');
        var $this = this;
            // retrieve the dropped element's stored Event Object
            var originalEventObject = eventObj.data('eventObject');
            var $categoryClass = eventObj.attr('data-class');
            // we need to copy it, so that multiple events don't have a reference to the same object
            var copiedEventObject = $.extend({}, originalEventObject);
            // assign it the date that was reported
            copiedEventObject.start = date;
            if ($categoryClass)
                copiedEventObject['className'] = [$categoryClass];
            // render the event on the calendar
            $this.$calendar.fullCalendar('renderEvent', copiedEventObject, true);
            // is the "remove after drop" checkbox checked?
            if ($('#drop-remove').is(':checked')) {
                // if so, remove the element from the "Draggable Events" list
                eventObj.remove();
            }
    },
    /* on click on event */
    CalendarApp.prototype.onEventClick =  function (calEvent, jsEvent, view) {
    	console.log('cambiar nombre a evento');
        var $this = this;
            var form = $("<form></form>");
            form.append("<div class='row'></div>");
            form.find(".row")
            //.append("<label>Cambiar nombre a un evento</label>")
            .append("<div class='col-md-6'><div class='form-group'><label class='control-label'>Nombre</label><input class='form-control' type=text value='" + calEvent.title + "' /></div></div>")
            .append("<div class='col-md-6'><div class='form-group'><label class='control-label'>Tipo</label><select class='form-control' name='estatus'></select></div></div>")
            .find("select[name='estatus']")
                .append("<option value='0'>Baja</option>")
                .append("<option value='1'>Alta</option></div></div>");
            $this.$modal.modal({
                backdrop: 'static'
            });
            $this.$modal.find('.delete-event').show().end().find('.save-event').hide().end().find('.modal-body').empty().prepend(form).end().find('.delete-event').unbind('click').click(function () {
            	
            	console.log('borra evento' + calEvent._id);
            	/***************/
            	var estatus = form.find("select[name='estatus'] option:checked").val();
            	var enable = estatus;
                calEvent.title = form.find("input[type=text]").val();
                //calEvent.title = 'bg-danger';
                console.log('estatus seleccionado:' +estatus);
                if (estatus == 0){
                	calEvent.className = 'bg-danger';
                } else  {
                	calEvent.className = 'bg-info';
                }
                $this.$calendarObj.fullCalendar('updateEvent', calEvent);
                console.log(calEvent._id);
				
				$.ajax({
		 	          		url: "actualizaEvento",
		 	          		type: "post",
		 	          		data: {
		 	          			eventoId:calEvent._id,
		 	          			grupo:calEvent.title,
		 	          			activo:enable,
		 	          			category:calEvent.className
		 	          		},	
		 	          		success : function(data){
		 	          			
		 	          			var arreglo = data.split("|");
		 	          			console.log(data);
			
		 	          			 if ("ok" == arreglo[0]) {
		 	              			 $("#success-alert").show();
		 	              			 window.setTimeout(function () {
		 	              			     $("#success-alert").slideUp(500, function () {
		 	              			          $("#success-alert").hide();
		 	              			      });
		 	              			 }, 2500);
									Swal.fire({ position: 'center', type: 'success', title: 'El evento ha sido Guardado',showConfirmButton: false,timer: 1500});
		 	              			 console.log("retorna true"); 
		 	          			 }
		 	          		},
		 	          		error: function(data) {
		 	          			 $("#success-danger").show();
		 	          			 window.setTimeout(function () {
		 	          			     $("#success-danger").slideUp(500, function () {
		 	          			          $("#success-danger").hide();
		 	          			      });
		 	          			 }, 2500);
		 	          			 console.log("retorna false");
		 	          			 Swal.fire({ icon: 'error', title: 'Oops...', text: 'Algo salio Mal, no se guardo el Evento!',
		                			  footer: 'Reportar a Administrador'});
		                		 
		                	  },
		 	                  
		 	          	});
				
                /*$this.$calendarObj.fullCalendar('removeEvents', function (ev) {
                    return (ev._id == calEvent._id);
                });*/
                $this.$modal.modal('hide');
            });
            $this.$modal.find('form').on('submit', function () {
            	console.log('En submit');
                $this.$modal.modal('hide');
                return false;
            });
    },
    /* on select */
    /*Evento al dar clic a un cuadro de dia, para abrir el modal de agregar evento*/
//     CalendarApp.prototype.onSelect = function (start, end, allDay) {
//     	alert('En CalendarApp.prototype.onSelect');
//         var $this = this;
//             $this.$modal.modal({
//                 backdrop: 'static'
//             });
            
            
//             var form = $("<form method='POST' action='guardaEventoNuevo' name='eventoForm' class='form-horizontal'></form>");
//             form.append("<div class='row'></div>");
            
//             //var form = $("<div class='card card-outline-info'> <div class='card-header'> <h4 class='m-b-0 text-white'></h4> </div> <div class='card-body'> <h4 class='card-title'>Información del Evento</h4> <h6 class='card-subtitle'>Teclee los datos del <code>Evento</code> a dar de Alta.</h6><form method='POST' action='guardaEventoNuevo' name='eventoForm' class='form-horizontal'><div class='row'></div></form></div></div>");
//             //form.append("<div class='row'></div>");
//             form.find(".row")
            
//             	.append("<div class='col-sm-12'><div class='card card-outline-info'> <div class='card-header'> <h4 class='m-b-0 text-white'></h4> </div> <div class='card-body'> <h4 class='card-title'>Información del Evento</h4> <h6 class='card-subtitle'>Teclee los datos del <code>Evento</code> a dar de Alta.</h6></div></div>")
// 			form.find(".card-body")            	
//             	.append("<div class='col-md-6'> <label class='m-t-20'>Grupo</label> <div class='input-group '><input type='text' class='form-control' id='grupoE' name='grupo' value=''> </div> <label class='m-t-20'>Anticipo</label> <div class='input-group '> <input type='text' class='form-control' name='anticipo' id='anticipoE' value='' placeholder='$0.0'> </div> </div>")
// 				.append("<div class='col-md-6'><label class='m-t-20'>Contrato</label><div class='input-group'><input type='text' class='form-control' name='contrato' id='contratoE' value='' placeholder='Contrato'></div> <label class='m-t-20'>Restante</label><div class='input-group'> <input type='text' class='form-control' name='restante' id='restanteE' value='' placeholder='$0.0'></div></div>")
// 				.append("<div class='col-md-6'><label class='m-t-20'>Telefono de Contacto</label><div class='input-group '> <input type='text' class='form-control' name='telefono' id='telefonoE' value='' placeholder='(777) - 0 00 00 00'></div> <label class='m-t-20'>Hora Inicio</label><div class='input-group clockpicker data-placement='bottom' data-align='top' data-autoclose='true''><input type='text' class='form-control' value='12:00' name='horaInicio' id='horaInicioE'><div class='input-group-append'> <span class='input-group-text'> <i class='far fa-clock'></i></span></div></div></div>")
// 				.append("<div class='col-md-6'><label class='m-t-20'>Fecha</label> <div class='input-group'><input type='text' class='form-control mydatepicker' name='fechaEvento' id='fechaE' placeholder='dd/mm/yyyy'><div class='input-group-append'><span class='input-group-text'> <i class='icon-calender'></i></span></div></div><label class='m-t-20'>Hora fin</label><div class='input-group clockpicker ' data-placement='bottom' data-align='top' data-autoclose='true'><input type='text' class='form-control' value='12:00' id='horaFinE' name='horaFin'> <div class='input-group-append'><span class='input-group-text'><i class='far fa-clock'></i> </span> </div> </div> </div>")
// 				.append("<div class='col-md-12'><label class='m-t-20'>Lugar del Evento</label> <div class='input-group'><input type='text' class='form-control' name='lugarEvento' id='lugarEventoE' value=''></div></div>")
// 				.append("<div class='col-md-4'><label class='m-t-20'>Camioneta</label><div class='input-group'><input type='text' class='form-control' id='camionetaE' name='camioneta' value=''></div></div>")
// 				.append("<div class='col-md-4'><label class='m-t-20'>Tipo del Evento</label><div class='input-group'><input type='text' class='form-control' id='tipoEventoE' value='' name='tipoEvento'></div></div>")
// 				.append("<div class='col-md-4'><label class='m-t-20'>Chofer:</label><div class='input-group'><input type='text' class='form-control' id='choferE' value='' name='chofer'></div></div>")
// //                 .find("select[name='category']")
// //                 .append("<option value='bg-danger'>Danger</option>")
// //                 .append("<option value='bg-success'>Success</option>")
// //                 .append("<option value='bg-purple'>Purple</option>")
// //                 .append("<option value='bg-primary'>Primary</option>")
// //                 .append("<option value='bg-pink'>Pink</option>")
// //                 .append("<option value='bg-info'>Info</option>")
// //                 .append("<option value='bg-warning'>Warning</option></div></div>");
//                 .append("</div></div>");
            
            
//             $this.$modal.find('.delete-event').hide().end()
//             			.find('.save-event').show().end()
//             			.find('.modal-body').empty().prepend(form).end()
//             			.find('.save-event').unbind('click').click(function () {
//                 form.submit();
//             });
//             $this.$modal.find('form').on('submit', function () {
            	
//                 var title = form.find("input[name='grupo']").val();
//                 //var title = 'HOla';//form.find("input[name='title']").val();
//                 var fechaEvento = form.find("input[name='fechaEvento']").val();
// //                 var ending = form.find("input[name='fechaEvento']").val();
// //                 var horaInicio = form.find("input[name='horaInicio']").val();
// //                 var horafin = form.find("input[name='horaFin']").val();
//                 //var categoryClass = form.find("select[name='category'] option:checked").val();
                
//                 if (title !== null && title.length != 0) {
                	
//                 	//var newDate = '2015-04-10'.split('-').reverse().join('.')
//                 	var newDate = fechaEvento.split('/').reverse().join('-');
                	
//                	    console.log ('Comienza: ' +newDate);
// 	                console.log ('Termina: ' +newDate);
                     
//                     $this.$calendarObj.fullCalendar('renderEvent', {
//                         title: title,
//                         start:newDate,
//                         //end: end,
//                         allDay: false,
//                         className: 'bg-success'
//                     }, true);  
//                     $this.$modal.modal('hide');
//                 }
//                 else{
//                     alert('Tienes que teclear un titulo al Evento');
//                 }
//                 return false;
                
//             });
//             $this.$calendarObj.fullCalendar('unselect');
//     }
    CalendarApp.prototype.onSelect = function (start, end, allDay) {
    	
        var $this = this;
            $this.$modal.modal({
                backdrop: 'static'
            });
            var form = $("<form></form>");
            form.append("<div class='row'></div>");
            form.find(".row")
                .append("<div class='col-md-6'><div class='form-group'><label class='control-label'>Nombre del Evento</label><input class='form-control' placeholder='Teclee nombre del Evento' type='text' name='title'/></div></div>")
                .append("<div class='col-md-6'><div class='form-group'><label class='control-label'>Tipo</label><select class='form-control' name='category'></select></div></div>")
                .find("select[name='category']")
                .append("<option value='bg-danger'>Danger</option>")
                .append("<option value='bg-success'>Success</option>")
                .append("<option value='bg-purple'>Purple</option>")
                .append("<option value='bg-primary'>Primary</option>")
                .append("<option value='bg-pink'>Pink</option>")
                .append("<option value='bg-info'>Info</option>")
                .append("<option value='bg-warning'>Warning</option></div></div>");
            
            $this.$modal.find('.delete-event').hide().end().find('.save-event').show().end().find('.modal-body').empty().prepend(form).end().find('.save-event').unbind('click').click(function () {
                form.submit();
            });
            $this.$modal.find('form').on('submit', function () {
                var title = form.find("input[name='title']").val();
                var idEvent = 0;
                //var empleadoId = form.find("input[name='title']").val();
                var beginning = form.find("input[name='beginning']").val();
                var ending = form.find("input[name='ending']").val();
                var categoryClass = form.find("select[name='category'] option:checked").val();
                if (title !== null && title.length != 0) {
                	//Termina: 2019-10-31A00:00:00
                	
                	var fechaCom = start.format('YYYY-MM-DDTHH:mm:ss');
                	var fechaD = fechaCom.split('A');
                 	var newDate = fechaD[0].split('-').reverse().join('/');
                 	var resp = "OK";//guardaEventoBase(title, newDate,  categoryClass);
                 	console.log(resp);
                	
                		
                		//$('#inicio').val(start.format('HH:mm'));
                        //$('#fim').val(end.format('HH:mm'));
                        
	                    console.log ('Comienza: ' +start.format('HH:mm'));
	  	                console.log ('Termina: ' +end.format('HH:mm'));
	  	                console.log ('Comienza: ' +start.format('YYYY-MM-DDTHH:mm:ss'));
	 	                console.log ('Termina: ' +end.format('YYYY-MM-DDTHH:mm:ss'));
	 	                
		 	          	console.log(' fecha: '+ newDate);
		 	          	console.log(' category: '+ categoryClass);
		 	          	console.log('en boton Agregar Evento');
		 	          	
		 	          	$.ajax({
		 	          		url: "guardaEvento",
		 	          		type: "post",
		 	          		data: {
		 	          			empleadoId:$('#empleadoId').val(),
		 	          			eventoId:0,
		 	          			grupo:title,
		 	          			fechaEvento:newDate,
		 	          			lugarEvento:'Definir Evento',
		 	          			category:categoryClass,
		 	          			usuarioAlta:'${empleado.empleadoId}'
		 	          		},	
		 	          		success : function(data){
		 	          			
		 	          			var arreglo = data.split("|");
	
		 	          			//$('#add-evento').modal('toggle'); 
		 	          			 
		 	          			 if ("ok" == arreglo[0]) {
		 	          				idEvent = arreglo[1];
		 	              			 $("#success-alert").show();
		 	              			 window.setTimeout(function () {
		 	              			     $("#success-alert").slideUp(500, function () {
		 	              			          $("#success-alert").hide();
		 	              			      });
		 	              			 }, 2500);
// 		 	              			Swal.fire({ icon: 'error', title: 'Oops...', text: 'Algo salio Mal, no se guardo el Evento!',
// 			                			  footer: 'Reportar a Administrador'});
		 	              			 console.log("retorna true"); 
		 	          			 }
		 	          		},
		 	          		error: function(data) {
		 	          			 $("#success-danger").show();
		 	          			 window.setTimeout(function () {
		 	          			     $("#success-danger").slideUp(500, function () {
		 	          			          $("#success-danger").hide();
		 	          			      });
		 	          			 }, 2500);
		 	          			 console.log("retorna false");
		 	          			 Swal.fire({ icon: 'error', title: 'Oops...', text: 'Algo salio Mal, no se guardo el Evento!',
		                			  footer: 'Reportar a Administrador'});
		                		 
		                	  },
		 	                  
		 	          	});
		 	          	
		 	          	//if (resp = "true"){
		                     $this.$calendarObj.fullCalendar('renderEvent', {
		                    	 id:idEvent,
		                         title: title,
		                         start:start,
		                         end: end,
		                         allDay: false,
		                         className: categoryClass
		                     }, true);  
		 	          	//}
		 	          	
		 	          	$this.$modal.modal('hide');
		 	          	
//                 	} else  {
//                 		Swal.fire({ icon: 'error', title: 'Oops...', text: 'Algo salio Mal, no se guardo el Evento!',
//                 			  footer: 'Reportar a Administrador'
//                 			});
//                 		 $this.$modal.modal('hide');
//                 	}
                	
                	   
                } else {
                    //alert('Tienes que teclear un titulo al Evento');
                    Swal.fire({ icon: 'error', title: 'Oops...', text: 'Tienes que teclear un titulo al Evento!',
           			  footer: 'No Reportar a Administrador' });
                }
                return false;
                
            });
            $this.$calendarObj.fullCalendar('unselect');
    },
    CalendarApp.prototype.enableDrag = function() {
    	console.log('En CalendarApp.prototype.enableDrag');
        //init events
        $(this.$event).each(function () {
            // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
            // it doesn't need to have a start or end
            var eventObject = {
                title: $.trim($(this).text()) // use the element's text as the event title
            };
            // store the Event Object in the DOM element so we can get to it later
            $(this).data('eventObject', eventObject);
            // make the event draggable using jQuery UI
            $(this).draggable({
                zIndex: 999,
                revert: true,      // will cause the event to go back to its
                revertDuration: 0  //  original position after the drag
            });
        });
    }
    /* Initializing */
    CalendarApp.prototype.init = function() {
    	//swal({ title: "Mensaje de Alerta!",text: "Carga el calendario!", icon: "success", button: "Aceptar!",});
    	
        this.enableDrag();
        /*  Initialize the calendar  */
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();
        var form = '';
        var today = new Date($.now());
        var existe = false;
        var defaultEvents = []; 
        
        var $this = this;
        $this.$calendarObj = $this.$calendar.fullCalendar({
            slotDuration: '00:15:00', /* If we want to split day time each 15minutes */
            minTime: '08:00:00',
            maxTime: '24:00:00',  
            defaultView: 'month',  
            handleWindowResize: true,   
            eventOverlap: true,
            viewRender: function(view, element) {
                // We make sure that we activate the perfect scrollbar when the view isn't on Month
//                 var calendar = $('#calendar').fullCalendar('getCalendar');
// 		        var view1 = calendar.view;
// 		        var start = view.start._d;
// 		        var end = view.end._d;
// 		        var dates = { start: start, end: end };
//                 console.log("Vista: "+view.name);
//                 console.log("Inicia: "+start);
//                 console.log("Trmina: "+end);
//                 console.log($('#calendar').fullCalendar('getView').start.format('DD MMM'));
//                 console.log($('#calendar').fullCalendar('getView').end.format('DD MMM'));
					console.log(" + " + defaultEvents);
                  //$('#calendar').fullCalendar('addEventSource', defaultEvents);
                  //$('#calendar').fullCalendar('render');
                  
                var moment = $('#calendar').fullCalendar('getDate');
                console.log("La fecha actual del calendario es " + moment.format('DD.MM.YYYY HH:mm'));
            },
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'listMonth,month,agendaWeek,agendaDay'
            },
            //events: defaultEvents,
            events: function(start, end, timezone, callback) {
            	console.log("existe:"+existe)
               if (existe== false){
            	 var start1 = $.fullCalendar.formatDate(start, "Y-MM-DD HH:mm:ss");
            	 var end1 = $.fullCalendar.formatDate(end, "Y-MM-DD HH:mm:ss");
                 console.log("| : "+ start1);
                 console.log("| : "+ end1);
                		 
                 console.log("start.format()| : "+start.format());
                 console.log("end.format()| : "+ end.format());
                 
                jQuery.ajax({
                    url: 'consultaEventos',
                    type: 'POST',
                    dataType: 'json',
                    contentType: 'application/json',    
                    data: {
                        start: start.format(),
                        end: end.format()
                    },
                    success: function(response) {
                    	var events = [];
                    	existe = true;
                        $.each(response, function(idx, e) {
                        	//console.log(e.eventoId +  " -  " + e.grupo + " - " + e.fechaCalendar);
                            events.push({
                              id: e.eventoId,
                              title: e.grupo,
                              start: e.fechaCalendar,
                              end: e.fechaCalendarFin,
                              //backgroundColor: "#717070",
                  		      borderColor: "#717070",
                              className: e.category
                            });
                          });
                        defaultEvents = events;
                        callback(events);
                    }
                });
           	  } else { /*Del false para que cargue una sola vez*/
           		callback(defaultEvents);
           	  }
            },
            editable: true,
            droppable: true, // this allows things to be dropped onto the calendar !!!
            eventLimit: true, // allow "more" link when too many events
            selectable: true,
            locale: 'es',
            drop: function(date) { $this.onDrop($(this), date); },
            select: function (start, end, allDay) { $this.onSelect(start, end, allDay); },
            eventClick: function(calEvent, jsEvent, view) { $this.onEventClick(calEvent, jsEvent, view); },
            eventDrop: function(event, delta, revertFunc) {
                alert(event.title + " was dropped on " + event.start.format());
                if (!confirm("Are you sure about this change?")) {
                  revertFunc();
                }
            },
            eventResize: function(event, delta, revertFunc) {
            	    alert(event.title + " con ID: "+event.id+ " end is now " + event.end.format() + "and inicia :"+ event.start.format());
            	    if (!confirm("is this okay?")) {
            	      revertFunc();
            	    }
            }
            
        });

        //on new event
        this.$saveCategoryBtn.on('click', function(){
        	alert('agregar un evento');
            var categoryName = $this.$categoryForm.find("input[name='category-name']").val();
            var categoryColor = $this.$categoryForm.find("select[name='category-color']").val();
            if (categoryName !== null && categoryName.length != 0) {
                $this.$extEvents.append('<div class="calendar-events" data-class="bg-' + categoryColor + '" style="position: relative;"><i class="fa fa-circle text-' + categoryColor + '"></i>' + categoryName + '</div>')
                $this.enableDrag();
            }

        });
    },

   //init CalendarApp
    $.CalendarApp = new CalendarApp, $.CalendarApp.Constructor = CalendarApp
    
}(window.jQuery),

//initializing CalendarApp
function($) {
	
	$('#success-alert').hide();
	$('#success-alert-del').hide();
	$('#success-danger').hide();
	
    "use strict";
    $.CalendarApp.init()
}(window.jQuery);
</script>

</body></html>