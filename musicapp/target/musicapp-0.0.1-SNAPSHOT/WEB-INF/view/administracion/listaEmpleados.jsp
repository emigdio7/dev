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
    <style type="text/css">
	    table.dataTable thead tr {
	  background-color: #1e88e5;
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
                             <form:form method="post" action="/musicapp/admin/llamadasEmpleado" id="formListaEmpleados" class="form-horizontal">
                             	<input type="hidden" name="empleadoId"  id="empleadoId" >
                             </form:form>
                             <div class="table-responsive m-t-40">
                                 <table id="myTable" class="table table-bordered table-striped">
                                     <thead style="color: aliceblue;">
                                         <tr>
                                         	 <th>Id</th>
                                             <th>Nombre</th>
                                             <th>Apellido Paterno</th>
                                             <th>Apellido Materno</th>
                                             <th>Telefono</th>
                                             <th>Correo</th>
                                             <th>Rol</th>
                                             <th>salario</th>
                                             <th>Activo</th>
                                         </tr>
                                     </thead>
                                     <tbody>
                                     	  <c:forEach var="empleado" begin="0" items="${lstEmp}">
										    <tr>
										    	<td>${empleado.empleadoId}</td>
										    	<td><img src="${empleado.imagenPath}" class="img-circle" width="40"> ${empleado.nombre}</td>
										    	<td>${empleado.apellidoPat}</td>
										    	<td>${empleado.apellidoMat}</td>
										    	<td>${empleado.telefono}</td>
										    	<td>${empleado.correo}</td>
<%-- 										    	<td>${empleado.rol.rolId}</td> --%>
												<td><span class="label ${empleado.rol.classLabel}">${empleado.rol.descripcion}</span></td>
										    	<td>${empleado.salario}</td>
												<c:if test="${empleado.activo == '1' }">
										    		<td><span class="label label-success">ACTIVO</span> </td>
												</c:if>
												<c:if test="${empleado.activo == '0'}">
										    		<td><span class="label label-danger">INACTIVO</span> </td>
												</c:if>
												
										
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
    <script src="../assets/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
	<script src="../assets/plugins/datatables/media/js/dataTables.responsive.min.js"></script>

    <!-- start - This is for export functionality only -->
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"></script>
    <script src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"></script>
    
    
    
  <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="../assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    
          	<!-- end - This is for export functionality only -->
	<script>
	
	$(document).ready(function() {

// 		$('#example23').DataTable({
//			dom : 'Bfrtip',
//			buttons : [ 'copy', 'csv', 'excel', 'pdf', 'print' ]
//		});
		
		var tabla = $('#myTable').DataTable();
		  
		$('#myTable tbody').on( 'click', 'tr', function () {
			   
	        if ( $(this).hasClass('selected') ) {
	            $(this).removeClass('selected');
	        } else {
	        	tabla.$('tr.selected').removeClass('selected');
	            $(this).addClass('selected');
	        }
	        
	    	var data = tabla.row( this ).data();
	    	console.log (data[0]);
	    	$('#empleadoId').val(data[0]);
	    	console.log ($('#empleadoId').val());
	    	$("#formListaEmpleados").submit();	
	    	 
		 });
		
	});	
		
	</script>
	
    
</body></html>