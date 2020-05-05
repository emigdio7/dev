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

				<div class="row">
                    <div class="col-lg-12">
                        <div class="card card-outline-info">
                            <div class="card-header">
                                <h4 class="m-b-0 text-white">Edicion y Consulta de Catalogos de Puestos o Perfiles</h4>
                            </div>
                            <div class="card-body">
                                <form:form method="post" action="/musicapp/catalogos/guardaPuestos" id="formPuestos" class="form-horizontal">
                             	 <input type="hidden" name="rolId">
                             	 <input type="hidden" name="action">
                                
                                    <div class="form-body">
<!--                                         <h3 class="box-title">Person Info</h3> -->
                                        <hr class="m-t-0 m-b-40">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3">Descripcion</label>
                                                    <div class="col-md-9">
<!--                                                         <input type="text" class="form-control" placeholder="John doe"> -->
                                                        <input type="text" class="form-control" name="descripcion" id="descripcion" placeholder="Descripcion del puesto" 
				    			onkeypress="return validar(event)" >
                                                        <small class="form-control-feedback"> Nombre del Puesto </small> </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group row">
                                                    <label class="control-label text-right col-md-3">Estatus</label>
                                                    <div class="col-md-9">
                                                        <select class="form-control" id="activo" name="activo">
															<option value="-1">Seleccione</option> 		
															<option value="1">Activo</option>
															<option value="0">Inactivo</option>
														</select>	
                                                        <small class="form-control-feedback"> Seleccione el estatus </small> </div>
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
                                                        <button type="button" onclick="guarda()" class="btn btn-success">Guardar</button>
                                                        <button type="button" class="btn btn-inverse">Cancelar</button>
                                                    </div>
                                                </div>
                                            </div>
<!--                                             <div class="col-md-1"> </div> -->
                                        </div>
                                    </div>
                                    
                                </form:form>
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
                                             <th>Descripcion</th>
                                             <th>Activo</th>
                                             <th>Accion</th>
                                         </tr>
                                     </thead>
                                     <tbody>
						  	              <c:forEach items="${lstPuestos}" var="puestos">	
											<tr>
												<td>${puestos.rolId}</td>
												<td>${puestos.descripcion}</td>
												
												<c:if test="${puestos.activo == '1' }">
										    		<td><span class="label label-success">ACTIVO</span> </td>
												</c:if>
												<c:if test="${puestos.activo == '0'}">
										    		<td><span class="label label-danger">INACTIVO</span> </td>
												</c:if>
												
												<td style="white-space:nowrap;" align="right">
						                            
						                            <button type="button" onclick="edita(${puestos.rolId},'${puestos.descripcion}',${puestos.activo})" title="Editar Puesto" class="btn btn-outline-info btn-sm" >
						                            	<i class="fa fa-edit"></i>
						                            </button>
						                            <button type="button" onclick="elimina(${puestos.rolId})" title="Eliminar Puesto" class="btn btn-outline-info btn-sm">
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
		  
		
	});	
		
	</script>
	
	<script type="text/javascript">

function validar(e) {
	var tecla = (document.all) ? e.keyCode : e.which;
	if (tecla==8) return true;
	var patron =/[A-Za-z\s]/;
	var te = String.fromCharCode(tecla);
	return patron.test(te);
}


function edita(rolId, descripcion, activo) {

	//Get
	//var bla = $('#txt_name').val();
	//Set
	$('#rolId').val(rolId);
	$('#action').val('insert');
	$('#descripcion').val(descripcion);
	//$('#activo').val(activo);

	//$('#activo').val('Activo').prop('selected', true);
	$('[name=activo]').val( activo );
	//$( "#myselect option:selected" ).text();
	
	
}

function elimina(rolId) {

	$('#rolId').val(rolId);
	$('#action').val('delete');
	
	$("#formPuestos").submit();
	
}

</script>

    
</body></html>