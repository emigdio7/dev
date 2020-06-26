<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
                <style>
            			
            			 .error {
            			     color: red;
            			 }	
            			 
            			 </style>

               <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <!-- .row -->
                <div class="row">
                    <div class="col-sm-12 col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Filtrar Articulos</h4>
                                <div class="form-group">
<!--                                     <label>Introduce el nombre del cliente <small class="text-muted">Buscar Cliente </small></label> -->
                                    <input type="text" id="Buscar" class="form-control date-inputmask" placeholder="Buscar" im-insert="true">
                                </div>
                                <div class="form-group">
                                    <button type="button" class="btn btn-info btn-rounded m-t-10 float-right" data-toggle="modal" id="btnAgregar" data-target="#add-contact">Agregar Nuevo Articulo</button>
                                    
                             	<form:form method="POST" action="/musicapp/admin/detalleClientes" id="detalleClientes" class="form-horizontal">
                             		<input type="hidden" name="clienteId"  id="clienteDetalleId" >
                             	</form:form>
                             
                             
                                     <!-- Add Contact Popup Model -->        
                                <div id="add-contact" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">Ã—</button>
                                                <h4 class="modal-title" id="myModalLabel">Agregar Nuevo Articulo</h4> </div>
                                            <div class="modal-body">
                                                <from class="form-horizontal form-material">
                                                    <div class="form-group">
                                                      <div class="row">
                                                        <div class="col-md-12">
                                                               
                                                         <strong>Nombre Articulo: </strong>
                                                         </div>
                                                          <input type="text" class="form-control" placeholder="nombre del articulo" >
                                                        </div>
                                                        
                                                         <div class="row">
                                                        <div class="col-md-12">
                                                               
                                                         <strong>Descripcion: </strong>
                                                         </div>
                                                           <input type="text" class="form-control" placeholder="ingrese la descripcion del articulo" >
                                                        </div>
                                                        
                                                         <div class="row">
                                                        <div class="col-md-12">
                                                               
                                                         <strong>Valor: </strong>
                                                         </div>
                                                          <input type="text" class="form-control" placeholder="Type name" value="Victr">
                                                        </div>
                                                        
                                                      
                                                       
                                                       
                                                       
                                                       <!--      <div class="fileupload btn btn-danger btn-rounded waves-effect waves-light"><span><i class="ion-upload m-r-5"></i>Upload Contact Image</span>
                                                                <input type="file" class="upload"> </div>  -->
                                                        
                                                    </div>
                                                </from>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-info waves-effect" data-dismiss="modal">Guardar</button>
                                                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Cancelar</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>
                             
                             
                             
                             
                             
                             
                              
                                
                                </div>
                            </div>
                         </div>
                     </div>
                     <!-- ==============Lista Clientes INICIO================= -->
                     
              
                     
                      <!-- ==============Lista Clientes FIN================ -->
                              
                </div>
                <div class="row">
                <c:forEach var="art" begin="0" items="${listArticulos}">
                	<div class="col-md-6 col-lg-6 col-xlg-4">
                        <div class="card card-body">
                            <div class="row">
                               
                                <div class="col-md-8 col-lg-9">
                                  <div  class="row">
                                   <div class="col-md-8"> <h3 class="box-title m-b-0">${art.nombre} </h3> </div>
                                    <div class="col-md-4">
                                   
                                      <a href="javascript:muestraCliente(${art.articuloId});"> 
                                    <button type="button"  title="Detalle del Cliente" class="btn btn-outline-info btn-sm" >
						                            	<i class="fa fa-edit"></i>
						             </button></a>
                                    
                                    </div>
                                    </div>
                                     <small>${art.descripcion}</small>
                                    <address>
                                        #SERIE: ${art.numeroSerie} CODIGOBARRAS: ${art.codigoBarras}
                                        <br/>
                                        <br/>
                                         <abbr title="Valor">Valor:</abbr>${art.valor}
                                        <abbr title="Categoria">Categoria:</abbr> ${art.categoria}
                                    </address>
                                </div>
                                <div class="col-md-4 col-lg-9">
                                     <img src="../assets/images/esfera.png" alt="user" class="img-circle img-responsive"> 
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </c:forEach>
                    
                 </div> 
                <!-- /.row -->
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
 	<script src="../assets/plugins/jquery/jquery.validate.min.js"></script>
    <script src="../assets/plugins/calendar/jquery-ui.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../assets/plugins/popper/popper.min.js"></script>
      <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
  
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="../js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="../js/waves.js"></script>
    <!--Menu sidebar
    <  <script src="../js/sidebarmenu.js"></script>    -->
    <!--stickey kit -->
    <script src="../assets/plugins/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="../assets/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!--Custom JavaScript -->
    <script src="../js/custom.min.js"></script>
    <!-- Calendar JavaScript -->
    <script src="../assets/plugins/calendar/jquery-ui.min.js"></script>
    <script src="../assets/plugins/moment/moment.js"></script>
