
		<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
		<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

		<!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;"><div class="scroll-sidebar" style="overflow: hidden; width: auto; height: 100%;">
                
                <!-- User profile -->
                <div class="user-profile" style="background: url(../images/rsz_eventos.jpg) no-repeat;">
                    <!-- User profile image -->
                    <div class="profile-img"> <img src="../images/profile.png" alt="user"> </div>
                    <!-- User profile text-->
                    <div class="profile-text"> <a href="#" class="dropdown-toggle u-dropdown" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Music Admin</a>
                        <div class="dropdown-menu animated flipInY"> <a href="#" class="dropdown-item"><i class="ti-user"></i> My Profile</a> <a href="#" class="dropdown-item"><i class="ti-wallet"></i> My Balance</a> <a href="#" class="dropdown-item"><i class="ti-email"></i> Inbox</a>
                            <div class="dropdown-divider"></div> <a href="#" class="dropdown-item"><i class="ti-settings"></i> Account Setting</a>
                            <div class="dropdown-divider"></div> <a href="https://wrappixel.com/demos/admin-templates/material-pro/material/login.html" class="dropdown-item"><i class="fa fa-power-off"></i> Logout</a> </div>
                    </div>
                </div>

                <!-- End User profile text-->
                <!-- Sidebar navigation-->
                
                <div style="width: 100%; height: 78%;  overflow-y: scroll;">
                
                <nav class="sidebar-nav active">
                    <ul id="sidebarnav" class="in">
                        <li class="nav-small-cap">PERSONAL</li>
                        <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-gauge"></i><span class="hide-menu">Administracion</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<c:url value='/admin/listaClientes'/>"> <i class="mdi mdi-clipboard-account"></i> Clientes</a></li>
                                <li><a href="<c:url value='/admin/proveedores'/>"> <i class="mdi mdi-exit-to-app"></i> Proveedores</a></li>
                                <li><a href="<c:url value='/admin/grupos'/>"> <i class="mdi mdi-account-multiple"></i> Grupos</a></li>
                                <li><a href="<c:url value='/admin/listaEmpleados'/>"> <i class="mdi mdi-cellphone-basic"></i> Llamadas</a></li>
                                <li><a href="<c:url value='/admin/contratos'/>"> <i class="mdi mdi-printer-settings"></i> Contratos</a></li>
                            </ul>
                        </li>
                        <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-laptop-windows"></i><span class="hide-menu">Control Eventos</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<c:url value='/agenda/listaEventos'/>"> <i class="mdi mdi-calendar"></i>Eventos</a></li>
                                <li><a href="<c:url value='/agenda/monitorEventos'/>"> <i class="mdi mdi-monitor"></i> Monitor</a></li>
<%--                                 <li><a href="<c:url value='/agenda/reporteListaEventos'/>"> <i class="mdi mdi-calendar-text"></i> Reporte Lista Eventos</a></li> --%>
                            </ul>
                        </li>
                        <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-store"></i><span class="hide-menu">Inventario</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<c:url value='/inventario/articulos'/>"><i class="mdi mdi-archive"></i>Inventario Actual</a></li>
                                <li><a href="<c:url value='/clientes/muestraClientes'/>"><i class="mdi mdi-package-up"></i>Salida de Inventario</a></li>
                                <li><a href="<c:url value='/clientes/muestraClientes'/>"><i class="mdi mdi-package-down"></i>Ingreso de Inventario</a></li>
                                <li><a href="<c:url value='/clientes/muestraClientes'/>"><i class="mdi mdi-bullseye"></i></a>Manejo de Inventario</li>
                            </ul>
                        </li>
                        <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-office"></i><span class="hide-menu">Empleados</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<c:url value='/empleados/listaEmpleados'/>"><i class="mdi mdi-account-plus"></i> Empleados</a></li>
                                <li><a href="<c:url value='/empleados/clientes'/>"><i class="mdi mdi-account-switch"></i> Grupos</a></li>
                                <li><a href="<c:url value='/empleados/prestamos'/>"><i class="mdi mdi-square-inc-cash"></i> Prestamos</a></li>
                                <li><a href="<c:url value='/empleados/descuentos'/>"><i class="mdi mdi-cash"></i> Descuentos</a></li>
                            </ul>
                        </li>
                        <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-chart-bubble"></i><span class="hide-menu">Eventos</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<c:url value='/eventos/muestraCalendario'/>">Calendario</a></li>
                                <li><a href="<c:url value='/eventos/reportesEventos'/>">Reporte</a></li>
                                <li><a href="<c:url value='/eventos/galeria'/>">Galeria</a></li>
                            </ul>
                        </li>
                        <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-file"></i><span class="hide-menu">Contabilidad</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<c:url value='/clientes/muestraClientes'/>">Ingresos</a></li>
                                <li><a href="<c:url value='/clientes/muestraClientes'/>">Egresos</a></li>
                                <li><a href="<c:url value='/clientes/muestraClientes'/>">Facturas</a></li>
                                <li><a href="<c:url value='/admin/cotizaciones'/>">Cotizaciones</a></li>
                            </ul>
                        </li>
                        <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-table"></i><span class="hide-menu">Reportes</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="https://wrappixel.com/demos/admin-templates/material-pro/material/table-basic.html">Estados de Cuenta</a></li>
                                <li><a href="https://wrappixel.com/demos/admin-templates/material-pro/material/table-layout.html">Pagos</a></li>
                                <li><a href="https://wrappixel.com/demos/admin-templates/material-pro/material/table-data-table.html">Graficas</a></li>
                            </ul>
                        </li>
                        <li> <a class="has-arrow waves-effect waves-dark" href="#" aria-expanded="false"><i class="mdi mdi-file"></i><span class="hide-menu">Catalogos</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="<c:url value='/catalogos/eventos'/>">Tipo Evento</a></li>
                                <li><a href="<c:url value='/catalogos/muestraClientes'/>">Egresos</a></li>
                                <li><a href="<c:url value='/catalogos/muestraClientes'/>">Facturas</a></li>
                                <li><a href="<c:url value='/catalogos/puestos'/>"> Puestos</a></li>
                                 <li><a href="<c:url value='/catalogos/clientes'/>"> Categoria Cliente</a></li>
                                 <li><a href="<c:url value='/catalogos/proveedores'/>"> Categoria de Proveedor</a></li>
                                 <li><a href="<c:url value='/catalogos/generosGruperos'/>"> Genero Grupos</a></li>
                                 
                            </ul>
                        </li>
                        
                    </ul>
                </nav>
                </div>
                <!-- End Sidebar navigation -->
            </div>
                <div class="slimScrollBar" style="background: rgb(220, 220, 220) none repeat scroll 0% 0%; width: 5px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; left: 1px; height: 535.56px;">
                </div>
                <div class="slimScrollRail" style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51) none repeat scroll 0% 0%; opacity: 0.2; z-index: 90; left: 1px;">
                </div>
            </div>

            <!-- End Sidebar scroll-->
            <!-- Bottom points-->
            <div class="sidebar-footer">
                <!-- item--><a href="" class="link" data-toggle="tooltip" title="" data-original-title="Settings"><i class="ti-settings"></i></a>
                <!-- item--><a href="" class="link" data-toggle="tooltip" title="" data-original-title="Email"><i class="mdi mdi-gmail"></i></a>
                <!-- item--><a href="" class="link" data-toggle="tooltip" title="" data-original-title="Logout"><i class="mdi mdi-power"></i></a> </div>
            <!-- End Bottom points-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->  