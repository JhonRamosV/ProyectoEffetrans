<%-- 
    Document   : indexAdministrador
    Created on : 19/05/2022, 07:25:09 AM
    Author     : Pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>

        <!--*******************
        Preloader start
    ********************-->
        <div id="preloader">
            <div class="sk-three-bounce">
                <div class="sk-child sk-bounce1"></div>
                <div class="sk-child sk-bounce2"></div>
                <div class="sk-child sk-bounce3"></div>
            </div>
        </div>
        <!--*******************
        Preloader end
    ********************-->

        <!--**********************************
        Main wrapper start
    ***********************************-->
        <div id="main-wrapper">

            <!--**********************************
        Nav header start
    ***********************************-->
            <div class="nav-header">
                <a href="index.jsp" class="brand-logo">
                    <img class="logo-abbr pr-0" src="./images/logo-effetrans.png" alt="">
                    <img class="brand-title pl-0" src="./images/texto-logo.png" alt="">
                </a>

                <div class="nav-control">
                    <div class="hamburger">
                        <span class="line"></span><span class="line"></span><span class="line"></span>
                    </div>
                </div>
            </div>
            <!--**********************************
        Nav header end
    ***********************************-->



            <!--**********************************
        Header start
    ***********************************-->
            <div class="header">
                <div class="header-content">
                    <nav class="navbar navbar-expand">
                        <div class="collapse navbar-collapse justify-content-between">
                            <div class="header-left">
                                <div class="dashboard_bar">
                                    Bienvenido <%=usuario%>
                                </div>
                            </div>
                            <ul class="navbar-nav header-right">
                                <li class="nav-item">
                                    <div class="input-group search-area d-xl-inline-flex d-none">
                                        <input type="text" class="form-control" placeholder="Busca aquí...">
                                        <div class="input-group-append">
                                            <span class="input-group-text"><a href="javascript:void(0)"><i
                                                        class="flaticon-381-search-2"></i></a></span>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item dropdown notification_dropdown">
                                    <a class="nav-link  ai-icon" href="javascript:void(0)" role="button"
                                       data-toggle="dropdown">
                                        <svg width="28" height="28" viewBox="0 0 28 28" fill="none"
                                             xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                              d="M12.8333 5.91732V3.49998C12.8333 2.85598 13.356 2.33331 14 2.33331C14.6428 2.33331 15.1667 2.85598 15.1667 3.49998V5.91732C16.9003 6.16698 18.5208 6.97198 19.7738 8.22498C21.3057 9.75681 22.1667 11.8346 22.1667 14V18.3913L23.1105 20.279C23.562 21.1831 23.5142 22.2565 22.9822 23.1163C22.4513 23.9761 21.5122 24.5 20.5018 24.5H15.1667C15.1667 25.144 14.6428 25.6666 14 25.6666C13.356 25.6666 12.8333 25.144 12.8333 24.5H7.49817C6.48667 24.5 5.54752 23.9761 5.01669 23.1163C4.48469 22.2565 4.43684 21.1831 4.88951 20.279L5.83333 18.3913V14C5.83333 11.8346 6.69319 9.75681 8.22502 8.22498C9.47919 6.97198 11.0985 6.16698 12.8333 5.91732ZM14 8.16664C12.4518 8.16664 10.969 8.78148 9.87469 9.87581C8.78035 10.969 8.16666 12.453 8.16666 14V18.6666C8.16666 18.8475 8.12351 19.026 8.04301 19.1881C8.04301 19.1881 7.52384 20.2265 6.9755 21.322C6.88567 21.5028 6.89501 21.7186 7.00117 21.8901C7.10734 22.0616 7.29517 22.1666 7.49817 22.1666H20.5018C20.7037 22.1666 20.8915 22.0616 20.9977 21.8901C21.1038 21.7186 21.1132 21.5028 21.0234 21.322C20.475 20.2265 19.9558 19.1881 19.9558 19.1881C19.8753 19.026 19.8333 18.8475 19.8333 18.6666V14C19.8333 12.453 19.2185 10.969 18.1242 9.87581C17.0298 8.78148 15.547 8.16664 14 8.16664Z"
                                              fill="#F39C12" />
                                        </svg>
                                        <div class="pulse-css"></div>
                                    </a>
                                    <div class="dropdown-menu rounded dropdown-menu-right">
                                        <div id="DZ_W_Notification1" class="widget-media dz-scroll p-3 height380">
                                            <ul class="timeline">
                                                <li>
                                                    <div class="timeline-panel">
                                                        <div class="media mr-2">
                                                            <img alt="image" width="50" src="images/avatar/1.jpg">
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="mb-1">Dr sultads te envia foto</h6>
                                                            <small class="d-block">29 Julio 2021 - 02:26 PM</small>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="timeline-panel">
                                                        <div class="media mr-2 media-info">
                                                            RC
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="mb-1">Reporte creado con éxito</h6>
                                                            <small class="d-block">29 Julio 2021 - 02:26 PM</small>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="timeline-panel">
                                                        <div class="media mr-2 media-success">
                                                            <i class="fa fa-home"></i>
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="mb-1">Recordatorio: ¡Tiempo de tratamiento!</h6>
                                                            <small class="d-block">29 Julio 2020 - 02:26 PM</small>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="timeline-panel">
                                                        <div class="media mr-2">
                                                            <img alt="image" width="50" src="images/avatar/1.jpg">
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="mb-1">Dr sultads te envía foto</h6>
                                                            <small class="d-block">29 Julio 2020 - 02:26 PM</small>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="timeline-panel">
                                                        <div class="media mr-2 media-danger">
                                                            KG
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="mb-1">Reporte creado con éxito</h6>
                                                            <small class="d-block">29 Julio 2021 - 02:26 PM</small>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="timeline-panel">
                                                        <div class="media mr-2 media-primary">
                                                            <i class="fa fa-home"></i>
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="mb-1">Recordatorio: ¡Tiempo de tratamiento!</h6>
                                                            <small class="d-block">29 Julio 2021 - 02:26 PM</small>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <a class="all-notification" href="javascript:void(0)">Todas las notificaciones
                                            <i class="ti-arrow-right"></i></a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown header-profile">
                                    <a class="nav-link" href="javascript:void(0)" role="button" data-toggle="dropdown">
                                        <img src="images/profile/perfil.jpg" width="20" alt="" />
                                        <!-- <div class="header-info">
                                                <span class="text-black"><strong>Brian Lee</strong></span>
                                                <p class="fs-12 mb-0">Admin</p>
                                        </div> -->
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <a href="perfil.jsp" class="dropdown-item ai-icon">
                                            <svg id="icon-user1" xmlns="http://www.w3.org/2000/svg" class="text-primary"
                                                 width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                 stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                            <circle cx="12" cy="7" r="4"></circle>
                                            </svg>
                                            <span class="ml-2">Perfil </span>
                                        </a>
                                        <a href="iniciarSesion.jsp" class="dropdown-item ai-icon">
                                            <svg id="icon-logout" xmlns="http://www.w3.org/2000/svg" class="text-danger"
                                                 width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                                 stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                                            <polyline points="16 17 21 12 16 7"></polyline>
                                            <line x1="21" y1="12" x2="9" y2="12"></line>
                                            </svg>
                                            <span class="ml-2">Cerrar Sesión </span>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <!--**********************************
        Header end ti-comment-alt
    ***********************************-->

            <!--**********************************
        Sidebar start
    ***********************************-->
            <div class="deznav">
                <div class="deznav-scroll">
                    <a href="javascript:void(0)" class="add-menu-sidebar" data-toggle="modal"
                       data-target="#addOrderModalside">Nuevo Administrador</a>
                    <ul class="metismenu" id="menu">
                        <li><a href="indexAdministrador.jsp" class="ai-icon" aria-expanded="false">
                                <i class="flaticon-381-networking"></i>
                                <span class="nav-text">Inicio</span>
                            </a>
                        </li>

                        <li><a href="ConsultarUsuario.jsp" class="ai-icon" aria-expanded="false">
                                <i class="flaticon-381-user-9"></i>
                                <span class="nav-text">Usuarios</span>
                            </a>
                        </li>

                        <li><a href="Envios.jsp" class="ai-icon" aria-expanded="false">
                                <i class="flaticon-381-box-2"></i>
                                <span class="nav-text">Envíos</span>
                            </a>
                        </li>

                        <li><a href="administradorOferta.jsp" class="ai-icon" aria-expanded="false">
                                <i class="flaticon-381-price-tag"></i>
                                <span class="nav-text">Ofertas</span>
                            </a>
                        </li>

                        
                    </ul>
                </div>
            </div>
            <!--**********************************
        Sidebar end
    ***********************************-->

            <!--**********************************
        Content body start
    ***********************************-->
            <div class="content-body">
                <!-- row -->
                <div class="container-fluid">
                    <!-- Add Order -->
                    <div class="modal fade" id="addOrderModalside">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Registrar Administrador</h5>
                                    <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form method="Post" action="Usuario">
                                        <div class="d-flex">
                                            <div class="form-group col-6 pl-0">
                                                <label class="text-black font-w500">Nombre</label>
                                                <input type="text" class="form-control" name="txtnombre">
                                            </div>
                                            <div class="form-group col-6 pl-0 pr-0">
                                                <label class="text-black font-w500">Apellido</label>
                                                <input type="text" class="form-control" name="txtapellido">
                                            </div>
                                        </div>
                                        <div class="d-flex">
                                            <div class="form-group col-6 pl-0">
                                                <label class="text-black font-w500">Documento</label>
                                                <input type="text" class="form-control" name="txtdocumento">
                                            </div>
                                            <div class="form-group col-6 pl-0 pr-0">
                                                <label class="text-black font-w500">Teléfono</label>
                                                <input type="text" class="form-control" name="txttelefono">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="text-black font-w500">Dirección</label>
                                            <input type="text" class="form-control" name="txtdireccion">
                                        </div>
                                        <div class="form-group">
                                            <label class="text-black font-w500">Correo</label>
                                            <input type="text" class="form-control" name="txtcorreo">
                                        </div>
                                        <div class="form-group">
                                            <label class="text-black font-w500">Contraseña</label>
                                            <input type="password" class="form-control" name="txtcontrasena">
                                        </div>
                                        <div class="form-group">
                                            <input type="hidden" name="txtidtipo_usuario" value="1">
                                            <input type="hidden" name="txtestado" value="1">
                                            <input type="hidden" name="opcion" value="1">
                                            <button type="submit" class="btn btn-primary w-100">Registrar</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-3 col-xxl-4">
                            <div class="row">
                                <div class="col-xl-12 col-md-6">
                                    <div class="card">
                                        <div class="card-header border-0 pb-0">
                                            <h4 class="fs-20">Envíos</h4>
                                            <select class="form-control style-1 default-select ">
                                                <option>Esta Semana</option>
                                                <option>Próxima Semana</option>
                                                <option>Este Mes</option>
                                                <option>Próximo Mes</option>
                                            </select>
                                        </div>
                                        <div class="card-body">
                                            <div id="donutChart"></div>
                                            <div class="d-flex justify-content-between mt-4">
                                                <div class="pr-2">
                                                    <svg width="20" height="8" viewBox="0 0 20 8" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                    <rect width="20" height="8" rx="4" fill="#F39C12" />
                                                    </svg>
                                                    <h4 class="fs-18 text-black mb-1 font-w600">5,612</h4>
                                                    <span class="fs-14">Envíos Realizados</span>
                                                </div>
                                                <div class="pr-2">
                                                    <svg width="20" height="8" viewBox="0 0 20 8" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                    <rect width="20" height="8" rx="4" fill="#8FC8CD" />
                                                    </svg>
                                                    <h4 class="fs-18 text-black mb-1 font-w600">1,512</h4>
                                                    <span class="fs-14">Envíos Faltantes</span>
                                                </div>
                                                <div class="">
                                                    <svg width="20" height="8" viewBox="0 0 20 8" fill="none"
                                                         xmlns="http://www.w3.org/2000/svg">
                                                    <rect width="20" height="8" rx="4" fill="#9FC860" />
                                                    </svg>
                                                    <h4 class="fs-18 text-black mb-1 font-w600">2,750</h4>
                                                    <span class="fs-14">Envíos en Proceso</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-md-6">
                                    <div class="card">
                                        <div class="card-header border-0 pb-0">
                                            <h4 class="fs-20">Últimos Envíos</h4>
                                            <select class="form-control style-1 default-select ">
                                                <option>Esta Semana</option>
                                                <option>Este Mes</option>
                                            </select>
                                        </div>
                                        <div class="card-body pb-0 dz-scroll height630 loadmore-content"
                                             id="latestSalesContent">
                                            <div class="pb-3 mb-3 border-bottom">
                                                <p class="font-w600"><a href="event.html" class="text-black">Bogotá D.C</a>
                                                </p>
                                                <div class="d-flex align-items-end">
                                                    <img src="images/profile/20.jpg" alt="" width="42"
                                                         class="rounded-circle mr-2">
                                                    <div class="mr-auto">
                                                        <h4 class="fs-14 mb-0"><a href="app-profile.html"
                                                                                  class="text-black">Laura Ariza</a></h4>
                                                        <span class="fs-12">hace 2m</span>
                                                    </div>
                                                    <span class="badge badge-sm light badge-primary">4 Envíos</span>
                                                </div>
                                            </div>
                                            <div class="pb-3 mb-3 border-bottom">
                                                <p class="font-w600"><a href="event.html" class="text-black">Medellín</a>
                                                </p>
                                                <div class="d-flex align-items-end">
                                                    <img src="images/profile/21.jpg" alt="" width="42"
                                                         class="rounded-circle mr-2">
                                                    <div class="mr-auto">
                                                        <h4 class="fs-14 mb-0"><a href="app-profile.com"
                                                                                  class="text-black">Andrea Olarte</a></h4>
                                                        <span class="fs-12">hace 6h</span>
                                                    </div>
                                                    <span class="badge badge-sm light badge-primary">2 Envíos</span>
                                                </div>
                                            </div>
                                            <div class="pb-3 mb-3 border-bottom">
                                                <p class="font-w600"><a href="event.html" class="text-black">Cartagena</a>
                                                </p>
                                                <div class="d-flex align-items-end">
                                                    <img src="images/profile/22.jpg" alt="" width="42"
                                                         class="rounded-circle mr-2">
                                                    <div class="mr-auto">
                                                        <h4 class="fs-14 mb-0"><a href="app-profile.com"
                                                                                  class="text-black">Robert Carlos</a></h4>
                                                        <span class="fs-12">hace 10h</span>
                                                    </div>
                                                    <span class="badge badge-sm light badge-primary">1 Envío</span>
                                                </div>
                                            </div>
                                            <div class="pb-3 mb-3 border-bottom">
                                                <p class="font-w600"><a href="event.html" class="text-black">Cali</a></p>
                                                <div class="d-flex align-items-end">
                                                    <img src="images/profile/23.jpg" alt="" width="42"
                                                         class="rounded-circle mr-2">
                                                    <div class="mr-auto">
                                                        <h4 class="fs-14 mb-0"><a href="app-profile.com"
                                                                                  class="text-black">Kevin Cárdenas</a></h4>
                                                        <span class="fs-12">hace 2m</span>
                                                    </div>
                                                    <span class="badge badge-sm light badge-primary">1 Envío</span>
                                                </div>
                                            </div>
                                            <div class="pb-3 mb-3 border-bottom">
                                                <p class="font-w600"><a href="event.html" class="text-black">Cartagena</a>
                                                </p>
                                                <div class="d-flex align-items-end">
                                                    <img src="images/profile/21.jpg" alt="" width="42"
                                                         class="rounded-circle mr-2">
                                                    <div class="mr-auto">
                                                        <h4 class="fs-14 mb-0"><a href="app-profile.com"
                                                                                  class="text-black">Darcy Puentes</a></h4>
                                                        <span class="fs-12">hace 6h</span>
                                                    </div>
                                                    <span class="badge badge-sm light badge-primary">2 Envíos</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-footer text-center border-0">
                                            <a class="btn btn-primary btn-sm dz-load-more" id="latestSales"
                                               href="javascript:void(0)" rel="ajax/latest-sales.html">Ver Más</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-9 col-xxl-8">
                            <div class="row">
                                <div class="col-xl-4 col-xxl-6 col-lg-4 col-sm-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="d-flex align-items-end">
                                                <div>
                                                    <p class="fs-14 mb-1">Nuevos Usuarios</p>
                                                    <span class="fs-35 text-black font-w600">40
                                                        <svg class="ml-1" width="19" height="12" viewBox="0 0 19 12"
                                                             fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                            d="M2.00401 11.1924C0.222201 11.1924 -0.670134 9.0381 0.589795 7.77817L7.78218 0.585786C8.56323 -0.195262 9.82956 -0.195262 10.6106 0.585786L17.803 7.77817C19.0629 9.0381 18.1706 11.1924 16.3888 11.1924H2.00401Z"
                                                            fill="#33C25B" />
                                                        </svg>
                                                    </span>
                                                </div>
                                                <canvas class="lineChart" id="chart_widget_2" height="85"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-xxl-6 col-lg-4 col-sm-6">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <div>
                                                    <p class="fs-14 mb-1">Envíos Mensuales</p>
                                                    <span class="fs-35 text-black font-w600">856
                                                        <svg class="ml-1" width="19" height="12" viewBox="0 0 19 12"
                                                             fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path
                                                            d="M2.00401 11.1924C0.222201 11.1924 -0.670134 9.0381 0.589795 7.77817L7.78218 0.585786C8.56323 -0.195262 9.82956 -0.195262 10.6106 0.585786L17.803 7.77817C19.0629 9.0381 18.1706 11.1924 16.3888 11.1924H2.00401Z"
                                                            fill="#33C25B" />
                                                        </svg>
                                                    </span>
                                                </div>
                                                <div class="d-inline-block ml-auto position-relative donut-chart-sale">
                                                    <span class="donut"
                                                          data-peity='{ "fill": ["rgb(243, 156, 18)", "rgba(244, 244, 244, 1)"],   "innerRadius": 31, "radius": 10}'>6/8</span>
                                                    <small class="text-secondary">90%</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-xxl-12 col-lg-4">
                                    <div class="card">
                                        <div class="card-header align-items-start pb-0 border-0">
                                            <div>
                                                <h4 class="fs-16 mb-0 text-black font-w600">Crecimiento 25%</h4>
                                                <span class="fs-12">Comparación</span>
                                            </div>
                                            <select class="form-control style-1 default-select ">
                                                <option>Día</option>
                                                <option>Mes</option>
                                                <option>Semana</option>
                                            </select>
                                        </div>
                                        <div class="card-body pt-0">
                                            <canvas id="widgetChart1" height="50"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="card" id="sales-revenue">
                                        <div class="card-header pb-0 d-block d-sm-flex border-0">
                                            <h3 class="fs-20 text-black mb-0">Ingresos</h3>
                                            <div class="card-action revenue-tabs mt-3 mt-sm-0">
                                                <ul class="nav nav-tabs" role="tablist">
                                                    <li class="nav-item">
                                                        <a class="nav-link active" data-toggle="tab" href="#monthly"
                                                           role="tab" aria-selected="false">
                                                            Mes
                                                        </a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" data-toggle="tab" href="#weekly" role="tab"
                                                           aria-selected="false">
                                                            Semana
                                                        </a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" data-toggle="tab" href="#today" role="tab"
                                                           aria-selected="true">
                                                            Día
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <div class="tab-content" id="myTabContent">
                                                <div class="tab-pane fade show active" id="user" role="tabpanel">
                                                    <canvas id="revenue" class="chartjs"></canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12 d-flex">
                                    <div class="col-xl-4 col-xxl-4 col-sm-3">
                                        <div class="card">
                                            <div class="social-graph-wrapper widget-facebook">
                                                <span class="s-icon"><i class="fa fa-facebook"></i></span>
                                            </div>
                                            <div class="row">
                                                <div class="col-6 border-right">
                                                    <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                                                        <h4 class="m-1"><span class="counter">600</span></h4>
                                                        <p class="m-0">Amigos</p>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                                                        <h4 class="m-1"><span class="counter">1,9</span> k</h4>
                                                        <p class="m-0">Seguidos</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xl-4 col-xxl-4 col-sm-3">
                                        <div class="card">
                                            <div class="social-graph-wrapper widget-instagram">
                                                <span class="s-icon"><i class="fa fa-instagram"></i></span>
                                            </div>
                                            <div class="row">
                                                <div class="col-6 border-right">
                                                    <div class="pt-3 pb-3 pl-0 pr-0 text-center">
                                                        <h4 class="m-1"><span class="counter">600</span></h4>
                                                        <p class="m-0">Amigos</p>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="pt-3 pb-3 pl-0 pr-1 text-center">
                                                        <h4 class="m-1"><span class="counter">1,9</span> k</h4>
                                                        <p class="m-0">Seguidos</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xl-4 col-xxl-4 col-sm-6">
                                        <div class="card">
                                            <div class="social-graph-wrapper widget-twitter">
                                                <span class="s-icon"><i class="fa fa-twitter"></i></span>
                                            </div>
                                            <div class="row">
                                                <div class="col-6 border-right">
                                                    <div class="pt-3 pb-3 pl-0 pr-1 text-center">
                                                        <h4 class="m-1"><span class="counter">600</span></h4>
                                                        <p class="m-0">Amigos</p>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="pt-3 pb-3 pl-0 pr-1 text-center">
                                                        <h4 class="m-1"><span class="counter">1,9</span> k</h4>
                                                        <p class="m-0">Seguidos</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-12">
                                    <div class="card">
                                        <div class="card-header d-block">
                                            <h4 class="card-title">1000 Usuarios Registrados</h4>
                                            <p class="mb-0 subtitle">70%</p>
                                        </div>
                                        <div class="card-body">
                                            <div class="progress">
                                                <div class="progress-bar bg-warning" style="width: 70%; height:6px;"
                                                     role="progressbar">
                                                    <span class="sr-only">70% Completo</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-xl-12">
                                    <div class="card">
                                        <div class="card-header d-block">
                                            <h4 class="card-title">1000 Envíos Realizados</h4>
                                            <p class="mb-0 subtitle">50%</p>
                                        </div>
                                        <div class="card-body">
                                            <div class="progress">
                                                <div class="progress-bar bg-warning" style="width: 50%; height:6px;"
                                                     role="progressbar">
                                                    <span class="sr-only">50% Completo</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--**********************************
        Content body end
    ***********************************-->

            <!--**********************************
        Footer start
    ***********************************-->
            <div class="footer">
                <div class="copyright">
                    <p>Copyright © Diseñado &amp; Desarrollado Por <a href="http://dexignzone.com/"
                                                                      target="_blank">Effetrans</a> 2022</p>
                </div>
            </div>
            <!--**********************************
        Footer end
    ***********************************-->

            <!--**********************************
       Support ticket button start
    ***********************************-->

            <!--**********************************
       Support ticket button end
    ***********************************-->


        </div>
        <!--**********************************
        Main wrapper end
    ***********************************-->

        <!--**********************************
        Scripts
    ***********************************-->
        <!-- Required vendors -->
        <script src="./vendor/global/global.min.js"></script>
        <script src="./vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
        <script src="./vendor/chart.js/Chart.bundle.min.js"></script>
        <script src="./js/custom.min.js"></script>
        <script src="./js/deznav-init.js"></script>
        <script src="./vendor/owl-carousel/owl.carousel.js"></script>

        <!-- Chart piety plugin files -->
        <script src="./vendor/peity/jquery.peity.min.js"></script>

        <!-- Apex Chart -->
        <script src="./vendor/apexchart/apexchart.js"></script>

        <!-- Dashboard 1 -->
        <script src="./js/dashboard/dashboard-1.js"></script>

        <script>
            function carouselReview() {
                /*  event-bx one function by = owl.carousel.js */
                jQuery('.event-bx').owlCarousel({
                    loop: true,
                    margin: 30,
                    nav: true,
                    center: true,
                    autoplaySpeed: 3000,
                    navSpeed: 3000,
                    paginationSpeed: 3000,
                    slideSpeed: 3000,
                    smartSpeed: 3000,
                    autoplay: false,
                    navText: ['<i class="fa fa-caret-left" aria-hidden="true"></i>', '<i class="fa fa-caret-right" aria-hidden="true"></i>'],
                    dots: true,
                    responsive: {
                        0: {
                            items: 1
                        },
                        720: {
                            items: 2
                        },
                        1150: {
                            items: 3
                        },
                        1200: {
                            items: 2
                        },
                        1749: {
                            items: 3
                        }
                    }
                })
            }
            jQuery(window).on('load', function () {
                setTimeout(function () {
                    carouselReview();
                }, 1000);
            });
        </script>



    </body>
</html>
