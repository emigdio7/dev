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

 <!-- CSS Section -->
<style>
            			
            			 .error {
            			     color: red;
            			 }	
            			 
            			 </style>

</head>



<jsp:include page="../head.jsp" /> 

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
                    <div class="col-lg-12">
                        <div class="card card-outline-info">
                            <div class="card-header">
                                <h4 class="m-b-0 text-white">Edicion y Consulta de Catalogos de los Generos Gruperos</h4>
                            </div>
                            <div class="card-body"><!-- action="/guardaEvento" -->
                                <form id="agregar" class="form-horizontal">
                             	 <input type="hidden" id="generoGruperoId" name="generoGruperoId">
                             	
                                
                                    <div class="form-body">
<!--                                         <h3 class="box-title">Person Info</h3> -->
                                        <hr class="m-t-0 m-b-40">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3">Genero</label>
                                                    <div class="col-md-9">
<!--                                                         <input type="text" class="form-control" placeholder="John doe"> -->
                                                        <input type="text" class="form-control" name="genero" id="genero" placeholder="genero del evento"  required>
                                                        <small class="form-control-feedback"> genero del evento </small> </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3">Estatus</label>
                                                    <div class="col-md-9">
                                                        <select class="form-control"  id="activo"  name="activo" data-rule-selecs="true" required>
															<option value="-1">Seleccione</option> 		
															<option value="1">Activo</option>
															<option value="0">Inactivo</option>
														</select>	
                                                        <small class="form-control-feedback"> Seleccione el estatus </small> </div>
                                                </div>
                                            </div>
                                             <div class="col-md-4">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3">Etiqueta</label>
                                                    <div class="col-md-9">
                                                        <select class="form-control" data-rule-selecs="true" id="classLabel" name="classLabel" required placeholder="seleccione una opcion">
															<option value="-1">Seleccione</option> 		
															<option value="label-danger">label-danger</option>
															<option value="label-info">label-info</option>
															<option value="label-success">label-success</option>
															<option value="label-inverse">label-inverse</option>
															<option value="label-warning">label-warning</option>
															<option value="label-primary">label-primary</option>
														</select>	
                                                        <small class="form-control-feedback"> <span id="spanId" class="label">Seleccione el Color de Etiqueta</span> </small> </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/row-->
                                        
                                    </div>
<!--                                     <hr> -->
                                    <div class="form-actions" align="center">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="row">
                                                    <div class="col-md-offset-1 col-md-12">
                                                        <button type="button" id="agregarNuevo"  class="btn btn-success">Guardar</button>
                                                        <button type="button" class="btn btn-inverse">Cancelar</button>
                                                    </div>
                                                </div>
                                            </div>
<!--                                             <div class="col-md-1"> </div> -->
                                        </div>
                                    </div>
                                    
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                
				<div class="row">
				 	
                	<div class="col-12">
                		<div class="card">
                			<div class="card-body">
