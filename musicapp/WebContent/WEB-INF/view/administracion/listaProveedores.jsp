<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<jsp:include page="../head.jsp" /> 
 
<body class="fix-header fix-sidebar card-no-border" style="">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    
  
    
<!--  <link rel="stylesheet" type="text/css" href="../css/sweetalert2.min.css">	-->
 <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script> 
   	
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
                			<div class="row">
                			<div class="col-md-9">
                			<h4 class="card-title">Data Table</h4>
                             <h6 class="card-subtitle">Data table example</h6>
                             </div>
                             <div class="col-md-3">
                            
                                                          <!--  -->
                                <button type="button" class="btn btn-info btn-rounded m-t-10 float-right" id="target" data-toggle="modal"  data-target="#add-contact" >Agregar Nuevo Proveedor</button>
                            
                             </div>
				
				            </div>
                		
                          
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
                                               <th>Accion</th>
                                         </tr>
                                     </thead>
                                     <tbody>
                                    
                                       <c:forEach var="proveedores" begin="0" items="${lstProveedores}">
                                         <tr>
                                    
                                             <td>${proveedores.nombre} </td>
                                             <td>${proveedores.telefono}</td>
                                             <td>${proveedores.direccion.calle}. ${proveedores.direccion.colonia} </td>
                                             <td>${proveedores.direccion.ciudad}</td>
                                             <td>${proveedores.correo} </td>
                                             
                                             <td><span class="label label-inverse">${proveedores.categoria}</span> </td>
                                         
                                              <td style="white-space:nowrap;" align="left">
						                            
						                            <button type="button" id="editar" onclick="editar(${proveedores.provedorId},'${ proveedores.categoria}')" title="Editar Proveedor" class="btn btn-outline-info btn-sm" >
						                            	<i class="fa fa-edit"></i>
						                            </button>
						                            <button type="button" id="eliminar" onclick='eliminar(${proveedores.provedorId})' title="Eliminar Proveedor" class="btn btn-outline-info btn-sm">
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
                                            <h4 class="modal-title" id="myModalLabel"> Datos del Proveedor</h4> </div>
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
										                                	<  <input type="hidden" name="provedorId" id="provedorId" >
										                                	<input type="hidden" name="direccionId" id="direccionId" >
										                                	<!-- <input type="hidden" id="cadena" name="cadena">
										                                	<input type="hidden" id="actualiza" >  -->
										                                	
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
										                                           <!--<div class="col-md-6">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-right col-md-3">Correo</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text"  pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" class="form-control"id="correo" name="correo"  placeholder=""  required >
										                                                        <small class="form-control-feedback">Correo Valido </small> </div>
										                                                </div>  
										                                            </div> --> 
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
										                                                        <input type="number" class="form-control" id="telefono"  name="telefono"  placeholder="(777) 7777777"  required >
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
										                                                        <input type="number" id="cp" name="cp"  class="form-control" minlength="4" maxlength="9"  required >
										                                                    </div>
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                                                                     <!--/span-->
										                                        </div>

															<div class="row">
																<div class="col-md-6">
																	<div class="form-group">
																		<label for="exampleInputPassword1">Categoria</label>
																		 <select data-rule-selecs="true"
																			class="form-control" id="categoria" required
																			name="categoria" placeholder="seleccione una opcion">
																			<option value="-1">* Seleccione una Opcion</option>
																			<c:forEach var="categoria" begin="0" items="${categorias}">
																			<c:if test="${categoria.activo == '1' }">
																			          <option>${categoria.descripcion}</option>
																		    </c:if>
																			</c:forEach>
																
																		</select>

																	</div>
																</div>
															</div>

															<div class="row">
																<div class="col-md-6">
																	<div class="form-group">
																		<label for="exampleFormControlTextarea1">Observaciones</label>
																		<textarea class="form-control" name="observaciones"
																			id="observaciones" rows="3"></textarea>
																	</div>
																</div>
															</div>


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
                                                <button type="button" class="btn btn-success waves-effect" id="agregarNuevo"></button>
                                                <button type="button" class="btn btn-inverse waves-effect" data-dismiss="modal">Cancelar</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>

				<!-- ==========FIN modal de registro=================  -->
	
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
 	<!-- <script src="../assets/plugins/sweetalert/sweetalert.min.js"></script>
         <script src="../js/sweetalert2.min.js"></script> -->
 
 	<!-- <script src="../assets/plugins/sweetalert/jquery.sweet-alert.custom.js"></script>  -->
 	
 	<!-- <script type="text/javascript" src="http://jzaefferer.github.com/jquery-validation/jquery.validate.js"></script> -->
    <!-- Bootstrap tether Core JavaScript
    <script src="../assets/plugins/popper/popper.min.js"></script>  -->
     <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>   
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="../js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="../js/waves.js"></script>
    <!--Menu sidebar  -->
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
	
	    console.log( "ready!"+ $.fn.jquery);
	    
	   $("#agregarNuevo").text("Agregar Proveedor");

	    $( "#target" ).click(function() {
	    	
	    	 $('#myModal').modal('show');
	    });

	    $( "#editar" ).click(function() {
	    	 $('#myModal2').modal('show');  
	    });

	    
	    $( "#agregarNuevo" ).click(function() {
	    //	

	    	  jQuery.validator.messages.required = '* Este campo es obligatorio.';
		  	   jQuery.validator.messages.number = '* Este campo debe ser num&eacute;rico.';
		  	   jQuery.validator.messages.email = '* La direcci&oacute;n de correo es incorrecta.';
		  	   jQuery.validator.messages.minlength = '* debe ingresar almenos 5 numeros';	 
		  	    $.validator.addMethod("selecs", function(value, element) {
				    return value != -1;
				}, "");
		  	   
	    	
		        if( $("#agregar").valid()){
                       console.log("formlario limpio");
                       event.preventDefault();
                      
           	    	var info = {};
           	    	$("#agregar").find(":input").each(function() {
           	    	    
           	    	    info[this.name] = $(this).val();
           	    	});
           	    	
           	    	if( $("#provedorId").val()=="" &&  $("#direccionId").val()==""){
           	    		alert("vacios");
           	    		delete info.provedorId;
           	    		delete info.direccionId;
           	    	}
           	    	var obj = JSON.stringify(info);
           	    	alert(obj);
                	
           	    	$.ajax({
           	    		
           	    		url: "guardarProvedor",
           	    		type: "post",
           	    		data: {
           	    			obj
           	    		},	
           	    		success : function(data){
           	    			 $('#myModal').modal('hide');
           	    			console.log("----->"+data);

           	    			//$('#add-contact').modal('toggle'); 
           	    			 if ("success" == data) {
           	    					console.log("----->entro");
           	    				 Swal.fire({
       	    					  title: 'Operacion realizada con exito!',
       	    					  text: "se ha agregado/Actualizado un proveedor a la lista!",
       	    					  icon: 'success',
       	    					  showCancelButton: false,
       	    					  confirmButtonColor: '#3085d6',
       	    					  confirmButtonText: 'OK!'
       	    					}).then((result) => {
       	    					  if (result.value) {
       	    						  location.reload(); 
       	    					  }
       	    					})
           		    				

           	    			 }else{

           	    				Swal.fire({
           	    				  icon: 'error',
           	    				  title: 'Oops...',
           	    				  text: 'No se puedo agregar/actualizar al provedor a la lista!'
           	    				})
           		    			
               	    			 
               	    			 }
           	    			 
           	    		} 
           	    	});//FIN AJAX
                       
			        }//fin del if de la validacion
		        else{
			        	  console.log("formlario sucio");
				        }
		        
		
	    	

	    });
	    //fin de agregarNuevo
	    
	    
	     $( "#editarProveedor" ).click(function() {

 	    	//event.preventDefault();
               jQuery.validator.messages.required = '* Este campo es obligatorio.';
		  	   jQuery.validator.messages.number = '* Este campo debe ser num&eacute;rico.';
		  	   jQuery.validator.messages.email = '* La direcci&oacute;n de correo es incorrecta.';
		  	   jQuery.validator.messages.minlength = '* debe ingresar almenos 5 numeros';	 
		  	    $.validator.addMethod("selecs", function(value) {
				    return value != -1;
				}, "");
			  
		        if( $("#editarRegistro").valid()){
                    console.log("formlario limpio");
                    
                   	    	var info = {};
        	    	$("#editarRegistro").find(":input").each(function() {
        	    	    
        	    	    info[this.name] = $(this).val();
          
        	    	});
        	    	var obj = JSON.stringify(info);
        	 
        	    	$.ajax({
        	    		
        	    		url: "guardarProvedor",
        	    		type: "post",
        	    		data: {
        	    			obj
        	    		},
        	    		success : function(data){
        	    			 $('#myModalEdit').modal('hide');
        	    			console.log("----->"+data);
        	    			//$('#add-contact').modal('toggle'); 
        	    			 if ("success" == data) {
        	    					console.log("----->entro");
        	    					 Swal.fire({
              	    					  title: 'Operacion realizada con exito!',
              	    					  text: "se ha actualizado un proveedor de la lista!",
              	    					  icon: 'success',
              	    					  showCancelButton: false,
              	    					  confirmButtonColor: '#3085d6',
              	    					  confirmButtonText: 'OK!'
              	    					}).then((result) => {
              	    					  if (result.value) {
              	    						  location.reload(); 
              	    					  }
              	    					})
                  		    				
        	    			 }else{
        	    				 Swal.fire({
              	    				  icon: 'error',
              	    				  title: 'Oops...',
              	    				  text: 'No se puedo actualizar al provedor a la lista!'
              	    				})
            
            	    			 }
        	    			 
        	    		} 
        	    	});//FIN AJAX
                    
			        }//fin del if de la vlidacion
			        else{
			        	  console.log("formlario sucio");
				        }
		        
		
	    	

	    });

		    
	});//fin de ready


	 function validarFormulario2(){
  	   
  
  	   var valido = false;
  	   valido = $("#editar").valid();
  	  console.log(valido);
  	  return valido;
  	 }

	 
	 function editar(id, categoria){//para mostrar
		  $("#agregarNuevo").text("Editar Proveedor");
		 $('#myModal').modal('show');
		 
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
	    					 $("#provedorId").val(data.provedorId);
                               $("#nombre").val(data.nombre);
                             $("#correo").val(data.correo);
                             $("#telefono").val(data.telefono);
                             $("#observaciones").val(data.observaciones);
                             $("#direccionId").val(data.direccionId);
                             $("#calle").val(data.calle);
                             $("#colonia").val(data.colonia);
                             $("#ciudad").val(data.ciudad);
                             $("#estado").val(data.estado);
                             $("#cp").val(data.cp);
                             $('[name=categoria]').val( data.categoria );
	    				    
   		    			
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
	       const swalWithBootstrapButtons = Swal.mixin({
	        	  customClass: {
	        	    confirmButton: 'btn btn-success',
	        	    cancelButton: 'btn btn-danger'
	        	  },
	        	  buttonsStyling: false
	        	})

	        	swalWithBootstrapButtons.fire({
	        	  title: 'Eliminar?',
	        	  text: "Deseas eliminar este proveedor de la base de datos?",
	        	  icon: 'warning',
	        	  showCancelButton: true,
	        	  confirmButtonText: 'Si, Eliminar Ahora!',
	        	  cancelButtonText: 'No, cancelar!',
	        	  reverseButtons: true
	        	}).then((result) => {
	        	  if (result.value) {
	        		  
	        			$.ajax({
	        	    		url: "eliminarProvedor",
	        	    		type: "post",
	        	    		data: {
	        	    			id
	        	    		},	
	        	    		success : function(data){
	        	    			console.log("----->"+data);
	        	    			 if ("success" == data) {
	        	    				 
	        	    				 Swal.fire({
	        	    					  title: 'ELiminado!',
	        	    					  text: "se ha eliminado un proveedor de la lista!",
	        	    					  icon: 'success',
	        	    					  showCancelButton: false,
	        	    					  confirmButtonColor: '#3085d6',
	        	    					  confirmButtonText: 'OK!'
	        	    					}).then((result) => {
	        	    					  if (result.value) {
	        	    						  
	        	    						  location.reload(); //refrescamos la pagina para que se refresque la tabla
	        	    					  }
	        	    					})
	        	    				
	        	    			 }else{
	        	    				 Swal.fire({
	                  	    				  icon: 'error',
	                  	    				  title: 'Oops...',
	                  	    				  text: 'No se puedo eliminar al provedor a la lista!'
	        	    				 })	     //
	           	    			 }	 
	        	    		}
	        	    	});//FIN AJAX
	        	  } 
	        	})		
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