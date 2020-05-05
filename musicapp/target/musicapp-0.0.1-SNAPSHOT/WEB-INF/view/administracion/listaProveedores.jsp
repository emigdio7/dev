<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<jsp:include page="../head.jsp" /> 
 
<body class="fix-header fix-sidebar card-no-border" style="">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
  <link rel="stylesheet" type="text/css" href="../css/sweetalert2.min.css">		
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
							  <strong>Se agrego proveedor de manera exitosa!</strong> 
						</div>
						
						<div class="alert alert-success" id="success-alert-del">
							  <strong>Se elimino un Proveedor de manera exitosa!</strong> 
						</div>
						<div class="alert alert-danger" id="success-danger">
							  <strong>! ! ! Hubo un error en el sistema, Contacte al de Sistemas ! ! !</strong> 
						</div>
					</div>
				</div>

				<div class="row">
                	<div class="col-12">
                		<div class="card">
                	  		<div class="card-body">
                			<div class="row">
                			<div class="col-md-9">
                			<h4 class="card-title">Data Table</h4>
                             <h6 class="card-subtitle">Data table example</h6>
                             </div>
                             <div class="col-md-3">
                            
                               <a id="target" href="#">Add Provider</a>
                            
                             </div>
				
				            </div>
                			<!-- 
                			<div class="container" style="color: blue;">
                			
                			 <div class="col-md-9" style="color: red;">
                			 <h4 class="card-title">Data Table</h4>
                             <h6 class="card-subtitle">Data table example</h6>
                			 </div>
                			
                			 <div class="col-md-3" style="color: lime;">
                			  <a href="#">ad co</a>
                			 </div>
                			     
                			
                			</div>   
                			 -->
                          
                             <div class="table-responsive m-t-40">
                                 <table id="myTable" class="table table-bordered table-striped">
                                     <thead>
                                         <tr>
                                             <th>Name</th>
                                             <th>Phone</th>
                                             <th>Adress</th>
                                              <th>City</th>
                                             <th>Email</th>
                                             <th>Category</th>
                                            
                                              <th>
                                             
                                              </th>
                                               <th>
                                             
                                              </th>
                                         </tr>
                                     </thead>
                                     <tbody>
                                       <c:forEach var="proveedores" begin="0" items="${lstProveedores}">
                                         <tr>
                                        <script>
                                         
                                         console.log(""+${proveedores.provedorId});
                                         
                                        </script>
                                        
                                             <td>${proveedores.nombre} </td>
                                             <td>${proveedores.telefono}</td>
                                             <td>${proveedores.direccion.calle}. ${proveedores.direccion.colonia} </td>
                                             <td>${proveedores.direccion.ciudad}</td>
                                             <td>${proveedores.correo} </td>
                                             <td>${proveedores.categoria} </td>
                                             <td> <button id="editar" onclick="editar(${proveedores.provedorId})" class="btn btn-primary">Edit</button></td>
                                              <td>
                                               <button id="eliminar" onclick='eliminar(${proveedores.provedorId})' class="btn btn-primary bn">Delete</button>
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
            	<hr>
            	
            	 
            	
            	
            	
            	<hr>  	
            			
            			<style>
            			
            			 .error {
            			     color: red;
            			 }	
            			 
            			 </style>
                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                
                <!-- ==========modal de registro=================  -->
                                                        <!-- Add Contact Popup Model -->        
                                <div id="myModal"  class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
                                    <div class="modal-dialog modal-xl">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                 
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true" ><i class="mdi mdi-account-check"></i></button>
                                            <h4 class="modal-title" id="myModalLabel"> Agregar Proveedor</h4> </div>
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
<%-- 										                                <form action="/empleados/listaEmpleados" name="formClientes" id="formClientes" class="form-horizontal"> --%>
										                                <form   id="agregar" class="form-horizontal" >
										                                	<!--  <input type="hidden" id="clienteId" >
										                                	<input type="hidden" id="direccionId" >
										                                	<input type="hidden" id="cadena" name="cadena">
										                                	<input type="hidden" id="actualiza" > -->
										                                	
										                                    <div class="form-body">
										                                        <h3 class="box-title">Informaci&oacute;n Personal</h3>
										                                        <hr class="m-t-0 m-b-40">
										                                        
										                                        <div class="row">
										                                            <div class="col-md-12">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-center col-md-2">Nombre(s)</label>
										                                                    <div class="col-md-10">
										                                                        <input type="text" class="form-control" id="nombre" name="nombre" placeholder=""  required >
										                                                        <small class="form-control-feedback">Nombre del Cliente o Razon Social </small> </div>
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                            <!--/span-->
										                                        </div>
										                                     
										                                     <!--     
										                                       
										                                        <div class="row">
										                                            <div class="col-md-12">
										                                               <div class="form-group row">
										                                                    <label class="control-label text-center col-md-2">Apellidos</label>
										                                                    <div class="col-md-10">
										                                                        <input type="text" class="form-control" id="apellidos" placeholder="">
										                                                        <small class="form-control-feedback"> Apellidos o Descripcion del Grupo. </small> </div>
										                                                </div>
										                                            </div>
										                                           
										                                        </div>
										                                       --> 
										                                        <div class="row">
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Correo</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text"  pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" class="form-control"id="correo" name="correo"  placeholder=""  required >
										                                                        <small class="form-control-feedback">Correo Valido </small> </div>
										                                                </div>
										                                            </div>
										                                            
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Telefono</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text" class="form-control" id="telefono"  name="telefono"  placeholder="(777) 7777777"  required >
										                                                        <small class="form-control-feedback"> Telefono de contacto </small> </div>
										                                                </div>
										                                            </div>
										                                        </div>
										                                        										                                        
										                                        
										                                        <h3 class="box-title">Direcci&oacute;n</h3>
										                                        <hr class="m-t-0 m-b-40">
										                                        <!--/row-->
										                                        <div class="row">
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Calle</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text" id="calle" name="calle" class="form-control"  required >
										                                                    </div>
										                                                </div>
										                                            </div>
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Colonia</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text" id="colonia" name="colonia" class="form-control"   required>
										                                                    </div>
										                                                </div>
										                                            </div>
										                                        </div>
										                                        <div class="row">
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Ciudad</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text" id="ciudad" name="ciudad" class="form-control"  required >
										                                                    </div>
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Estado</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text" id="estado"  name="estado" class="form-control"  required >
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
										                                                        <input type="text" id="cp" name="cp"  class="form-control" minlength="5" maxlength="11"  required >
										                                                    </div>
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                                                                     <!--/span-->
										                                        </div>
										                                        
										                                         <div class="row">
										                                            <div class="col-md-6">
															<div class="form-group">
										<label for="exampleInputPassword1">Categoria</label> <input required
										 name="categoria"	type="text" class="form-control"
											id="categoria" placeholder="audio,soporte,moviliario etc.">
									</div></div></div>
										                                        
                                                                   <div class="row">
										                                            <div class="col-md-6">
															<div class="form-group">
																<label for="exampleFormControlTextarea1">Observaciones</label>
																<textarea class="form-control" name="observaciones"
																	id="observaciones" rows="3"></textarea>
															</div>
															</div></div>
															
															





															<!--/row-->
										                                    </div>
										                                    <hr>
										                                </form>
										                            </div>
										                        </div>
										                    </div>
										                </div>
														
													</div>
													
                                                </from>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success waves-effect" id="agregarNuevo" >Guardar</button>
                                                <button type="button" class="btn btn-inverse waves-effect" data-dismiss="modal">Cancelar</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>

				<!-- ==========FIN modal de registro=================  -->
				 <!-- ==========modal de editar=================  -->

                   
                                                  <!-- Add Contact Popup Model -->        
                                <div id="myModalEdit"  class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
                                    <div class="modal-dialog modal-xl">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                 
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true" ><i class="mdi mdi-account-check"></i></button>
                                            <h4 class="modal-title" id="myModalLabel"> editar Proveedor</h4> </div>
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
<%-- 										                                <form action="/empleados/listaEmpleados" name="formClientes" id="formClientes" class="form-horizontal"> --%>
										                                <form  id="editarRegistro" class="form-horizontal" >
										                                	<!--  <input type="hidden" id="clienteId" >
										                                	<input type="hidden" id="direccionId" >
										                                	<input type="hidden" id="cadena" name="cadena">
										                                	<input type="hidden" id="actualiza" > -->
										                                	
										                                	<input type="hidden" id="provedorId"  name="provedorId" class="provedorId" >
										                                	<input type="hidden" id="direccionId" name="direccionId" class="direccionId" >
										                                	
										                                    <div class="form-body">
										                                        <h3 class="box-title">Informaci&oacute;n Personal</h3>
										                                        <hr class="m-t-0 m-b-40">
										                                        
										                                        <div class="row">
										                                            <div class="col-md-12">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-center col-md-2">Nombre(s)</label>
										                                                    <div class="col-md-10">
										                                                        <input type="text"  class="form-control nombre" id="nombre" name="nombre"  required >
										                                                        <small class="form-control-feedback">Nombre del Cliente o Razon Social </small> </div>
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                            <!--/span-->
										                                        </div>
										                                           <!-- aqui van los otros input -->
										                                           

 <div class="row">
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Correo</label>
										                                                    <div class="col-md-9">
										                                                        <input type="email"  pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" class="form-control correo" id="correo" name="correo"  placeholder=""  required >
										                                                        <small class="form-control-feedback">Correo Valido </small> </div>
										                                                </div>
										                                            </div>
										                                            
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Telefono</label>
										                                                    <div class="col-md-9">
										                                                        <input type="number" class="form-control telefono" id="telefono"  name="telefono"  placeholder="(777) 7777777"  required >
										                                                        <small class="form-control-feedback"> Telefono de contacto </small> </div>
										                                                </div>
										                                            </div>
										                                        </div>
										                                        										                                        
										                                        
										                                        <h3 class="box-title">Direcci&oacute;n</h3>
										                                        <hr class="m-t-0 m-b-40">
										                                        <!--/row-->
										                                        <div class="row">
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Calle</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text" id="calle" name="calle" class="form-control calle"  required >
										                                                    </div>
										                                                </div>
										                                            </div>
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Colonia</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text" id="colonia" name="colonia" class="form-control colonia"   required>
										                                                    </div>
										                                                </div>
										                                            </div>
										                                        </div>
										                                        <div class="row">
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Ciudad</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text" id="ciudad" name="ciudad" class="form-control ciudad"  required >
										                                                    </div>
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                            <div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Estado</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text" id="estado"  name="estado" class="form-control estado"  required >
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
										                                                        <input type="text" id="cp" name="cp"  class="form-control cp" minlength="5" maxlength="11"  required >
										                                                    </div>
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                                                                     <!--/span-->
										                                        </div>
										                                        
										                                         <div class="row">
										                                            <div class="col-md-6">
															<div class="form-group">
										<label for="exampleInputPassword1">Categoria</label> <input required
										 name="categoria"	type="text" class="form-control categoria"
											id="categoria" placeholder="audio,soporte,moviliario etc.">
									</div></div></div>
									<!-- 
									<select class="form-control form-control-sm">
  <option>Small select</option>
