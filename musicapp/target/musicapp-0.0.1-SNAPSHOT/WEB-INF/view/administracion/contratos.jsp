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
    
    <!-- Footable CSS -->
    <link rel="stylesheet" type="text/css" href="../assets/plugins/datatables/media/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="../assets/plugins/datatables/media/css/responsive.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/plugins/wizard/steps.css" >
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
	 table.dataTable thead tr {
	  background-color: #1e88e5;
	  font-size: 12px;
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
        <div class="page-wrapper" style="min-height: 800px;font-size: 0.8rem;">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                
                <!-- barra Head -->
                <jsp:include page="../barraHead.jsp" />

                <!-- Start Page Content -->
                <!-- ============================================================== -->
                 <!-- Validation wizard -->
                 
                <div class="row" id="validation">
                
						<div id="add-cliente" class="modal hide fade" data-backdrop-limit="1" tabindex="-1"" role="dialog" aria-labelledby="myModalEvento" aria-hidden="true" data-modal-parent="#add-cliente">
                        	<div class="modal-dialog modal-lg">
                            	<div class="modal-content">
                                	<div class="modal-header">
<!-- 	                                	<button type="button" class="close" data-dismiss="modal" aria-hidden="true" ><i class="mdi mdi-account-check"></i></button> -->
<!--                                        	<h4 class="modal-title" id=""> Selecciona el Cliente </h4>  -->
                                    </div>
                                     <div class="modal-body">
                                      	<from class="form-horizontal">

											
							                <input type="hidden" id="empleadoId" name="empleadoId" value="${empleado.empleadoId}">

											<div class="card card-outline-info">
 												<div class="card-header">
					                                <h4 class="m-b-0 text-white"></h4>
					                            </div>
					                            <div class="card-body">
					                                <h4 class="card-title">Lista de Clientes en Sistema</h4>
					                                <h6 class="card-subtitle">Seleccione el <code>Cliente</code> para generar Factura.</h6>
					                                <div class="row">
					                                 <div class="table-responsive m-t-2">
						                                 <table id="myTable" class="table table-bordered table-striped " style="font-size: 11px;" >
						                                     <thead style="color: aliceblue;">
						                                         <tr>
						                                         	 <th>Id</th>
						                                         	 <th>Nombre</th>
						                                             <th>Apellidos</th>
						                                             <th>Telefono</th>
						                                             <th>Correo</th>
						                                         </tr>
						                                     </thead>
						                                     <tbody>
						                                     	  <c:forEach var="cliente" begin="0" items="${lstClientes}">
																    <tr>
																    	<td>${cliente.clienteId}</td>
																    	<td>${cliente.nombre}</td>
																    	<td>${cliente.apellidos}</td>
																    	<td>${cliente.telefono}</td>
																    	<td>${cliente.correo}</td>
																	</tr>
																  </c:forEach>
						                                     </tbody>
						                                 </table>
						                             </div>
					                                    
					                                </div>
					                            </div>
					                        </div>
				                
		                           </from>
                           		</div>
	                           	<div class="modal-footer">
<!-- 	                           		<button type="button" class="btn btn-success waves-effect" id="agregarEvento" data-dismiss="modal">Guardar</button> -->
                                    <button type="button" class="btn btn-info btn-rounded m-t-10 float-right" data-dismiss="modal">Cancelar</button>

	                        	</div>
                        	</div>
                                   <!-- /.modal-content -->
                    	</div>
                               <!-- /.modal-dialog -->
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
							                  
											<div class="card card-outline-info">
 													<div class="card-header">
					                                <h4 class="m-b-0 text-white"></h4>
					                            </div>
					                            <div class="card-body">
					                                <h4 class="card-title">Lista de Clientes en Sistema</h4>
					                                <h6 class="card-subtitle">Seleccione el <code>Evento</code> para generar Factura.</h6>
					                                <div class="row">
					                                
					                                 <div class="table-responsive m-t-2">
						                             
						                                 <table id="myTableEvento" class="table table-bordered table-striped" style="font-size: 11px;">
						                                     <thead style="color: aliceblue;">  
						                                         <tr>
						                                             <th>Id</th>
						                                             <th>Grupo</th>
						                                             <th>Contrato</th>
						                                             <th>Anticipo</th>
						                                             <th>Restante</th>
						                                             <th>Telefono</th>
						                                             <th>Fecha</th>
						                                             <th>Lugar</th>
						                                         </tr>
						                                     </thead>
						                                     <tbody id="tablaEventos">
						                                     </tbody>
						                                 </table>
						                             </div>
						                             </div>
					                                    
					                                </div>
					                            </div>
					                    
				                
		                           </from>
                           		</div>
	                           	<div class="modal-footer">
                                    <button type="button" class="btn btn-info btn-rounded m-t-10 float-right" data-dismiss="modal">Cancelar</button>
	                        	</div>
	                        	
	                        	
                        	</div>
                                   <!-- /.modal-content -->
                    	</div>
                               <!-- /.modal-dialog -->
                    </div>
                    
                    <div class="col-12">
                        <div class="card wizard-content">
                            <div class="card-body">
                                <h4 class="card-title">Generación de Contratos</h4>
                                <h6 class="card-subtitle">Selecciona el cliente y evento para generar el contrato</h6>
                                <form:form modelAttribute="contratoForm" action="generaDetalle" class="validation-wizard wizard-circle" method="post">
<%-- 									<form action="#" class="validation-wizard wizard-circle"> --%>
									<input type="hidden" id="clienteId" value="">
                                    <!-- Step 1 -->
                                    <h6>Paso 1</h6>
                                    <section>
                                     	<div class="row">
                                            <div class="col-md-6">
                                            	<a href="#add-cliente" role="button" class="btn btn-info" data-toggle="modal" id="btnAgregar">Busca Cliente</a>
                                            </div>
                                            <div class="col-md-6">
                                            
                                            </div>
                                        </div>
                                        <br>
                                    	<div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="wfirstName2"> Nombre :
                                                        <span class="danger">*</span>
                                                    </label>
                                                    <input type="text" class="form-control required" id="nombre" name="Nombre"> </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="wlastName2"> Apellidos :
                                                        <span class="danger">*</span>
                                                    </label>
                                                    <input type="text" class="form-control required" id="apellidos" name="apellidos"> </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="wfirstName2"> Telefono :
                                                        <span class="danger">*</span>
                                                    </label>
                                                    <input type="text" class="form-control required" id="telefono" name="telefono"> </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="wlastName2"> Correo :
                                                        <span class="danger">*</span>
                                                    </label>
                                                    <input type="text" class="form-control required" id="correo" name="correo"> </div>
                                            </div>
                                        </div>
                                       
                                    </section>
                                    <!-- Step 2 -->
                                    <h6>Paso 2</h6>
                                    <section>
                                    <div class="row">
                                            <div class="col-md-6">
                                            	<a href="#add-evento" role="button" class="btn btn-info" data-toggle="modal" id="btnAgregarE">Busca Evento</a>
                                            </div>
                                            <div class="col-md-6">
                                            
                                            </div>
                                        </div>
                                        <br>
                                    
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="wfirstName2"> Grupo :
                                                        <span class="danger">*</span>
                                                    </label>
                                                    <input type="text" class="form-control required" id="grupo" name="grupo"> </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="wlastName2"> Contrato :
                                                        <span class="danger">*</span>
                                                    </label>
                                                    <input type="text" class="form-control required" id="contrato" name="contrato"> </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="wfirstName2"> Anticipo :
                                                        <span class="danger">*</span>
                                                    </label>
                                                    <input type="text" class="form-control required" id="anticipo" name="anticipo"> </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="wlastName2"> Restante :
                                                        <span class="danger">*</span>
                                                    </label>
                                                    <input type="text" class="form-control required" id="restante" name="restante"> </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="wfirstName2"> Telefono :
                                                        <span class="danger">*</span>
                                                    </label>
                                                    <input type="text" class="form-control required" id="telefonoEve" name="telefonoEve"> </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label for="wlastName2"> Fecha :
                                                        <span class="danger">*</span>
                                                    </label>
                                                    <input type="text" class="form-control required" id="fecha" name="fecha"> </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label for="wfirstName2"> Lugar :
                                                        <span class="danger">*</span>
                                                    </label>
                                                    <input type="text" class="form-control required" id="lugar" name="lugar"> </div>
                                            </div>
                                        </div>
                                    </section>
                                    <!-- Step 3 -->
                                    <!-- Step 4 -->
                                </form:form>
                                <form id="generaContratoForm" action="generaContrato" method="post" target="_blank" name="generaContratoForm"> 
						 			<input type="hidden" name="clienteSelId" value="" id="clienteSelId"/>
						 			<input type="hidden" name="eventoSelId" value="" id="eventoSelId"/>
<!-- 						 			<button type="submit" class="btn grey">Visualizar Expediente</button> -->
								</form>
								
								<form id="generaContratoServicioForm" action="generaContratoServicio" method="post" target="_blank" name="generaContratoServicioForm"> 
						 			<input type="hidden" name="clienteSelSerId" value="" id="clienteSelSerId"/>
						 			<input type="hidden" name="eventoSelSerId" value="" id="eventoSelSerId"/>
<!-- 						 			<button type="submit" class="btn grey">Visualizar Expediente</button> -->
								</form>
								
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
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
 	<script src="../assets/plugins/jquery/jquery.min.js"></script>
    <script src="../assets/plugins/calendar/jquery-ui.min.js"></script>
    
        <!-- This is data table -->
    <script src="../assets/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
	<script src="../assets/plugins/datatables/media/js/dataTables.responsive.min.js"></script>
	
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../assets/plugins/popper/popper.min.js"></script>
    <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/plugins/sweetalert/sweetalert.min.js"></script>
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
    <script src="../assets/plugins/wizard/jquery.steps.min.js"></script>
    <script src="../assets/plugins/wizard/jquery.validate.min.js"></script>
    <script src="../assets/plugins/wizard/jquery.validate.min.js"></script>
    <script src="../js/jquery.jqGrid.min.js"></script>
    
    
    <script>
    
    /* Codigo JS para la Visualizacion de PDF en IFRAME */
    (function(a){
   		a.createModal=function(b){
   			defaults={
   						title:"",
   						message:"Your Message Goes Here!",
   						closeButton:true,scrollable:false
   					};
   			var b=a.extend({},defaults,b);
   			html='<div class="modal fade" id="modalViewFile">';
   			html+='<div class="modal-dialog modal-lg">';
   			html+='<div class="modal-content">';
   			html+='<div class="modal-header">';
   			html+='<button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>';
   			if(b.title.length>0){
   				html+='<h4 class="modal-title">'+b.title+"</h4>"
   			}
   			html+="</div>";
   			html+='<div class="modal-body" style="overflow-y: auto;">';
   			html+=b.message;
   			html+="</div>";
   			html+='<div class="modal-footer">';
   			if(b.closeButton===true){
   				html+='<button type="button" class="btn btn-sucess" data-dismiss="modal">Cerrar</button>'
   			}
   			html+="</div>";
   			html+="</div>";
   			html+="</div>";
   			html+="</div>";
   			a("body").prepend(html);
   			a("#modalViewFile").modal().on("hidden.bs.modal",function(){a(this).remove()})
   		}
   	})(jQuery);
    
        $('#add-cliente').modal('hide');
        
  	    $('#myTableEvento tbody').on( 'click', 'tr', function () {

  		        
  		    	var data = $('#myTableEvento').DataTable().row( this ).data();
  		    	console.log(data);
  		    	$('#eventoId').val(data[0]);
  		    	$('#grupo').val(data[1]);
  		    	$('#contrato').val(data[2]);
  		    	$('#anticipo').val(data[3]);
  		    	$('#restante').val(data[4]);
  		    	$('#telefonoEve').val(data[5]);
  		    	$('#fecha').val(data[6]);
  		    	$('#lugar').val(data[7]);
  		    	$('#add-evento').modal('toggle');
  		    	
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
 	    	   		        
 		    	var data = table.row( this ).data();
 		    	console.log(data);
 		    	$('#clienteId').val(data[0]);
 		    	$('#nombre').val(data[1]);
 		    	$('#apellidos').val(data[2]);
 		    	$('#telefono').val(data[3]);
 		    	$('#correo').val(data[4]);
 		    	consultaEventos(data[0]); 
 		    	$('#add-cliente').modal('toggle');
 		    	
 		      	$('#eventoId').val('');
  		    	$('#grupo').val('');
  		    	$('#contrato').val('');
  		    	$('#anticipo').val('');
  		    	$('#restante').val('');
  		    	$('#telefonoEve').val('');
  		    	$('#fecha').val('');
  		    	$('#lugar').val('');
 		    	 
 		    	
 	    });
 	
 	    
 	   function consultaEventos(clienteId){
 	    	console.log('consulta Eventos del clienteId: ' +clienteId);
 	    	
 	    	object={ clienteId:$("#clienteId").val() }
 	    	console.log('consulta Eventos del clienteId: ' +$("#clienteId").val());
 	    	
 		    $.ajax({
 		            type : "POST",
 		            url : 'consultaEventosIdCliente', 
 		            data : {
 		            		clienteId:$("#clienteId").val()
 		            	   },
 		            success : function(data){
 		            	 myJsonData = data;
 		            	 console.log("Json: " + JSON.stringify(data));
 		            	 populateDataTable(myJsonData);
 		            },
 		            error : function(e) {
 						console.log("There was an error with your request...");
 					    console.log("error: " + JSON.stringify(e));
 		            }
 		      });
 		}
 		
 	   var cargada = 0;
 		  // populate the data table with JSON data
 	   function populateDataTable(data) {
 		    console.log("populating data table...");
 		    // clear the table before populating it with more data
 		  
 		   var length = Object.keys(data.eventos).length;
 		   
 		   $('#myTableEvento').DataTable().clear().destroy();
 		  
 		   var tableEvento = $('#myTableEvento').dataTable({
              destroy: true,
              retrieve: true,
              language: {
   			   	  "sProcessing":     "Procesando...",
   			   	  "sLengthMenu":     "Mostrar _MENU_ registros",
                  "sZeroRecords":    "No se encontraron resultados",
                  "sEmptyTable":     "No se encontraron eventos para el Cliente Seleccionado",
                  "sInfo":           "Mostrando Eventos del _START_ al _END_ de un total de _TOTAL_ registros",
                  "sInfoEmpty":      "Mostrando Eventos del 0 al 0 de un total de 0 registros",
                  "sInfoFiltered":   "(filtrado de un total de _MAX_ registros)",
                  "sSearch":         "Buscar:",
                  "oPaginate": {
                      "sFirst":    "Primero",
                      "sLast":     "Último",
                      "sNext":     "Siguiente",
                      "sPrevious": "Anterior"
                  },
                  "oAria": {
                      "sSortAscending":  ": Activar para ordenar la columna de manera ascendente",
                      "sSortDescending": ": Activar para ordenar la columna de manera descendente"
                  }
              }
           });
 		 
 		   if (length>0) {
	 		   for(var i = 1; i < length+1; i++) {
	 		      var evento = data.eventos['evento'+i];
	 		      tableEvento.fnAddData( [
	 		    	  evento.eventoId,
	 		    	  evento.grupo,
	 		    	  evento.contrato,
	 		    	  evento.anticipo,
	 		    	  evento.restante,
	 		    	  evento.telefono,
	 		    	  evento.fechaEvento,
	 		    	  evento.lugarEvento
	 		       ]);
	 		      
	 		  }
 		   } 	  
  		   
 	}
 		  
 		  /*******************************************************************************/
 		  /*******************************************************************************/
 		  /*******************************************************************************/
        var form = $(".validation-wizard").show();

        $(".validation-wizard").steps({
            headerTag: "h6",
            bodyTag: "section",
            transitionEffect: "fade",
            titleTemplate: '<span class="step">#index#</span> #title#',
            labels: {
                finish: "Genera Contrato"
            },
            onStepChanging: function (event, currentIndex, newIndex) {
                return currentIndex > newIndex || !(3 === newIndex && Number($("#age-2").val()) < 18) && (currentIndex < newIndex 
                		&& (form.find(".body:eq(" + newIndex + ") label.error").remove(), 
                				form.find(".body:eq(" + newIndex + ") .error").removeClass("error")), 
                				form.validate().settings.ignore = ":disabled,:hidden", 
                				form.valid())
            },
            onFinishing: function (event, currentIndex) {
                return form.validate().settings.ignore = ":disabled", form.valid()
            },
            onFinished: function (event, currentIndex) {
                //swal("Form Submitted!", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lorem erat eleifend ex semper, lobortis purus sed.");
                //swal("Generar contrato!", "Se genera Contrato ");
                generaContrato();
                
//                 swal({
//                 	  title: "Estas Seguro?",
//                 	  text: "Se generara la FacturYour will not be able to recover this imaginary file!",
//                 	  type: "warning",
//                 	  showCancelButton: true,
//                 	  confirmButtonClass: "btn-danger",
//                 	  confirmButtonText: "Yes, delete it!",
//                 	  closeOnConfirm: false
//                 	},
//                 	function(){
//                 	  swal("Deleted!", "Your imaginary file has been deleted.", "success");
//                 	});
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
        
        function generaContrato(){
        	$("#clienteSelId").val($("#clienteId").val()); 
        	$("#eventoSelId").val($('#eventoId').val());
        	
        	$("#clienteSelSerId").val($("#clienteId").val()); 
        	$("#eventoSelSerId").val($('#eventoId').val());
        	
        	$("#generaContratoServicioForm").submit();
        	//$("#generaContratoForm").submit();
        	
// 			$.ajax({         
// 				url: "generaContrato?clienteId="+$("#clienteId").val() +"&eventoId="+$('#eventoId').val(),
// 				type: "POST",
// 				headers: {'Content-Type' : 'application/pdf;'},
// 				error: function() {             
// 					msgAlerta("Se genero un error al generar el PDF, intente nuevamente.");
// 				},
// 				success: function(data) { 
// 					console.log('ok');
// 					var iframe = '<div><iframe src="' + "data:application/pdf;base64," + data + '"  ></iframe></div>'
// 			        $.createModal({
// 			        	title:'Contrato',
// 			        	message: iframe,
// 			        	closeButton:true,
// 			        	scrollable:false
// 			        });
					
// 				},
// 		            error : function(e) {
// 						console.log("There was an error with your request...");
// 					    console.log("error: " + e);
// 		            }     
// 			});

	}
    </script>
        


</body></html>