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
                             <h4 class="card-title">Prestamos</h4>
                             <h6 class="card-subtitle">Lista y Edicion prestamos vigentes</h6>
                             <button type="button" class="btn btn-info btn-rounded m-t-10 float-right" data-toggle="modal" id="btnAgregar" data-target="#add-contact">Agregar Nuevo Prestamo</button>
                             
                              <!-- Add Contact Popup Model -->        
                                <div id="add-contact" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
                                    <div class="modal-dialog modal-xl">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                 
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" ><i class="mdi mdi-account-check"></i></button>
                                                <h4 class="modal-title" id="myModalLabel"> Agregar Prestamo</h4> </div>
                                            <div class="modal-body">
                                                <from class="form-horizontal form-material">
                                       				<div class="container col-md-12">
														<div class="row">
										                    <div class="col-lg-12">
										                        <div class="card card-outline-info">
										                            <div class="card-header">
										                                <h4 class="m-b-0 text-white"></h4>
										                            </div>
										                            <div class="card-body">
<%-- 										                                <form action="/empleados/listaEmpleados" name="formListaEmpleados" id="formListaEmpleados" class="form-horizontal"> --%>
										                                <form:form method="get" action="/musicapp/empleados/listaEmpleados" id="formListaEmpleados" class="form-horizontal">
										                                	<input type="hidden" id="empleadoId" >
										                                	<input type="hidden" id="direccionId" >
										                                	<input type="hidden" id="actualiza" >
										                                	
										                                    <div class="form-body">
										                                        <h3 class="box-title">Informaci&oacute;n Personal</h3>
										                                        <hr class="m-t-0 m-b-40">
										                                        
										                                        <div class="row">
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Nombre(s)</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text" class="form-control" id="nombre" placeholder="">
										                                                        <small class="form-control-feedback">Nombre del empleado </small> </div>
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-4">Apellido Paterno</label>
										                                                    <div class="col-md-8">
										                                                        <input type="text" class="form-control" id="apellidoPaterno" placeholder="">
										                                                        <small class="form-control-feedback"> Apellido Materno</small> </div>
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                        </div>
										                                        
										                                        <!--/row-->
										                                        <div class="row">
										                                            <div class="col-md-6">
										                                               <div class="form-group row">
										                                                    <label class="control-label text-right col-md-4">Apellido Materno</label>
										                                                    <div class="col-md-8">
										                                                        <input type="text" class="form-control" id="apellidoMaterno" placeholder="">
										                                                        <small class="form-control-feedback"> Apellido Materno. </small> </div>
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-4">Fecha Nac:</label>
										                                                    <div class="col-md-8">
										                                                        <input type="date" class="form-control" id="fechaNacimiento" placeholder="dd/mm/yyyy">
										                                                    </div>
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                        </div>
										                                        
										                                        <div class="row">
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Correo</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text" class="form-control" id="correo" placeholder="">
										                                                        <small class="form-control-feedback">Correo Valido </small> </div>
										                                                </div>
										                                            </div>
										                                            
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-4">Telefono</label>
										                                                    <div class="col-md-8">
										                                                        <input type="text" class="form-control" id="telefono" placeholder="(777) 7777777">
										                                                        <small class="form-control-feedback"> Telefono </small> </div>
										                                                </div>
										                                            </div>
										                                        </div>
										                                        										                                        
										                                        <!--/row-->
										                                        <div class="row">
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Puesto</label>
										                                                    <div class="col-md-6">
										                                                        <select class="form-control custom-select" id="puesto" data-placeholder="Elija un puesto" tabindex="1">
										                                                            <option value="1">Administrador</option>
										                                                            <option value="2">Telefonista</option>
										                                                            <option value="3">Recepcionista</option>
										                                                            <option value="4">Cantante</option>
										                                                            <option value="5">Chofer</option>
										                                                            <option value="6">Ayudante</option>
										                                                            
										                                                        </select>
										                                                    </div>
										                                                </div>
										                                            </div>
										                                            
										                                            <!--/span-->
										                                            <div class="col-md-6">
										                                               <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Sexo</label>
										                                                    <div class="col-md-8">
										                                                        <select class="form-control custom-select" id="sexo">
										                                                            <option value="M">Masculino</option>
										                                                            <option value="F">Femenino</option>
										                                                        </select>
										                                                        <small class="form-control-feedback"> Selecciona la opcion. </small> </div>
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                        </div>
										                                        
										                                        
										                                        <h3 class="box-title">Direcci&oacute;n</h3>
										                                        <hr class="m-t-0 m-b-40">
										                                        <!--/row-->
										                                        <div class="row">
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Calle</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text" id="calle" class="form-control">
										                                                    </div>
										                                                </div>
										                                            </div>
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Colonia</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text" id="colonia" class="form-control">
										                                                    </div>
										                                                </div>
										                                            </div>
										                                        </div>
										                                        <div class="row">
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Ciudad</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text" id="ciudad" class="form-control">
										                                                    </div>
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Estado</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text" id="estado" class="form-control">
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
										                                                        <input type="text" id="codigoPostal" class="form-control">
										                                                    </div>
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
<!-- 										                                                    <label class="control-label text-right col-md-3">Country</label> -->
<!-- 										                                                    <div class="col-md-9"> -->
<!-- 										                                                        <select class="form-control custom-select"> -->
<!-- 										                                                            <option>Country 1</option> -->
<!-- 										                                                            <option>Country 2</option> -->
<!-- 										                                                        </select> -->
<!-- 										                                                    </div> -->
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                        </div>
										                                        <!--/row-->
										                                    </div>
										                                    <hr>
										                                </form:form>
										                            </div>
										                        </div>
										                    </div>
										                </div>
														
													</div>
													
                                                </from>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success waves-effect" id="agregarNuevo" data-dismiss="modal">Guardar</button>
                                                <button type="button" class="btn btn-inverse waves-effect" data-dismiss="modal">Cancelar</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>
                             
                             <div class="alert alert-success" id="success-alert" role="alert">
					           		<strong> Guardado con exito</strong>
					               <button class="close" type="button" data-dismiss="alert" aria-label="Close">
					                   <span aria-hidden="true"><i class="mdi mdi-close-box-outline"></i></span>
					               </button>
					           </div>
                             <div class="table-responsive m-t-40">
                                 <table id="myTable" class="table table-bordered table-striped">
                                     <thead style="color: aliceblue;">
                                         <tr>
                                         	 <th>numero de prestamo</th>
                                             <th>Nombre</th>
                                             <th>Apellididos</th>
                                             <th>rfc</th>
                                             <th>direccion</th>
                                             <th>monto</th>
                                             <th>mensualidad</th>
                                             <th>detalle prestamo</th>
                                             <th>Activo</th>
                                         </tr>
                                     </thead>
                                     <tbody>
                                     <!-- 
                                     	  <c:forEach var="empleado" begin="0" items="${lstEmp}">
										    <tr>
										    	<td>${empleado.empleadoId}</td>
										    	<td><img src="${empleado.imagenPath}" class="img-circle" width="40"> ${empleado.nombre}</td>
										    	<td>${empleado.apellidoPat}</td>
										    	<td>${empleado.apellidoMat}</td>
										    	<td>${empleado.telefono}</td>
										    	<td>${empleado.correo}</td>
										    	<td><span class="label ${empleado.rol.classLabel}">${empleado.rol.descripcion}</span></td>

												<c:if test="${empleado.activo == '1' }">
										    		<td><span class="label label-success">ACTIVO</span> </td>
												</c:if>
												<c:if test="${empleado.activo == '0'}">
										    		<td><span class="label label-danger">INACTIVO</span> </td>
												</c:if>
												
										
											</tr>
										  </c:forEach>
										  
										   -->
										    <tr>
										       <td>1</td>
										    	<td>juan</td>
										    	<td>sanchez</td>
										    	<td>mase980504m10</td>
										    	<td>calle miguel hidalgo</td>
										    	
										    	<td>5000</td>
										    	<td>2500</td>
										    	<td></td>

												<c:if test="${empleado.activo == '1' }">
										    		<td><span class="label label-success">ACTIVO</span> </td>
												</c:if>
												<c:if test="${empleado.activo != '0'}">
										    		<td><span class="label label-danger">INACTIVO</span> </td>
												</c:if>
												
										
											</tr>
											 <tr>
										       <td>2</td>
										    	<td>erika</td>
										    	<td>torres</td>
										    	<td>erima980504m10</td>
										    	<td>la ribera#34</td>
										    	
										    	<td>7000</td>
										    	<td>3500</td>
										    	<td></td>

												<c:if test="${empleado.activo != '1' }">
										    		<td><span class="label label-success">ACTIVO</span> </td>
												</c:if>
												<c:if test="${empleado.activo == '0'}">
										    		<td><span class="label label-danger">INACTIVO</span> </td>
												</c:if>
												
										
											</tr>
										   
										   
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

		
		var tabla = $('#myTable').DataTable();;
		  
		//Oculta el msj de Guardado exitoso del empleado nuevo
		$("#success-alert").hide();
		
		$('#myTable tbody').on( 'click', 'tr', function () {
			   
		        if ( $(this).hasClass('selected') ) {
		            $(this).removeClass('selected');
		        } else {
		        	tabla.$('tr.selected').removeClass('selected');
		            $(this).addClass('selected');
		        }
		        
		    	var data = tabla.row( this ).data();
		   	    //alert( 'You clicked on '+data[0]+'\'s row' );
		   	    
		   	 $.ajax({
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
			      	
			      	 $("#add-contact").modal("show");
			      	/*direccionId: null*/
			      	
		         },
		         error: function(e){
		        	 console.log("ERROR: ", e);
		          alert('Error while request..');
		         }
		        });
		   	 
		   	 /*$.ajax({
		    		url: "consultaEmpleado",
		    		type: "post",
		    		data: {
		    			empleadoId:data[0]
		    		},	
		    		success : function(data){
		    			console.log(data);
		    			 //var obj = JSON.parse(data);
		    			 $("#add-contact").modal("show");
		    			 
		    		}
		    	});*/
		   	 
		   	    /*var id = data[0]; //Id
		   	 	var nombre = data[2]; // nombre
		   	 	var material = data[3]; // nombre
		   	 	$(".modal-body #recipient-numId").val( id );
		      	$(".modal-body #recipient-descuento").val( data[14] );
		      	$(".modal-body #recipient-precio").val( data[16] );
		      	$(".modal-body #recipient-estatus").val( data[22] );
		      	$(".modal-body #recipient-referencia").val( data[23] );*/
		      	
		     	/*$("label[for*='recipient-id']").html('<p>Id Registro: <span class="label label-primary" style="color: darkcyan;">' + 
		     	id + '</span>   <p>Cliente: <span class="label label-primary" style="color: darkcyan;">' + 
		     	nombre + '</span> <p>Material: <span class="label label-primary" style="color: darkcyan;">' + material + '</span>');*/
		    	//$("#add-contact").modal("show");
		    } );
		
		
		$("#btnAgregar").click(function() {
			$('#empleadoId').val('');
			$('#direccionId').val('');
			$('#nombre').val('');
			$('#apellidoPaterno').val('');
			$('#apellidoMaterno').val('');
			$('#fechaNacimiento').val('');
			$('#correo').val('');
			$('#telefono').val('');
			$('#puesto').val('');
			$('#sexo').val('');
			$('#calle').val('');
			$('#ciudad').val('');
			$('#colonia').val('');
			$('#estado').val('');
			$('#codigoPostal').val('');
			$('#codigoPostal').val('');
			$('#actualiza').val(0);
			
		});
		
		//Evento para guardar o actulizar el registro
		 $("#agregarNuevo").click(function() {
			 	console.log ($('#actualiza').val())
				console.log('en boton');
		    	$.ajax({
		    		url: "guardaInfo",
		    		type: "post",
		    		data: {
		    			empleadoId:$('#empleadoId').val(),
		    			direccionId:$('#direccionId').val(),
		    			nombre:$('#nombre').val(),
		    			apellidoPaterno:$('#apellidoPaterno').val(),
		    			apellidoMaterno:$('#apellidoMaterno').val(),
		    			fechaNacimiento:$('#fechaNacimiento').val(),
		    			correo:$('#correo').val(),
		    			telefono:$('#telefono').val(),
		    			puesto:$('#puesto').val(),
		    			sexo:$('#sexo').val(),
		    			calle:$('#calle').val(),
		    			ciudad:$('#ciudad').val(),
		    			colonia:$('#colonia').val(),
		    			estado:$('#estado').val(),
		    			codigoPostal:$('#codigoPostal').val(),
		    			actualiza:$('#actualiza').val()
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
			    			 }, 4000);
			    			 
			    			 $("#formListaEmpleados").submit();	

		    			 }
		    			
		    			 
		    		} 
		    	});
		    });
		
	});	

	</script>
	
    
</body></html>