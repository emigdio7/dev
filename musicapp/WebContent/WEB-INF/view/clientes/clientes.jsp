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
                                <h4 class="card-title">Contact Emplyee list</h4>
                                <h6 class="card-subtitle"></h6>
                                <button type="button" class="btn btn-info btn-rounded m-t-10 float-right" data-toggle="modal" data-target="#add-contact">Add New Contact</button>
                                <!-- Add Contact Popup Model -->        
                                <div id="add-contact" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                <h4 class="modal-title" id="myModalLabel">Add New Contact</h4> </div>
                                            <div class="modal-body">
                                                <from class="form-horizontal form-material">
                                                    <div class="form-group">
                                                        <div class="col-md-12 m-b-20">
                                                            <input type="text" class="form-control" placeholder="Type name" value="Victr"> </div>
                                                        <div class="col-md-12 m-b-20">
                                                            <input type="text" class="form-control" placeholder="Email" value="vicma@gmail.com"> </div>
                                                        <div class="col-md-12 m-b-20">
                                                            <input type="text" class="form-control" placeholder="Phone" value="5542856542"> </div>
                                                        <div class="col-md-12 m-b-20">
                                                            <input type="text" class="form-control" placeholder="Designation" value="Empleado"> </div>
                                                        <div class="col-md-12 m-b-20">
                                                            <input type="text" class="form-control" placeholder="Age" value="18"> </div>
                                                        <div class="col-md-12 m-b-20">
                                                            <input type="text" class="form-control" placeholder="Date of joining" value="16-nov-2019"> </div>
                                                        <div class="col-md-12 m-b-20">
                                                            <input type="text" class="form-control" placeholder="Salary" value="12,000"> </div>
                                                        <div class="col-md-12 m-b-20">
                                                            <div class="fileupload btn btn-danger btn-rounded waves-effect waves-light"><span><i class="ion-upload m-r-5"></i>Upload Contact Image</span>
                                                                <input type="file" class="upload"> </div>
                                                        </div>
                                                    </div>
                                                </from>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-info waves-effect" data-dismiss="modal">Save</button>
                                                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Cancel</button>
                                            </div>
                                        </div>
                                        <!-- /.modal-content -->
                                    </div>
                                    <!-- /.modal-dialog -->
                                </div>

                                <div class="table-responsive">
                                    <table id="demo-foo-addrow" class="table table-bordered m-t-30 table-hover contact-list footable footable-5 footable-paging footable-paging-center breakpoint-lg" data-paging="true" data-paging-size="7" style="">
                                        <thead>
                                            <tr class="footable-header">
                                                <th style="display: table-cell;" class="footable-first-visible">No</th>
                                                <th style="display: table-cell;">Name</th>
                                                <th style="display: table-cell;">Email</th>
                                                <th style="display: table-cell;">Phone</th>
                                                <th style="display: table-cell;">Role</th>
                                                <th style="display: table-cell;">Age</th>
                                                <th style="display: table-cell;">Joining date</th>
                                                <th style="display: table-cell;" class="footable-last-visible">Salery</th></tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td style="display: table-cell;" class="footable-first-visible">8</td><td style="display: table-cell;">
                                                    <a href="javascript:void(0)"><img src="../images/2.jpg" alt="user" class="img-circle" width="40"> Salman Khan</a>
                                                </td><td style="display: table-cell;">salman@gmail.com</td><td style="display: table-cell;">+234 456 789</td><td style="display: table-cell;"><span class="label label-info">Developer</span></td><td style="display: table-cell;">27</td><td style="display: table-cell;">11-10-2014</td><td style="display: table-cell;" class="footable-last-visible">$1800</td></tr><tr>

                                            <td style="display: table-cell;" class="footable-first-visible">9</td><td style="display: table-cell;">
                                                    <a href="javascript:void(0)"><img src="Bootstrap%204%20Admin%20Template%20FORMS%20ListaEmployes%20OK_files/3.jpg" alt="user" class="img-circle" width="40"> Govinda jalan</a>
                                                </td><td style="display: table-cell;">govinda@gmail.com</td><td style="display: table-cell;">+345 456 789</td><td style="display: table-cell;"><span class="label label-success">Accountant</span></td><td style="display: table-cell;">18</td><td style="display: table-cell;">12-5-2017</td><td style="display: table-cell;" class="footable-last-visible">$100</td></tr><tr>
 
                                            <td style="display: table-cell;" class="footable-first-visible">10</td><td style="display: table-cell;">
                                                    <a href="javascript:void(0)"><img src="Bootstrap%204%20Admin%20Template%20FORMS%20ListaEmployes%20OK_files/4.jpg" alt="user" class="img-circle" width="40"> Sonu Nigam</a>
                                                </td><td style="display: table-cell;">sonu@gmail.com</td><td style="display: table-cell;">+456 456 789</td><td style="display: table-cell;"><span class="label label-inverse">HR</span></td><td style="display: table-cell;">36</td><td style="display: table-cell;">18-5-2009</td><td style="display: table-cell;" class="footable-last-visible">$4200</td></tr><tr>

                                            <td style="display: table-cell;" class="footable-first-visible">11</td><td style="display: table-cell;">
                                                    <a href="javascript:void(0)"><img src="Bootstrap%204%20Admin%20Template%20FORMS%20ListaEmployes%20OK_files/5.jpg" alt="user" class="img-circle" width="40"> Varun Dhawan</a>
                                                </td><td style="display: table-cell;">varun@gmail.com</td><td style="display: table-cell;">+567 456 789</td><td style="display: table-cell;"><span class="label label-danger">Manager</span></td><td style="display: table-cell;">43</td><td style="display: table-cell;">12-10-2010</td><td style="display: table-cell;" class="footable-last-visible">$5200</td></tr><tr>

                                            <td style="display: table-cell;" class="footable-first-visible">12</td><td style="display: table-cell;">
                                                    <a href="javascript:void(0)"><img src="Bootstrap%204%20Admin%20Template%20FORMS%20ListaEmployes%20OK_files/6.jpg" alt="user" class="img-circle" width="40"> Genelia Deshmukh</a>
                                                </td><td style="display: table-cell;">genelia@gmail.com</td><td style="display: table-cell;">+123 456 789</td><td style="display: table-cell;"><span class="label label-danger">Designer</span> </td><td style="display: table-cell;">23</td><td style="display: table-cell;">12-10-2014</td><td style="display: table-cell;" class="footable-last-visible">$1200</td></tr><tr>

                                            <td style="display: table-cell;" class="footable-first-visible">13</td><td style="display: table-cell;">
                                                    <a href="javascript:void(0)"><img src="Bootstrap%204%20Admin%20Template%20FORMS%20ListaEmployes%20OK_files/7.jpg" alt="user" class="img-circle" width="40"> Arijit Singh</a>
                                                </td><td style="display: table-cell;">arijit@gmail.com</td><td style="display: table-cell;">+234 456 789</td><td style="display: table-cell;"><span class="label label-info">Developer</span> </td><td style="display: table-cell;">26</td><td style="display: table-cell;">10-09-2014</td><td style="display: table-cell;" class="footable-last-visible">$1800</td></tr><tr>

                                            <td style="display: table-cell;" class="footable-first-visible">14</td><td style="display: table-cell;">
                                                    <a href="javascript:void(0)"><img src="Bootstrap%204%20Admin%20Template%20FORMS%20ListaEmployes%20OK_files/8.jpg" alt="user" class="img-circle" width="40"> Govinda jalan</a>
                                                </td><td style="display: table-cell;">govinda@gmail.com</td><td style="display: table-cell;">+345 456 789</td><td style="display: table-cell;"><span class="label label-success">Accountant</span></td><td style="display: table-cell;">28</td><td style="display: table-cell;">1-10-2013</td><td style="display: table-cell;" class="footable-last-visible">$2200</td></tr>
                                            </tbody>
                                        <tfoot>
                                            <tr class="footable-paging">
                                                <td colspan="8"><div class="footable-pagination-wrapper">
                                                <ul class="pagination justify-content-center"><li class="footable-page-nav" data-page="first"><a class="footable-page-link" href="#">«</a></li><li class="footable-page-nav" data-page="prev"><a class="footable-page-link" href="#">‹</a></li><li class="footable-page visible" data-page="1"><a class="footable-page-link" href="#">1</a></li><li class="footable-page visible active" data-page="2"><a class="footable-page-link" href="#">2</a></li><li class="footable-page-nav disabled" data-page="next"><a class="footable-page-link" href="#">›</a></li><li class="footable-page-nav disabled" data-page="last"><a class="footable-page-link" href="#">»</a></li></ul><div class="divider"></div><span class="label label-primary">2 of 2</span></div></td></tr></tfoot></table>
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
    <script src="../js/lib/jquery/jquery.min.js"></script>
        
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../js/lib/bootstrap/js/popper.min.js"></script>
    <script src="../js/lib/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="../js/jquery.slimscroll.js"></script>
     <!--Wave Effects -->
    <script src="../js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../js/sidebarmenu.js"></script>
    
    <!--stickey kit-->
    
    <script src="../js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <script src="../js/lib/sticky-kit-master/dist/jquery.sparkline.min.js"></script>
    <!--Custom JavaScript -->
    <script src="../js/custom.js"></script>

    <!-- Footable -->
    <script src="../js/plugins/moment/moment.js"></script>
    <script src="../js/plugins/footable/js/footable.min.js"></script>
    <script src="../js/plugins/bootstrap-select/bootstrap-select.min.js" type="text/javascript"></script>
    <!--FooTable init-->
    <script src="../js/footable-init.js"></script>
    <!-- ============================================================== -->
    <!-- Style switcher -->
    <!-- ============================================================== -->
    <script src="../js/jQuery.style.switcher.js"></script>



</body></html>