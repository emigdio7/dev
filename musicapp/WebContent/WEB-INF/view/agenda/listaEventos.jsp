<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="es">
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

	<!-- Page plugins css -->
    <link href="../assets/plugins/clockpicker/dist/bootstrap-clockpicker.min.css" rel="stylesheet">	
            
	<!-- Date picker plugins css -->
    <link href="../assets/plugins/bootstrap-datepicker/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />

        
    <link rel="stylesheet" type="text/css" href="../css/sweetalert2.min.css">
        
    <!-- Footable CSS -->
    <link rel="stylesheet" type="text/css" href="../assets/plugins/datatables/media/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="../assets/plugins/datatables/media/css/responsive.dataTables.min.css">
	
    <!-- Custom CSS -->
<!--     <link href="../css/helper.css" rel="stylesheet"> -->
    <link href="../css/style.css" rel="stylesheet">
<!--     <link href="../css/icons/flag-icon-css/flag-icon.min.css" rel="stylesheet"> -->
    
    <!-- You can change the theme colors from here -->
    <link href="../css/blue.css" id="theme" rel="stylesheet">
    <style type="text/css">
	    table.dataTable thead tr {
	  background-color: #1e88e5;
	}
	
	
	.error 
	{
		color: #ff0000;
		font-weight: bold;
	}
	</style>
	
    </style>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

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
            <div class="container-fluid" style="font-size: 0.7rem;"> 
                
                <!-- barra Head -->
                <jsp:include page="../barraHead.jsp" />

               <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
				<br>
				<div class="row">
                	<div class="col-12">
                		<div class="card">
                			<div class="card-body">
                             <h4 class="card-title">Eventossssss</h4>
                             <h6 class="card-subtitle">Lista de Eventos</h6>
                             
                             <div class="form-body">
                             	<form:form method="POST"  modelAttribute="busquedaForm" action="buscaRegistros" id="busquedaForm" class="form-horizontal">
                             		<input type="hidden" name="action" id="action" > 
								  <div class="row">
								  
							 		<div class="col-md-3">
                                        <label class="m-t-10">Fecha inicial</label>
                                        <div class="input-group ">
                                            <form:input id="datepicker1" width="240" value="" path="fechaInicial" class="form-control" placeholder="dd/mm/yyyy" readonly="true"/>
                                             <form:errors path="fechaInicial" cssClass="error" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        
                                       <label class="m-t-10">Fecha final</label>
                                        <div class="input-group ">
                                            <form:input id="datepicker2" width="240" value="" path="fechaFinal" class="form-control" placeholder="dd/mm/yyyy" readonly="true"/>
                                             <form:errors path="fechaFinal" cssClass="error" />
                                        </div>

                                    </div>
                                    <div class="col-md-3">
                                    	<label class="m-t-10"></label>
                                        <div class="input-group ">
                                            <input type="button" name="BuscaR"  id="BuscaR" class="btn btn-info btn-rounded m-t-10 float-right" value="Buscar por rango de Fechas" >
                                        </div>
                                        
                                    </div>
                                    <div class="col-md-3">
                                    	<label class="m-t-10"></label>
                                        <div class="input-group ">
                                            <button type="button" class="btn btn-info btn-rounded m-t-10 float-right" data-toggle="modal" id="btnAgregar" data-target="#add-evento">Agregar Nuevo Evento</button>
                                        </div>
                                    </div>
                                    
							 	  </div>
							 	  </form:form>
							 </div>
							 
							 
                            <div id="add-evento" class="modal hide fade" data-backdrop-limit="1" tabindex="-1"" role="dialog" aria-labelledby="myModalEvento" aria-hidden="true" >
                        	<div class="modal-dialog modal-lg">
                            	<div class="modal-content">
                                	<div class="modal-header">
	                                	<button type="button" class="close" data-dismiss="modal" aria-hidden="true" ><i class="mdi mdi-account-check"></i></button>
                                       	<h4 class="modal-title" id="myModalEvento"> Crear Evento </h4> 
                                    </div>
                                     <div class="modal-body">
                                     
                                      	<from class="form-horizontal">

											<input type="hidden" id="eventoId" value="">
											<input type="hidden" id="empleadoId" name="empleadoId" value="${empleado.empleadoId}">
							                <input type="hidden" id="clienteId" name="clienteId" value="0">
							                <input type="hidden" id="actualiza" value="0">
							                  
											<div class="card card-outline-info">
 												<div class="card-header">
					                                <h4 class="m-b-0 text-white"></h4>
					                            </div>
					                            <div class="card-body">
					                                <h4 class="card-title">Información del Evento</h4>
					                                <h6 class="card-subtitle">Teclee los datos del
					                                    <code>Evento</code> a dar de Altaaaa.</h6>
					                                <div class="row">
					                                
					                                	<div class="col-md-6">
					                                        <label class="m-t-20">Grupo</label>
					                                        <div class="input-group ">
					                                            <input type="text" class="form-control" id="grupoE" value="">
					                                        </div>
					                                        
					                                       <label class="m-t-20">Anticipo</label>
					                                        <div class="input-group ">
					                                            <input type="text" class="form-control" id="anticipoE" value="" placeholder="$0.0">
					                                        </div>

					                                    </div>
					                                    <!-- OK -->
					                                    <div class="col-md-6">
					                                        <label class="m-t-20">Contrato</label>
					                                        <div class="input-group">
					                                            <input type="text" class="form-control" id="contratoE" value="" placeholder="Contrato">
					                                        </div>
					                                       <label class="m-t-20">Restante</label>
					                                        <div class="input-group">
					                                            <input type="text" class="form-control" id="restanteE" value="" placeholder="$0.0">
					                                        </div>
					                                    </div>
					                                    
					                                    <div class="col-md-6">
					                                        <label class="m-t-20">Telefono de Contacto</label>
					                                        <div class="input-group ">
					                                            <input type="text" class="form-control" id="telefonoE" value="" placeholder="(777) - 0 00 00 00">
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
				                                              
				                                                 <select data-rule-selecs="true"
																			class="form-control" id="tipoEventoE" required
																			name="tipoEventoE" placeholder="seleccione una opcion">
																			<option value="-1">* Seleccione una Opcion</option>
																			<c:forEach var="evento" begin="0" items="${lstEvnetos}">
																			<c:if test="${evento.activo == '1'}">
																			       <option value="${evento.tipoEventoId}">${evento.descripcion}</option>
																		    </c:if>
																			</c:forEach>
																
																</select>        
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
	                           		<button type="button" class="btn btn-info btn-rounded m-t-10 float-right" id="agregarEvento" data-dismiss="modal">Guardar</button>
                                    <button type="button" class="btn btn-info btn-rounded m-t-10 float-right" data-dismiss="modal">Cancelar</button>
	                        	</div>
                        	</div>
                                   <!-- /.modal-content -->
                    	</div>
                               <!-- /.modal-dialog -->
                    </div>
                    
                                 
	                             <div class="alert alert-success" id="success-alert" role="alert">
						           	<strong>Guardado con exito</strong>
						            <button class="close" type="button" data-dismiss="alert" aria-label="Close">
						                <span aria-hidden="true"><i class="mdi mdi-close-box-outline"></i></span>
						            </button>
						         </div>
					          <div class="table-responsive m-t-40">
                                 <table id="myTable" class="table table-bordered table-striped">
                                     <thead style="color: aliceblue;">  
                                         <tr>
                                             <th>Id</th>
                                             <th>GRUPO</th>
                                             <th>CONTRATO</th>
                                             <th>ANTICIPO</th>
                                             <th>RESTANTE</th>
                                             <th>TELEFONO</th>
                                             <th>FECHA</th>
                                             <th>LUGAR</th>
                                             <th>HORA INICIO</th>
                                             <th>HORA FINAL</th>
                                             <th>CHOFER</th>
                                             <th>CAMIONETA</th>
                                             <th>ESTATUS</th>