<!--     <script src='../assets/plugins/calendar/dist/fullcalendar.min.js'></script> -->
<!--     <script src="../assets/plugins/calendar/dist/cal-init.js"></script> -->
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="../assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    
    

<script>

/* todavia no tiene funcionalidad
	!function() {
		var buscar = document.getElementById("Buscar");
		var tiempo = null;
		
		buscar.onkeyup = function(t) {
			clearTimeout(tiempo), tiempo = setTimeout(function() {
				//n.innerHTML = buscar.value
				$('#cadena').val(buscar.value);
				$("#formClientes").submit();
			}, 500)
		}
	}()
	*/
</script>


<script type="text/javascript">


function muestraCliente(clienteId) {
	
	$('#clienteDetalleId').val(clienteId);
	//$("#detalleClientes").submit(); sin funcionalidad por el momento
	
}

$(document).ready(function() {
	
	$("#btnAgregar").click(function() {
		$('#clienteId').val('');
		$('#direccionId').val('');
		$('#nombre').val('');
		$('#apellidos').val('');
		$('#correo').val('');
		$('#telefono').val('');
		$('#calle').val('');
		$('#ciudad').val('');
		$('#colonia').val('');
		$('#estado').val('');
		$('#codigoPostal').val('');
		$('#categoria').val('');
		$('#observaciones').val('');
		$('#actualiza').val(0);
	});

	
	//Evento para guardar o actulizar el registro
	 $("#agregarNuevo").click(function() {
		   event.preventDefault();
		  console.log("metodo");
		  jQuery.validator.messages.required = '* Este campo es obligatorio.';
	  	   jQuery.validator.messages.number = '* Este campo debe ser num&eacute;rico.';
	  	   jQuery.validator.messages.email = '* La direcci&oacute;n de correo es incorrecta.';
	  	   jQuery.validator.messages.minlength = '* debe ingresar almenos 5 numeros';	 
	  	
	      if( $("#formClientes").valid()){
                  console.log("formlario limpio");
               
		 	
			console.log('en boton');
	    	$.ajax({
	    		url: "guardaInfo",
	    		type: "post",
	    		data: {
	    			clienteId:$('#clienteId').val(),
	    			direccionId:$('#direccionId').val(),
	    			nombre:$('#nombre').val(),
	    			apellidos:$('#apellidos').val(),
	    			correo:$('#correo').val(),
	    			telefono:$('#telefono').val(),
	    			calle:$('#calle').val(),
	    			ciudad:$('#ciudad').val(),
	    			colonia:$('#colonia').val(),
	    			estado:$('#estado').val(),
	    			codigoPostal:$('#codigoPostal').val(),
	    			categoria:$('#categoria').val(),
	    			observaciones:$('#observaciones').val(),
	    			actualiza:$('#actualiza').val()
	    			
	    		},	
	    		success : function(data){
	    			console.log(data);

	    			//$('#add-contact').modal('toggle'); 
	    			 if ("ok" == data) {
		    			 $("#success-alert").show();
		    			 window.setTimeout(function () {
		    			     $("#success-alert").slideUp(500, function () {
		    			          $("#success-alert").hide();
		    			      });
		    			 }, 4000);
		    			 
		    			 $("#formClientes").submit();	

	    			 }
	    			 
	    		} 
	    	});//fin de ajax
	    	
	      }//fin de IF de validacion
	      else{
	    	  console.log("form sucio");
	      }
	    	
	    });//fin de la funcion
	
	
});//fin de ready 

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
// 	var appendEl = $("<div class='row'></div>").appendTo("#imageContent");
	   
// 	for (var i = 0, j = 10; i < j; i++){
// 		console.log('aqui' + i)
// 		$("<div class='col-md-6 col-lg-6 col-xlg-4'>"+
// 		"	        <div class='card card-body'>"+
// 		"	            <div class='row'>"+
// 		"	                <div class='col-md-4 col-lg-3 text-center'>"+
// 		"	                    <a href='app-contact-detail.html'><img src='../assets/images/users/4.jpg' alt='user' class='img-circle img-responsive'></a>"+
// 		"	                </div>"+
// 		"	                <div class='col-md-8 col-lg-9'>"+
// 		"	                    <h3 class='box-title m-b-0'>Johnathan Doe</h3> <small>Web Designer</small>"+
// 		"	                    <address>"+
// 		"	                        795 Folsom Ave, Suite 600 San Francisco, CADGE 94107"+
// 		"	                        <br/>"+
// 		"	                        <br/>"+
// 		"	                        <abbr title='Phone'>P:</abbr> (123) 456-7890"+
// 		"	                    </address>"+
// 		"	                </div>"+
// 		"	            </div>"+
// 		"	        </div> "+
// 		"	    </div> ").appendTo(appendEl)
//	    //$("<div class='col-md-3'><img src='storage/uploaded/" + i + "' class='img-responsive img-thumbnail'></div>").appendTo(appendEl);	    
//	}
</script>

    <!--FooTable init-->
<!--     <script src="../../js/footable-init.js"></script> -->
    


</body></html>



