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

               <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <!-- .row -->
                <div class="row">
                    <div class="col-sm-12 col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Filtrar clientes</h4>
                                <div class="form-group">
<!--                                     <label>Introduce el nombre del cliente <small class="text-muted">Buscar Cliente </small></label> -->
                                    <input type="text" id="Buscar" class="form-control date-inputmask" placeholder="Buscar" im-insert="true">
                                </div>
                                <div class="form-group">
                                    <button type="button" class="btn btn-info btn-rounded m-t-10 float-right" data-toggle="modal" id="btnAgregar" data-target="#add-contact">Agregar Nuevo Cliente</button>
                                    
                             	<form:form method="POST" action="/musicapp/admin/detalleClientes" id="detalleClientes" class="form-horizontal">
                             		<input type="hidden" name="clienteId"  id="clienteDetalleId" >
                             	</form:form>
                             
                                     <!-- Add Contact Popup Model -->        
                                <div id="add-contact" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
                                    <div class="modal-dialog modal-xl">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                 
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true" ><i class="mdi mdi-account-check"></i></button>
                                            <h4 class="modal-title" id="myModalLabel"> Agregarrr Cliente</h4> </div>
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
										                                <form:form method="get" action="/musicapp/admin/listaClientes" id="formClientes" class="form-horizontal">
										                                	<input type="hidden" id="clienteId" >
										                                	<input type="hidden" id="direccionId" >
										                                	<input type="hidden" id="cadena" name="cadena">
										                                	<input type="hidden" id="actualiza" >
										                                	
										                                    <div class="form-body">
										                                        <h3 class="box-title">Informaci&oacute;n Personal</h3>
										                                        <hr class="m-t-0 m-b-40">
										                                        
										                                        <div class="row">
										                                            <div class="col-md-12">
										                                                <div class="form-group row">
										                                                    <label class="control-label text-center col-md-2">Nombre(s)</label>
										                                                    <div class="col-md-10">
										                                                        <input type="text" class="form-control" id="nombre" placeholder="">
										                                                        <small class="form-control-feedback">Nombre del Cliente o Razon Social </small> </div>
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                            <!--/span-->
										                                        </div>
										                                        
										                                        <!--/row-->
										                                        <div class="row">
										                                            <div class="col-md-12">
										                                               <div class="form-group row">
										                                                    <label class="control-label text-center col-md-2">Apellidos</label>
										                                                    <div class="col-md-10">
										                                                        <input type="text" class="form-control" id="apellidos" placeholder="">
										                                                        <small class="form-control-feedback"> Apellidos o Descripcion del Grupo. </small> </div>
										                                                </div>
										                                            </div>
										                                            <!--/span-->
										                                            
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
										                                                    <label class="control-label text-right col-md-3">Telefono</label>
										                                                    <div class="col-md-9">
										                                                        <input type="text" class="form-control" id="telefono" placeholder="(777) 7777777">
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
                                
                                </div>
                            </div>
                         </div>
                     </div>
                     
                              
                </div>
                <div class="row">
                <c:forEach var="cliente" begin="0" items="${lstClientes}">
                	<div class="col-md-6 col-lg-6 col-xlg-4">
                        <div class="card card-body">
                            <div class="row">
                                <div class="col-md-4 col-lg-3 text-center">
                                    <a href="javascript:muestraCliente(${cliente.clienteId});"><img src="../assets/images/esfera.png" alt="user" class="img-circle img-responsive"></a>
                                </div>
                                <div class="col-md-8 col-lg-9">
                                    <h3 class="box-title m-b-0">${cliente.nombre} </h3> <small>${cliente.apellidos}</small>
                                    <address>
                                        ${cliente.direccion.calle} ${cliente.direccion.colonia} ${cliente.direccion.ciudad} ${cliente.direccion.estado} ${cliente.direccion.codigop}
                                        <br/>
                                        <br/>
                                        <abbr title="Phone">Celular:</abbr> ${cliente.telefono}    ${cliente.correo}
                                    </address>
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
    <script src="../assets/plugins/calendar/jquery-ui.min.js"></script>
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
    <script src="../assets/plugins/moment/moment.js"></script>
<!--     <script src='../assets/plugins/calendar/dist/fullcalendar.min.js'></script> -->
<!--     <script src="../assets/plugins/calendar/dist/cal-init.js"></script> -->
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="../assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    
    

<script>
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
</script>


<script type="text/javascript">


function muestraCliente(clienteId) {
	
	$('#clienteDetalleId').val(clienteId);
	$("#detalleClientes").submit();
	
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
		$('#actualiza').val(0);
	});

	
	//Evento para guardar o actulizar el registro
	 $("#agregarNuevo").click(function() {
		 	
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
	    	});
	    });
	
});
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

