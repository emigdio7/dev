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
                <!-- row -->
                <div class="row">
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <h4 class="card-title">Galeria de Imagenes</h4>
                                        <h6 class="card-subtitle">Eventos Organizados por America Music.</h6>
                                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                            <ol class="carousel-indicators">
                                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                                            </ol>
                                            <div class="carousel-inner" role="listbox">
                                                <div class="carousel-item active">
                                                    <img class="img-responsive" src="../assets/images/big/731.jpg" alt="First slide">
                                                </div>
                                                <div class="carousel-item">
                                                    <img class="img-responsive" src="../assets/images/big/732.jpg" alt="Second slide">
                                                </div>
                                                <div class="carousel-item">
                                                    <img class="img-responsive" src="../assets/images/big/733.jpg" alt="Third slide">
                                                </div>
                                                <div class="carousel-item">
                                                    <img class="img-responsive" src="../assets/images/big/735.jpg" alt="Third slide">
                                                </div>
                                            </div>
                                            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Previous</span>
                                            </a>
                                            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </div>
                                    </div>
<!--                                     <div class="col-lg-6"> -->
<!--                                         <h4 class="card-title">With captions</h4> -->
<%--                                         <h6 class="card-subtitle">Add captions to your slides easily with the <code>.carousel-caption</code></h6> --%>
<!--                                         <div id="carouselExampleIndicators3" class="carousel slide mt-4" data-ride="carousel"> -->
<!--                                             <ol class="carousel-indicators"> -->
<!--                                                 <li data-target="#carouselExampleIndicators3" data-slide-to="0" class="active"></li> -->
<!--                                                 <li data-target="#carouselExampleIndicators3" data-slide-to="1"></li> -->
<!--                                                 <li data-target="#carouselExampleIndicators3" data-slide-to="2"></li> -->
<!--                                             </ol> -->
<!--                                             <div class="carousel-inner" role="listbox"> -->
<!--                                                 <div class="carousel-item active"> -->
<!--                                                     <img class="img-responsive" src="../assets/images/big/img6.jpg" alt="First slide"> -->
<!--                                                     <div class="carousel-caption d-none d-md-block"> -->
<!--                                                         <h3 class="text-white">First title goes here</h3> -->
<!--                                                         <p>this is the subcontent you can use this</p> -->
<!--                                                     </div> -->
<!--                                                 </div> -->
<!--                                                 <div class="carousel-item"> -->
<!--                                                     <img class="img-responsive" src="../assets/images/big/img3.jpg" alt="Second slide"> -->
<!--                                                     <div class="carousel-caption d-none d-md-block"> -->
<!--                                                         <h3 class="text-white">Second title goes here</h3> -->
<!--                                                         <p>this is the subcontent you can use this</p> -->
<!--                                                     </div> -->
<!--                                                 </div> -->
<!--                                                 <div class="carousel-item"> -->
<!--                                                     <img class="img-responsive" src="../assets/images/big/img4.jpg" alt="Third slide"> -->
<!--                                                     <div class="carousel-caption d-none d-md-block"> -->
<!--                                                         <h3 class="text-white">Third title goes here</h3> -->
<!--                                                         <p>this is the subcontent you can use this</p> -->
<!--                                                     </div> -->
<!--                                                 </div> -->
<!--                                             </div> -->
<!--                                             <a class="carousel-control-prev" href="#carouselExampleIndicators3" role="button" data-slide="prev"> -->
<!--                                                 <span class="carousel-control-prev-icon" aria-hidden="true"></span> -->
<!--                                                 <span class="sr-only">Previous</span> -->
<!--                                             </a> -->
<!--                                             <a class="carousel-control-next" href="#carouselExampleIndicators3" role="button" data-slide="next"> -->
<!--                                                 <span class="carousel-control-next-icon" aria-hidden="true"></span> -->
<!--                                                 <span class="sr-only">Next</span> -->
<!--                                             </a> -->
<!--                                         </div> -->
<!--                                     </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End row -->
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
    <script src='../assets/plugins/calendar/dist/fullcalendar.min.js'></script>
    <script src="../assets/plugins/calendar/dist/cal-init.js"></script>
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="../assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    
    
<!--     <script src="../../js/plugins/footable/js/footable.min.js"></script> -->
-     <script src="../assets/plugins/bootstrap-select/bootstrap-select.min.js" type="text/javascript"></script> -->
    <!--FooTable init-->
<!--     <script src="../../js/footable-init.js"></script> -->
    


</body></html>