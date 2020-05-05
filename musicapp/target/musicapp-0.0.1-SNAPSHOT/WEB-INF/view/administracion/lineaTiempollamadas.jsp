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
                    <div class="col-12">
                        <div class="card" style="font-size: small;">
                            <div class="card-body">
                            <h4 class="card-title">Historia de llamadas </h4>
                             <h6 class="card-subtitle">Cliente: JUAN SOTELO </h6>
                                <ul class="timeline">
                                <c:forEach var="llamadas" begin="0" items="${lstLlamadasCliente}" varStatus="loopCounter">
                         
                                <c:choose>
						            <c:when test="${(loopCounter.index % 4) == 0}">
						                 <li >
	                                        <div class="timeline-badge success"><i class="fa fa-save"></i> </div>
	                                        <div class="timeline-panel">
	                                            <div class="timeline-heading">
	                                                <h5 class="timeline-title">Empleado: ${llamadas.cliente.nombre} ${llamadas.cliente.apellidos}</h5>
	                                                <p><small class="text-muted"><i class="fa fa-clock"></i> ${llamadas.fecha}</small> </p>
	                                            </div>
	                                            <div class="timeline-body">
	                                                <p style="font-size: small;">${llamadas.detalleLlamada}</p>
	                                            </div>
	                                        </div>
	                                    </li>
						            </c:when>
						            <c:when test="${(loopCounter.index % 4) == 1}">
						                <li class="timeline-inverted">
	                                        <div class="timeline-badge danger"><i class="fa fa-graduation-cap"></i>  </div>
	                                        <div class="timeline-panel">
	                                            <div class="timeline-heading">
	                                                <h5 class="timeline-title">Empleado: ${llamadas.cliente.nombre} ${llamadas.cliente.apellidos}</h5>
	                                                <p><small class="text-muted"><i class="fa fa-clock"></i>  ${llamadas.fecha} </small> </p>
	                                            </div>
	                                            <div class="timeline-body">
	                                                <p style="font-size: small;">${llamadas.detalleLlamada}</p>
	                                            </div>
	                                        </div>
	                                    </li>
						            </c:when>
						            <c:when test="${(loopCounter.index % 4) == 2}">
						                <li >
	                                        <div class="timeline-badge warning"></i><i class="fa fa-bomb"></i>  </div>
	                                        <div class="timeline-panel">
	                                            <div class="timeline-heading">
	                                                <h5 class="timeline-title">Empleado: ${llamadas.cliente.nombre} ${llamadas.cliente.apellidos}</h5>
	                                                <p><small class="text-muted"><i class="fa fa-clock"></i>  ${llamadas.fecha} </small> </p>
	                                            </div>
	                                            <div class="timeline-body">
	                                                <p style="font-size: small;">${llamadas.detalleLlamada}</p>
	                                            </div>
	                                        </div>
	                                    </li>
						            </c:when>
						            <c:otherwise>
						                 <li class="timeline-inverted">
	                                        <div class="timeline-badge info"><i class="fa fa-save"></i> </div>
	                                        <div class="timeline-panel">
	                                            <div class="timeline-heading">
	                                                <h5 class="timeline-title">Empleado: ${llamadas.cliente.nombre} ${llamadas.cliente.apellidos}</h5>
	                                                <p><small class="text-muted"><i class="fa fa-clock"></i>  ${llamadas.fecha} </small> </p>
	                                            </div>
	                                            <div class="timeline-body">
	                                                <p style="font-size: small;">${llamadas.detalleLlamada}</p>
	                                            </div>
	                                        </div>
	                                    </li>
						            </c:otherwise>
						        </c:choose>
								</c:forEach>
                                </ul>
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

    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="../assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    
          	<!-- end - This is for export functionality only -->4
	<script>
	
	$(document).ready(function() {

		
	});	
		
	</script>
	


</body></html>