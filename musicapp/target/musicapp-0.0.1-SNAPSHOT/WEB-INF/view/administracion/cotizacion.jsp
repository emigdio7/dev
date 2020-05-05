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
                    <div class="col-md-12">
                        <div class="card card-body printableArea">
                            <h3><b>INVOICE</b> <span class="pull-right">#5669626</span></h3>
                            <hr>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="pull-left">
                                        <address>
                                            <h3> &nbsp;<b class="text-danger">Esfera Musical</b></h3>
                                            <p class="text-muted m-l-5">Rivera 17,
                                                <br/> Ricardo Flores Magon,
                                                <br/> Cuernavaca,
                                                <br/> Morelos Mexico C.P. 62370</p>
                                        </address>
                                        
                                    </div>
                                    <div class="pull-right text-right">
                                        <address>
                                            <h3>A:,</h3>
                                            <h4 class="font-bold">Juan Estudillo,</h4>
                                            <p class="text-muted m-l-30">Independencia 15,
                                                <br/> Estudillo ,
                                                <br/> Jiutepec,
                                                <br/> Morelos Mexico C.P. 45678</p>
                                            <p class="m-t-30"><b>Fecha Cotizacion :</b> <i class="fa fa-calendar"></i> 23rd Junio 2019</p>
                                            <p><b>Fecha limite :</b> <i class="fa fa-calendar"></i> 25th Agosto 2019</p>
                                        </address>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="table-responsive m-t-40" style="clear: both;">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">#</th>
                                                    <th>Descripcion</th>
                                                    <th class="text-right">Cantidad</th>
                                                    <th class="text-right">Costo</th>
                                                    <th class="text-right">Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center">1</td>
                                                    <td>sonora Santanera</td>
                                                    <td class="text-right">1 </td>
                                                    <td class="text-right"> $20000 </td>
                                                    <td class="text-right"> $20000 </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">2</td>
                                                    <td>Planta de luz</td>
                                                    <td class="text-right"> 2 </td>
                                                    <td class="text-right"> $10000 </td>
                                                    <td class="text-right"> $1000 </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">3</td>
                                                    <td>Logistica </td>
                                                    <td class="text-right"> 1 </td>
                                                    <td class="text-right"> 20000 </td>
                                                    <td class="text-right"> $20000 </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">4</td>
                                                    <td>Mariachis</td>
                                                    <td class="text-right"> 1 </td>
                                                    <td class="text-right">$5000 </td>
                                                    <td class="text-right"> $5000 </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                
                                <div class="col-md-12">
                                    <div class="pull-right m-t-30 text-right">
                                        <img src="../assets/images/esfera.png" alt="user" class="img-circle img-responsive">
                                    </div>
                                    <div class="clearfix"></div>
                                    <hr>
                                    
                                </div>
                                
                                
                                
                                <div class="col-md-12">
                                    <div class="pull-right m-t-30 text-right">
                                        <p>Sub - Total: $130,848</p>
                                        <p>IVA (16%) : $1380 </p>
                                        <hr>
                                        <h3><b>Total :</b> $150,986</h3>
                                    </div>
                                    <div class="clearfix"></div>
                                    <hr>
                                    <div class="text-right">
<!--                                         <button class="btn btn-danger" type="submit"> Proceed to payment </button> -->
                                        <button id="print" class="btn btn-default btn-outline" type="button"> <span><i class="fa fa-print"></i> Imprimir</span> </button>
                                    </div>
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

    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="../assets/plugins/styleswitcher/jQuery.style.switcher.js"></script>
    <script src="../js/jquery.PrintArea.js" type="text/JavaScript"></script>
    <script>
    $(document).ready(function() {
        $("#print").click(function() {
            var mode = 'iframe'; //popup
            var close = mode == "popup";
            var options = {
                mode: mode,
                popClose: close
            };
            $("div.printableArea").printArea(options);
        });
    });
    </script>
          	<!-- end - This is for export functionality only -->4
	<script>
	
	$(document).ready(function() {

		
	});	
		
	</script>
	


</body></html>