<!--                                              <th>CLIENTE_ID</th> -->
                                         </tr>
                                     </thead>
                                     <tbody>
                                       <c:forEach var="evento" begin="0" items="${lstEventos}">
                                         <tr>
                                             <td>${evento.eventoId}</td>
                                             <td>${evento.grupo}</td>
                                             <td>${evento.contrato}</td>
                                             <td>${evento.anticipo}</td>
                                             <td>${evento.restante}</td>
                                             <td>${evento.telefono}</td>
                                             <td>${evento.fechaEvento}</td>
                                             <td>${evento.lugarEvento}</td>
                                             <td>${evento.horaInicio}</td>
                                             <td>${evento.horaFin}</td>
                                             <td>${evento.chofer}</td>
                                             <td>${evento.camioneta}</td>
                                             
                                           	 <c:if test="${evento.activo == '1' }">
									    	 	<td><span class="label label-success">ACTIVO</span> </td>
											 </c:if>
											 <c:if test="${evento.activo == '0'}">
									    		<td><span class="label label-danger">INACTIVO</span> </td>
											 </c:if>
                                             
<%--                                              <td>${evento.clienteId}</td> --%>
                                         </tr>
                                       </c:forEach>
                                     </tbody>
                                 </table>
                             </div>
                                 
                            </div>
                             
                             
                        </div> 
                	</div>
            	</div>    	
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
    <!-- ==============================================================language: 'es' -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
 	<script src="../assets/plugins/jquery/jquery.min.js"></script>