</select>
									 -->
										                                        
                                                                   <div class="row">
										                                            <div class="col-md-6">
															<div class="form-group">
																<label for="exampleFormControlTextarea1">Observaciones</label>
																<textarea class="form-control observaciones" name="observaciones"
																	id="observaciones" rows="3"></textarea>
															</div>
															</div></div>
										                                           
										                                           
										                                           
										                                           
										                                    </div>
										                                    <hr>
										                                </form>
										                            </div>
										                        </div>
										                    </div>
										                </div>
														
													</div>
													
                                                </from>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-success waves-effect" id="editarProveedor" >Editar</button>
                                                <button type="button" class="btn btn-inverse waves-effect" data-dismiss="modal">Cancelar</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>
                   
                   
                   

                      
				<!-- ==========FIN modal de editar=================  -->
				<!-- ==========aler=================  -->

		



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
 	<script src="../assets/plugins/jquery/jquery.validate.min.js"></script>
 	 <script src="../assets/plugins/sweetalert/sweetalert.min.js"></script>
 
 	<!-- <script src="../assets/plugins/sweetalert/jquery.sweet-alert.custom.js"></script>  -->
 	
 	<!-- <script type="text/javascript" src="http://jzaefferer.github.com/jquery-validation/jquery.validate.js"></script> -->
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
    
    
    
    	<!-- end - This is for export functionality only -->
	<script>


	$(document).ready(function() {
		 $('#success-alert').hide();
			$('#success-alert-del').hide();
			$('#success-danger').hide();
	    console.log( "ready!"+ $.fn.jquery);

//ocultamos las alertas




	    $( "#target" ).click(function() {
	    	 $('#myModal').modal('show');
	    });

	    $( "#editar" ).click(function() {
	    	 $('#myModal2').modal('show');  
	    });


	    function validarFormulario(){
		    
	    	   jQuery.validator.messages.required = 'Este campo es obligatorio.';
	    	   jQuery.validator.messages.number = 'Este campo debe ser num&eacute;rico.';
	    	   jQuery.validator.messages.email = 'La direcci&oacute;n de correo es incorrecta.';
	    	   jQuery.validator.messages.minlength = 'debe ingresar almenos 5 numeros';   

		    	  
	    	   
	    	   var valido = false;
	    	   valido = $("#agregar").valid();
	    	  console.log(valido);
	    	  return valido;
	    	 }
	    
	      

	    $( "#agregarNuevo" ).click(function() {

	    	
		        if( validarFormulario()){
                       console.log("formlario limpio");
              
           	    	event.preventDefault();


           	    	var info = {};
           	    	$("#agregar").find(":input").each(function() {
           	    	    
           	    	    info[this.name] = $(this).val();
             
           	    	});
           	    	var obj = JSON.stringify(info);
           	    	//alert("obj---->"+obj);
           	    	//console.log("----->si entro");
           	    	$.ajax({
           	    		
           	    		url: "guardar",
           	    		type: "post",
           	    		data: {
           	    			obj
           	    		},	
           	    		success : function(data){
           	    			 $('#myModal').modal('hide');
           	    			console.log("----->"+data);

           	    			//$('#add-contact').modal('toggle'); 
           	    			 if ("success" == data) {
           	    				// location.reload();
           	    					console.log("----->entro");
           	    					//alert("usuario agregado con exito");
           	    				   
           	    				    
           		    			 $("#success-alert").show();//codigo para mostar un alert si es success
           		    			 window.setTimeout(function () {
           		    			     $("#success-alert").slideUp(500, function () {
           		    			          $("#success-alert").hide();
           		    			          location.reload();
           		    			      });
           		    			 }, 4000);
           		    			 
           		    				

           	    			 }else{

           	    				 $("#alert-danger").show();
           		    			 window.setTimeout(function () {
           		    			     $("#alert-danger").slideUp(500, function () {
           		    			          $("#alert-danger").hide();
           		    			          location.reload();
           		    			      });
           		    			 }, 4000);
           		    			 
           		    			
               	    			 
               	    			 }
           	    			 
           	    		} 
           	    	});//FIN AJAX
                       
			        }//fin del if de la vlidacion
		        else{
			        	  console.log("formlario sucio");
				        }
		        
		
	    	

	    });
	    //fin de agregarNuevo
	    
	    
	     $( "#editarProveedor" ).click(function() {


	    	  jQuery.validator.messages.required = 'Este campo es obligatorio.';
		  	   jQuery.validator.messages.number = 'Este campo debe ser num&eacute;rico.';
		  	   jQuery.validator.messages.email = 'La direcci&oacute;n de correo es incorrecta.';
		  	   jQuery.validator.messages.minlength = 'debe ingresar almenos 5 numeros';	 
	    	
		        if( $("#editarRegistro").valid()){
                    console.log("formlario limpio");
           
        	    	event.preventDefault();


        	    	var info = {};
        	    	$("#editarRegistro").find(":input").each(function() {
        	    	    
        	    	    info[this.name] = $(this).val();
          
        	    	});
        	    	var obj = JSON.stringify(info);
        	    	alert("obj---->"+obj);
        	    	//console.log("----->si entro");
        	    	$.ajax({
        	    		
        	    		url: "guardar",
        	    		type: "post",
        	    		data: {
        	    			obj
        	    		},
        	    		success : function(data){
        	    			 $('#myModalEdit').modal('hide');
        	    			console.log("----->"+data);

        	    			//$('#add-contact').modal('toggle'); 
        	    			 if ("success" == data) {
        	    				// location.reload();
        	    					console.log("----->entro");
        	    					//alert("usuario agregado con exito");
        	    				   
        	    				    
        		    			 $("#success-alert").show();//codigo para mostar un alert si es success
        		    			 window.setTimeout(function () {
        		    			     $("#success-alert").slideUp(500, function () {
        		    			          $("#success-alert").hide();
        		    			         location.reload();
        		    			      });
        		    			 }, 4000);
        		    			 
        		    				

        	    			 }else{

        	    				 $("#alert-danger").show();
        		    			 window.setTimeout(function () {
        		    			     $("#alert-danger").slideUp(500, function () {
        		    			          $("#alert-danger").hide();
        		    			          location.reload();
        		    			      });
        		    			 }, 4000);
        		    			 
        		    			
            	    			 
            	    			 }
        	    			 
        	    		} 
        	    	});//FIN AJAX
                    
			        }//fin del if de la vlidacion
		        else{
			        	  console.log("formlario sucio");
				        }
		        
		
	    	

	    });

	    


	    //function eliminar(){
		//    console.log(document.getElementById("Id"));
		  //  }
		    
	});


	 function validarFormulario2(){
  	   
  
  	   var valido = false;
  	   valido = $("#editar").valid();
  	  console.log(valido);
  	  return valido;
  	 }

	 
	 function editar(id){
		// alert('id: ' + id);
		  
		 $('#myModalEdit').modal('show');
		

		 $.ajax({
	    		
	    		url: "editarProvedor",
	    		type: "post",
	    		data: {
	    			id
	    		},	
	    		success : function(data){
	    			
	    			console.log("----->"+data);

	    			//$('#add-contact').modal('toggle'); 
	    			 if ( data != null) {
	    				
	    					console.log("----->entro we");
	    					console.log("ID  -----> " + data.provedorId);
	    					//return data;
	    					 $(".provedorId").val(data.provedorId);
                               $(".nombre").val(data.nombre);
                             $(".correo").val(data.correo);
                             $(".telefono").val(data.telefono);
                             $(".categoria").val(data.categoria);
                             $(".observaciones").val(data.observaciones);
                             $(".direccionId").val(data.direccionId);
                             $(".calle").val(data.calle);
                             $(".colonia").val(data.colonia);
                             $(".ciudad").val(data.ciudad);
                             $(".estado").val(data.estado);
                             $(".cp").val(data.cp);
	    				    
   		    			
	    			 }else{

	    				 $("#alert-danger").show();
		    			 window.setTimeout(function () {
		    			     $("#alert-danger").slideUp(500, function () {
		    			          $("#alert-danger").hide();
		    			          location.reload();
		    			      });
		    			 }, 4000);

		    			 return null;
	    			 }	 
	    		}
	    	});//FIN AJAX
               
 		 }

	   
		 

	function eliminar(id) {
		//alert('id: ' + id);	
		
			$.ajax({
	    		
	    		url: "eliminarProvedor",
	    		type: "post",
	    		data: {
	    			id
	    		},	
	    		success : function(data){
	    			
	    			console.log("----->"+data);

	    			//$('#add-contact').modal('toggle'); 
	    			 if ("success" == data) {
	    				
	    					console.log("----->entro");

	    				    
      		    			 $("#success-alert-del").show();//codigo para mostar un alert si es success
      		    			 window.setTimeout(function () {
      		    			     $("#success-alert-del").slideUp(500, function () {
      		    			          $("#success-alert-del").hide();
      		    			          location.reload();
      		    			      });
      		    			 }, 4000);
	    				//alert("provedor eliminado con exito");
	    				
	    				  /*
	    				   	 window.setTimeout(function () {
	    				   		 swal({
                                     title: "Cliente eliminado!",
                                     text:  "Se elimino el cliente de manera exitosa.",
                                      icon:  "success",
                                });
	                                
	    				   		 location.reload();
	    				   		 
		    			 }, 2000);  */
	    				   
	    				  //  location.reload(); //recargar la pagina   
	    				   
	    			 }else{

	    				 $("#alert-danger").show();
		    			 window.setTimeout(function () {
		    			     $("#alert-danger").slideUp(500, function () {
		    			          $("#alert-danger").hide();
		    			          location.reload();
		    			      });
		    			 }, 4000);
   	    			 
   	    			 }	 
	    		}
	    	});//FIN AJAX
                  
		
	}
	
		$(function() {
			$('#myTable').DataTable();
		});
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