<!--                              <h4 class="card-title">Lista de empleados</h4> -->
<!--                              <h6 class="card-subtitle">Lista empleados para consultar llamadas </h6> -->
                             <div class="table-responsive m-t-40">
                             
                                 <table id="myTable" class="table table-bordered table-striped">
                                     <thead>
                                         <tr>
                                         	 <th>Id</th>
                                             <th>Genero</th>
                                             <th>Activo</th>
                                             <th>Accion</th>
                                         </tr>
                                     </thead>
                                     <tbody>
						  	              <c:forEach var="catGeneroGrupo"  begin="0"  items="${catGeneroGrupos}">	
											<tr>
												<td>${catGeneroGrupo.generoGrupoId}</td>
												<td><span class="label ${catGeneroGrupo.classLabel}">${catGeneroGrupo.genero}</span></td>
												
												<c:if test="${catGeneroGrupo.activo == '1' }">
										    		<td><span class="label label-success">ACTIVO</span> </td>
												</c:if>
												<c:if test="${catGeneroGrupo.activo == '0'}">
										    		<td><span class="label label-danger">INACTIVO</span> </td>
												</c:if>
												
												<td style="white-space:nowrap;" align="left">
						                            
						                            <button type="button" onclick="edita(${catGeneroGrupo.generoGrupoId},'${catGeneroGrupo.genero}',${catGeneroGrupo.activo},'${catGeneroGrupo.classLabel}')" title="Editar Evento" class="btn btn-outline-info btn-sm" >
						                            	<i class="fa fa-edit"></i>
						                            </button>
						                            <button type="button" onclick="elimina(${catGeneroGrupo.generoGrupoId})" title="Eliminar Evento" class="btn btn-outline-info btn-sm">
						                            	<i class="fa fa-trash"></i>
						                            </button>
						                                                        
						                       </td>
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
 	<script src="../assets/plugins/jquery/jquery.validate.min.js"></script>
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
   
    <script src="../assets/plugins/sweetalert/sweetalert.min.js"></script>
    
          	<!-- end - This is for export functionality only -->
	<script>
	
	$(document).ready(function() {

// 		$('#example23').DataTable({
//			dom : 'Bfrtip',
//			buttons : [ 'copy', 'csv', 'excel', 'pdf', 'print' ]
//		});
		
		var selectedScheme = 'label';
		
		var tabla = $('#myTable').DataTable();
		
		$('#classLabel').change(function(){
			
			//$("#s").removeClass("glyphicon glyphicon-remove form-control-feedback").addClass("glyphicon glyphicon-ok form-control-feedback");
			console.log($(this).val());
		    $('#spanId').removeClass(selectedScheme).addClass('label ' + $(this).val());
		    selectedScheme = $(this).val();
		});
		
	});	
		
	</script>
	
	<script type="text/javascript">
	
	//Evento para guardar o actulizar el registro
	 $("#agregarNuevo").click(function() {
		  event.preventDefault();
		  
		  jQuery.validator.messages.required = '* Este campo es obligatorio.';
		  
		  $.validator.addMethod("selecs", function(value, element) {
			    var valor = element;
			    return value != -1;
			}, "* Seleccione una opcion.");
		
	        if( $("#agregar").valid()){
		  
		  
	    	$.ajax({
	    		url: "guardaGeneroGrupo",
	    		type: "post",
	    		data: {
	    			generoGruperoId:$('#generoGruperoId').val(),
	    			genero:$('#genero').val(),
	    	        activo:$('#activo').val(),
	    	        classLabel:$('#classLabel').val()
	    		},	
	    		success : function(data){
	    			console.log("data--->"+data);

	    			
	    			 if ("ok" == data) {

	    				 Swal.fire({
	    					 position: 'center',
  	    					  type: 'success',
  	    					 title: "Operacion realizada con exito se Agrego/Actualizo un Genero Musical!",
  	    					  showCancelButton: false,
  	    					  confirmButtonColor: '#3085d6',
  	    					  confirmButtonText: 'OK!'
  	    					}).then((result) => {
  	    					  if (result.value) {
  	    						  location.reload(); 
  	    					  }
  	    					})
	    			  
		    		

	    			 }else{
	    				 console.log("ha ocurrido un erro al agregar el categoria");
	    			 }
	    			 
	    		} 
	    	});
	    	
	        }//fin del iF de Validacion
	        else{
	        	 Swal.fire({ position: 'center', type: 'error', title: 'Complete todos los campos',showConfirmButton: false,timer: 1500});
	        }
	    	 	
	    	
	    });
	
	
	




function edita(generoGruperoId, genero, activo, classLabel) {

	
	$('#generoGruperoId').val(generoGruperoId);
	$('#genero').val(genero);
	$('[name=classLabel]').val( classLabel );
	$('[name=activo]').val( activo );
	$('#descripcion').focus();

	
	
}

function elimina(generoGruperoId) {
	
	 Swal.fire({
		  title: '¿Estas seguro de eliminar este genero musical?',
		  text: "ya no existira en lista de generos!",
		  type: 'warning',
		  showCancelButton: true,
		  confirmButtonText: 'Si, Eliminar Genero!',
		  cancelButtonText: 'No, cancelar!'
		}).then((result) => {
		  if (result.value) {
			  console.log(result.value);
			  
			 	$.ajax({
					url: "eliminarGeneroMusical",
					type: "post",
					data: {
						generoGruperoId:generoGruperoId
					},	
					success : function(data){
						console.log("data--->"+data);

						
						 if ("ok" == data) {
			    			  
			    				 Swal.fire({
			    					 position: 'center',
	       	    					  type: 'success',
	       	    					 title: "se ha eliminado la un genero musical!",
	       	    					  showCancelButton: false,
	       	    					  confirmButtonColor: '#3085d6',
	       	    					  confirmButtonText: 'OK!'
	       	    					}).then((result) => {
	       	    					  if (result.value) {
	       	    						  location.reload(); 
	       	    					  }
	       	    					})
			    			  
			    			  
			    			  
			    			  
			    		

						 }else{
							
							 Swal.fire({ position: 'center', type: 'error', title: 'ha ocrrudo un error eliminar el genero musical',showConfirmButton: false,timer: 1500});
						 }
						 
					} 
				});// fin ajax
			  
			  
			
			    
	 	
		  }else{
			  
			 console.log("no se eliminara");
			  
		  }
		});


	

	
	
	
}

</script>

    
</body></html>