<!--  	<script src="https://code.jquery.com/jquery-3.3.1.js"></script> -->
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../assets/plugins/popper/popper.min.js"></script>
    <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="../js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="../js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../js/sidebarmenu.js"></script>
    <!-- Clock Plugin JavaScript -->
    <script src="../assets/plugins/clockpicker/dist/bootstrap-clockpicker.min.js"></script>
    
    <!-- Date Picker Plugin JavaScript -->
    <script src="../assets/plugins/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
    <!--stickey kit -->
    <script src="../assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="../assets/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!--Custom JavaScript -->
    <script src="../js/custom.min.js"></script>
    
	<!-- This is data table -->
    <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<script src="../assets/plugins/datatables/media/js/dataTables.responsive.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
 	
	<script src="https://cdn.datatables.net/buttons/1.6.0/js/dataTables.buttons.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.6.0/js/buttons.bootstrap4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.6.0/js/buttons.html5.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.6.0/js/buttons.print.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.6.0/js/buttons.colVis.min.js"></script>

    	<!-- end - This is for export functionality only -->
	<script>
	$(document).ready(function() {
		
		$('.clockpicker').clockpicker({
            donetext: 'Ok',
        }).find('input').change(function () {
            console.log(this.value);
        });
		
		jQuery('.mydatepicker, #datepicker').datepicker({
      	  format: 'dd/mm/yyyy',
      	  autoclose: true,
      	  daysOfWeekHighlighted: "6,0",
      	  todayHighlight: true
      	});
		
		
		$("#success-alert").hide();
		$('#datepicker1').datepicker({
			format: 'dd/mm/yyyy',
			autoclose: true,
	      	daysOfWeekHighlighted: "6,0",
	      	todayHighlight: true,
	      	closeText: 'Cerrar',
	        prevText: '<Ant',
	        nextText: 'Sig>',
	        currentText: 'Hoy',
	        orientation: 'bottom',
	        monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
	        monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
	        dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
	        dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mié', 'Juv', 'Vie', 'Sáb'],
	        dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá']
	      	
		});
	    $('#datepicker2').datepicker({
	    	format: 'dd/mm/yyyy',
	    	 autoclose: true,
	      	  daysOfWeekHighlighted: "6,0",
	      	  todayHighlight: true,
	      	closeText: 'Cerrar',
	        prevText: '<Ant',
	        nextText: 'Sig>',
	        currentText: 'Hoy',
	        orientation: 'bottom',
	        monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
	        monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
	        dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
	        dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mié', 'Juv', 'Vie', 'Sáb'],
	        dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sá'],
	    });
	    
	   var table = $('#myTable').DataTable( {
		   dom:  "<'row'<'col-sm-4'l><'col-sm-4'B><'col-sm-4'f>>" +
	          "<'row'<'col-sm-12'tr>>" +
	          "<'row'<'col-sm-5'i><'col-sm-7'p>>", 
		   language: {
			   "sProcessing":     "Procesando...",
               "sLengthMenu":     "Mostrar _MENU_ registros",
               "sZeroRecords":    "No se encontraron resultados",
               "sEmptyTable":     "Ningún dato disponible en esta tabla =(",
               "sInfo":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
               "sInfoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
               "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
               "sInfoPostFix":    "",
               "sSearch":         "Buscar:",
               "sUrl":            "",
               "sInfoThousands":  ",",
               "sLoadingRecords": "Cargando...",
               "oPaginate": {
                   "sFirst":    "Primero",
                   "sLast":     "Último",
                   "sNext":     "Siguiente",
                   "sPrevious": "Anterior"
               },
               "oAria": {
                   "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                   "sSortDescending": ": Activar para ordenar la columna de manera descendente"
               },
               "buttons": {
                   "copy": "Copiar",
                   "colvis": "Visibilidad"
               }  
		   },
	        buttons: [
	             {
	                extend: 'pdf',
	                text:'Exportar Eventos Pdf',
	                filename: function(){
	                    var d = new Date();
	                    var n = d.getTime();
	                    return 'ListaEventos' + d.toLocaleDateString("en-GB");
	                },
	                exportOptions: {
	                    columns: ':visible',
	                    stripHtml: true
	                },
	                pageSize: 'LETTER',
	                customize: function(doc, config) {
	                  var tableNode;
	                  for (i = 0; i < doc.content.length; ++i) {
	                    if(doc.content[i].table !== undefined){
	                      tableNode = doc.content[i];
	                      break;
	                    }
	                  }
	 
	                  var rowIndex = 0;
	                  var tableColumnCount = tableNode.table.body[rowIndex].length;
	                   
	                  if(tableColumnCount > 9){
	                    doc.pageOrientation = 'landscape';
	                  }
	                }
	            },
	            'excel', 'colvis'
	          ]
		   
	    } );
	 
	          
	    $('#myTable tbody').on( 'click', 'tr', function () {
	    	  if ( $(this).hasClass('selected') ) {
		            $(this).removeClass('selected');
		        } else {
		        	table.$('tr.selected').removeClass('selected');
		            $(this).addClass('selected');
		        }
		        
		    	var data = table.row( this ).data();
		    	console.log(data);
		    	 
		    	$("#add-evento").modal("show"); 
		    	 
		    	/*eventoId:$('#eventoId').val(),
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
    			tipoEvento:$('#tipoEventoE').val()*/
    			
    			 $(".modal-body #eventoId").val( data[0] );
			     $(".modal-body #grupoE").val( data[1] );
	    		 $(".modal-body #contratoE").val( data[2] );
		      	 $(".modal-body #anticipoE").val( data[3] );
		      	 $(".modal-body #restanteE").val( data[4] );
		      	 $(".modal-body #telefonoE").val( data[5] );
		      	 $(".modal-body #fechaE").val( data[6] );
		      	 $(".modal-body #lugarEventoE").val( data[7] );
		      	 $(".modal-body #horaInicioE").val( data[8] );
		      	 $(".modal-body #horaFinE").val( data[9] );
		      	 $(".modal-body #choferE").val( data[10] );
		      	 $(".modal-body #camionetaE").val( data[11] );
		      	 $("#fechaE").prop('readonly',true);
		      	//jQuery('.mydatepicker, #datepicker').datepicker().prop('disabled', true);
		      	jQuery('.mydatepicker, #datepicker').datepicker({
		      		showOn: "off"	
		      	});
		      	
		      	 //$(".modal-body #empleadoId").val( obj.ciudad );
		      	 //$(".modal-body #clienteId").val( obj.estado );
		      	 //$(".modal-body #tipoEventoE").val( obj.codigop );
		      	 $(".modal-body #actualiza").val( 1 );
		      	
		    	/*$.ajax({
			         type: "post",
			         url: "consultaEmpleado",
			         cache: false,    
			         data:'empleadoId=' + data[0],
			         success: function(obj){
			        	console.log(obj);
			          	console.log(obj.nombre);
			            $(".modal-body #empleadoId").val( obj.empleadoId );
			            $(".modal-body #direccionId").val( obj.direccionId );
			    		$(".modal-body #nombre").val( obj.nombre );
				      	$(".modal-body #apellidoPaterno").val( obj.apellidoPat );
				      	$(".modal-body #apellidoMaterno").val( obj.apellidoMat );
				      	$(".modal-body #fechaNacimiento").val( obj.fechaNac );
				      	$(".modal-body #correo").val( obj.correo );
				      	$(".modal-body #telefono").val( obj.telefono );
				      	$(".modal-body #puesto").val( obj.rol );
				      	$(".modal-body #sexo").val( obj.genero );
				      	$(".modal-body #calle").val( obj.calle );
				      	$(".modal-body #colonia").val( obj.colonia );
				      	$(".modal-body #ciudad").val( obj.ciudad );
				      	$(".modal-body #estado").val( obj.estado );
				      	$(".modal-body #codigoPostal").val( obj.codigop );
				      	$(".modal-body #direccionId").val( obj.direccionId );
				      	$(".modal-body #actualiza").val( 1 );
				      	
				      	 $("'#add-evento").modal("'show"); 
				      	//direccionId: null
				      	
			         },
			         error: function(e){
			        	 console.log("ERROR: ", e);
			          	 alert('Error while request..');
			         }
			        });*/
		    	
	    });
	          
	});
	 
	 $("#BuscaR").click(function() {
	 	console.log('ok');
	 	$("#action").val('buscar');
		$("#busquedaForm").submit();
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
      	jQuery('.mydatepicker, #datepicker').datepicker({
      		showOn: "on"	
      	});
	 });
	 
	 
	//Evento para guardar o actulizar el registro
	 $("#agregarEvento").click(function() {
		 	console.log("guardaEventoModulo");
			console.log('en boton Agregar Evento');
	    	$.ajax({
	    		url: "guardaEventoModulo",
	    		type: "post",
	    		data: {
	    			
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
	    			tipoEvento:$('#tipoEventoE').val(),
	    			actualiza:$("#actualiza").val()
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
		    			 $("#action").val('guardar');
		    			 $("#busquedaForm").submit();	

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
	
// 		$(function() {
// 			$('#myTable').DataTable({
// 	 			dom : 'Bfrtip',
// 	 			buttons : [ 'copy', 'csv', 'excel', 'pdf', 'print' ]
// 			});
// 		});
// 		$('#example23').DataTable({
// 			dom : 'Bfrtip',
// 			buttons : [ 'copy', 'csv', 'excel', 'pdf', 'print' ]
// 		});

	</script>
	
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="../assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    
    
</body></html>