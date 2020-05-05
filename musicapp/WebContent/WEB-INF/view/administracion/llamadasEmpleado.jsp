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
<!--     <link rel="stylesheet" type="text/css" href="https://www.ihbc.org.uk/consultationsdb_new/media/css/jquery.dataTables.css"> -->
    
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

    table#myTable.display tbody tr:nth-child(even):hover td{
 	   background-color: #ffa;
	}
	
	table#myTable.display tbody tr:nth-child(odd):hover td {
	    background-color: #ffa;
	}

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
            <div class="container-fluid">
                
                <!-- barra Head -->
                <jsp:include page="../barraHead.jsp" />

               <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->

				<div class="row">
                	<div class="col-12">
                		<div class="card">
                			<div class="card-body">
                             <h4 class="card-title">Lista de empleados</h4>
                             <h6 class="card-subtitle">Lista empleados para consultar llamadas </h6>
                             
                             <button type="button" class="btn btn-info btn-rounded m-t-10 float-right" data-toggle="modal" data-target="#add-contact">Grafica</button>
                             
                              <!-- Add Contact Popup Model -->        
                                <div id="add-contact" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
                                    <div class="modal-dialog modal-xl">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                 
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" ><i class="mdi mdi-account-check"></i></button>
                                                <h4 class="modal-title" id="myModalLabel"> Grafica de llamadas  </h4> </div>
	                                            <div class="modal-body">
	                                                <from class="form-horizontal form-material">
	                                       				<div class="container col-md-12">
															<div class="row">
											                    <!-- /# column -->
											
											                    <div class="col-lg-12">
											                        <div class="card">
											                            <div class="card-title">
											                                <h4>Grafica llamadas </h4>
											                            </div>
											                            <div class="flot-container">
											                               <canvas id="lineChart"></canvas>
											                            </div>
											                        </div>
											                        <!-- /# card -->
											                    </div>
																		
																						                  
											                </div>
											                
														</div>
														
	                                                </from>
	                                            </div>
	                                            <div class="modal-footer">
<!-- 	                                                <button type="button" class="btn btn-success waves-effect" id="agregarNuevo" data-dismiss="modal">Guardar</button> -->
	                                                <button type="button" class="btn btn-inverse waves-effect" data-dismiss="modal">Cerrar</button>
	                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>
                                
                                
                             
                             <form:form method="POST" action="/musicapp/admin/lineaTiempollamada" id="formListaEmpleados" class="form-horizontal">
                             	<input type="hidden" id="clienteId" name="clienteId">
                             	
                             </form:form>
                             <div class="table-responsive m-t-40">
                                 <table id="myTable" class="table table-bordered table-striped " >
                                 
                                     <thead style="color: aliceblue;">
                                         <tr>
                                         	 <th>Id</th>
                                         	 <th>Empleado</th>
                                             <th>Llamo a Cliente</th>
                                             <th>Fecha</th>
                                             <th>Hora</th>
                                             <th>Detalle</th>
                                         </tr>
                                     </thead>
                                     <tbody>
                                     	  <c:forEach var="llamadas" begin="0" items="${lstLlamadas}">
										    <tr>
										    	<td>${llamadas.llamadaId}</td>
										    	<td>${llamadas.empleado.nombre} ${llamadas.empleado.apellidoPat}</td>
										    	<td><h6><a href="javascript:muestraHistorial(${llamadas.cliente.clienteId})" class="link">${llamadas.cliente.nombre} ${llamadas.cliente.apellidos}</a></h6></td>
										    	<td>${llamadas.fecha}</td>
										    	<td>${llamadas.hora}</td>
										        <td>${llamadas.detalleLlamada}</td>
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
                Â© 2019 Production Vela Music
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

	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>

    <!--  flot-chart js -->
    <script src="../js/lib/flot-chart/excanvas.min.js"></script>
    <script src="../js/lib/flot-chart/jquery.flot.js"></script>
    <script src="../js/lib/flot-chart/jquery.flot.pie.js"></script>
    <script src="../js/lib/flot-chart/jquery.flot.time.js"></script>
    <script src="../js/lib/flot-chart/jquery.flot.stack.js"></script>
    <script src="../js/lib/flot-chart/jquery.flot.resize.js"></script>
    <script src="../js/lib/flot-chart/jquery.flot.crosshair.js"></script>
    <script src="../js/lib/flot-chart/curvedLines.js"></script>
    <script src="../js/lib/flot-chart/flot-tooltip/jquery.flot.tooltip.min.js"></script>
    <script src="../js/lib/flot-chart/flot-chart-init.js"></script>
    
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="../assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    
          	<!-- end - This is for export functionality only -->4
	<script>
	
	$(document).ready(function() {

// 		$('#example23').DataTable({
//			dom : 'Bfrtip',
//			buttons : [ 'copy', 'csv', 'excel', 'pdf', 'print' ]
//		});
		
		var tabla = $('#myTable').DataTable({
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
	    buttons: [ {
		            extend: 'print',
	               	exportOptions: {
	               	  columns: ':visible',
	                  rows: ':visible'
	                }
	             }, {
	               extend: 'pdf',
	               pageSize: 'LEGAL',
	               orientation: 'landscape',
	               exportOptions: {
	                 columns: ':visible',
                   }
	             },{ 
		             extend: 'excel' 
			     }

	            ]

	  });
		  
// 		$('#myTable tbody').on( 'click', 'tr', function () {
			   
// 	        if ( $(this).hasClass('selected') ) {
// 	            $(this).removeClass('selected');
// 	        } else {
// 	        	tabla.$('tr.selected').removeClass('selected');
// 	            $(this).addClass('selected');
// 	        }
	        
// 	    	var data = tabla.row( this ).data();
// 	    	console.log (data[0]);
// 	    	$('#llamadaId').val(data[0]);
	    	
// 	    	$("#formListaEmpleados").submit();	
	    	 
// 		 });
		
		
	});	
		
	function muestraHistorial(clienteId) {
		$('#clienteId').val(clienteId);
		$("#formListaEmpleados").submit();
	}
	
	
	</script>
	
    <script>
  //line
  var ctxL = document.getElementById("lineChart").getContext('2d');
  var myLineChart = new Chart(ctxL, {
    type: 'line',
    data: {
      labels: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"],
      datasets: [
        {
          label: "Llamadas por empleado en un periodo de tiempo",
          data: [28, 48, 40, 19, 86, 27, 90, 200],
          //data: [${totalesCad}],
          backgroundColor: [
            'rgba(0, 137, 132, .2)',
          ],
          borderColor: [
            'rgba(0, 10, 130, .7)',
          ],
          borderWidth: 2
        }
      ]
    },
    options: {
      responsive: true
    }
  });

</script>

</body></html>