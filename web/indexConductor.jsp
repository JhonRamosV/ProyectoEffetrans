<%-- 
    Document   : indexconductor
    Created on : 17/06/2022, 08:35:54 PM
    Author     : Pablo
--%>

<%@page import="ModeloVO.MarcaVO"%>
<%@page import="ModeloDAO.MarcaDAO"%>
<%@page import="ModeloVO.TipoVehiculoVO"%>
<%@page import="ModeloDAO.TipoVehiculoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp" %>
<!DOCTYPE html>
<html>
    <head>
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
                       data-target="#addOrderModalside">Nuevo Vehículo</a>
                    <ul class="metismenu" id="menu">
                        <li><a href="indexConductor.jsp" class="ai-icon" aria-expanded="false">
                                <i class="flaticon-381-networking"></i>
                                <span class="nav-text">Inicio</span>
                            </a>
                        </li>

                        <li><a href="ConsultarEnvios.jsp" class="ai-icon" aria-expanded="false">
                                <i class="flaticon-381-box-2"></i>
                                <span class="nav-text">Envios Disponibles</span>
                            </a>
                        </li>
                        <li><a href="ofertasAceptadas.jsp" class="ai-icon" aria-expanded="false">
                                <i class="flaticon-381-box-2"></i>
                                <span class="nav-text">Ofertas Aceptadas</span>
                            </a>
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
                                    <h5 class="modal-title">Registrar Vehiculo</h5>
                                    <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">

                                    <form method="post"  action="Vehiculo">
                                        <div class="d-flex">
                                            <div class="form-group col-12 pl-0">
                                                <label class="text-black font-w500">Licencia</label>
                                                <input type="text" name="txtlicensia" class="form-control">
                                            </div>
                                        </div>
                                        <div class="d-flex">
                                            <div class="form-group col-6 pl-0">
                                                <label class="text-black font-w500">Tipo De Vehiculo</label>
                                                <select class="form-control form-control-lg default-select " name="txtidtipo_vehiculo">
                                                    <option>Seleccione...</option>
                                                    <%
                                                        TipoVehiculoDAO tipovehiculoDAO = new TipoVehiculoDAO();

                                                        for (TipoVehiculoVO tipovehiculoVO : tipovehiculoDAO.listar()) {

                                                    %>
                                                    <option value="<%=tipovehiculoVO.getIdtipo_vehiculo()%>"><%=tipovehiculoVO.getNombre()%></option>
                                                    <%}%> 
                                                </select>
                                            </div>
                                            <div class="form-group col-6 pl-0">
                                                <label class="text-black font-w500">Marca</label>
                                                <select class="form-control form-control-lg default-select " name="txtidmarca">
                                                    <option>Seleccione...</option>
                                                    <%
                                                        MarcaDAO marcaDAO = new MarcaDAO();

                                                        for (MarcaVO marcaVO : marcaDAO.listar()) {

                                                    %>
                                                    <option value="<%=marcaVO.getIdmarca()%>"><%=marcaVO.getNombre()%></option>
                                                    <%}%> 
                                                </select>
                                            </div>
                                        </div>
                                        <div class="d-flex">
                                            <div class="form-group col-6 pl-0">
                                                <label class="text-black font-w500">Placa</label>
                                                <input type="text" class="form-control" name="txtplaca">
                                            </div>
                                            <div class="form-group col-6 pl-0 pr-0">
                                                <label class="text-black font-w500">Modelo</label>
                                                <input type="text" class="form-control" name="txtmodelo">
                                            </div>
                                        </div>
                                        <input type="hidden" value="<%=idusuario%>" name="txtidusuario">
                                        <input type="hidden" value ="1" name="txtestado">
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary w-100">Registrar</button>
                                            <input type="hidden" value="1" name="opcion">
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row">
                        <div class="card">
                            <div class="card-header bg-warning">

                            </div>
                            <div class="card-body">
                                <div class="d-flex">
                                    <div class="col-6">
                                        <h1>Comienza a ofertar para generar dinero</h1>
                                        <h2>¡Qué esperas!</h2>

                                        <div id="accordion-seven"
                                             class="accordion accordion-primary-solid accordion-bordered mt-5">
                                            <div class="accordion__item">
                                                <div class="accordion__header accordion__header--primary"
                                                     data-toggle="collapse" data-target="#header-bg_collapseOne">
                                                    <span class="accordion__header--icon"></span>
                                                    <span class="accordion__header--text text-black font-w600">Oferta los
                                                        envios de tu interes</span>
                                                    <span class="accordion__header--indicator"></span>
                                                </div>
                                                <div id="header-bg_collapseOne" class="collapse accordion__body show"
                                                     data-parent="#accordion-seven">
                                                    <div class="accordion__body--text text-black">
                                                        Dirijase a la casilla de Ofertas y complete el formulario con la
                                                        información requerida
                                                        para que al cliente se le muestre la oferta.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="accordion__item">
                                                <div class="accordion__header collapsed accordion__header--primary"
                                                     data-toggle="collapse" data-target="#header-bg_collapseTwo">
                                                    <span class="accordion__header--icon"></span>
                                                    <span class="accordion__header--text text-black font-w600">Negociacion
                                                        Con El Usuario</span>
                                                    <span class="accordion__header--indicator"></span>
                                                </div>
                                                <div id="header-bg_collapseTwo" class="collapse accordion__body"
                                                     data-parent="#accordion-seven">
                                                    <div class="accordion__body--text text-black">
                                                        Los Usuarios se comunicaran con los conductores para empesar una
                                                        Negociacion respecto al envio y de esta manera llegar a un acuerdo
                                                        respecto al pago.
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="accordion__item">
                                                <div class="accordion__header collapsed accordion__header--primary"
                                                     data-toggle="collapse" data-target="#header-bg_collapseThree">
                                                    <span class="accordion__header--icon"></span>
                                                    <span class="accordion__header--text text-black font-w600">Oferta
                                                        Aceptada</span>
                                                    <span class="accordion__header--indicator"></span>
                                                </div>
                                                <div id="header-bg_collapseThree" class="collapse accordion__body"
                                                     data-parent="#accordion-seven">
                                                    <div class="accordion__body--text text-black">
                                                        Después de que la oferta sea aceptada, el cliente debera llenar un
                                                        formulario con los datos requeridos para brindarle al usuario
                                                        seguridad y confianza.
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-6">
                                        <svg class="animated" id="freepik_stories-job-offers"
                                             xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                             viewBox="0 0 500 500" version="1.1" xmlns:svgjs="http://svgjs.com/svgjs">
                                        <style>
                                            svg#freepik_stories-job-offers:not(.animated) .animable {
                                                opacity: 0;
                                            }

                                            svg#freepik_stories-job-offers.animated #freepik--Hand--inject-31 {
                                                animation: 3s Infinite linear heartbeat;
                                                animation-delay: 0s;
                                            }

                                            @keyframes heartbeat {
                                                0% {
                                                    transform: scale(1);
                                                }

                                                10% {
                                                    transform: scale(1.1);
                                                }

                                                30% {
                                                    transform: scale(1);
                                                }

                                                40% {
                                                    transform: scale(1);
                                                }

                                                50% {
                                                    transform: scale(1.1);
                                                }

                                                60% {
                                                    transform: scale(1);
                                                }

                                                100% {
                                                    transform: scale(1);
                                                }
                                            }
                                        </style>
                                        <g id="freepik--background-simple--inject-31" class="animable"
                                           style="transform-origin: 244.739px 254.708px;">
                                        <path
                                            d="M228,53.14c124-11,124.24,58.93,180.13,124.12S476,272,454.92,347.17,362.86,481.24,275,447.86s-138.14-1.32-193.54-31S5.52,330,46.07,262.48,75.07,66.76,228,53.14Z"
                                            style="fill: rgb(255, 193, 0); transform-origin: 244.739px 254.708px;"
                                            id="el6yc22i5t1ou" class="animable"></path>
                                        <g id="elqs0bukeohwl">
                                        <path
                                            d="M228,53.14c124-11,124.24,58.93,180.13,124.12S476,272,454.92,347.17,362.86,481.24,275,447.86s-138.14-1.32-193.54-31S5.52,330,46.07,262.48,75.07,66.76,228,53.14Z"
                                            style="fill: rgb(255, 255, 255); opacity: 0.7; transform-origin: 244.739px 254.708px;"
                                            class="animable"></path>
                                        </g>
                                        </g>
                                        <g id="freepik--Glasses--inject-31" class="animable"
                                           style="transform-origin: 204.18px 407.375px;">
                                        <g id="el9ryqu34yaln">
                                        <path
                                            d="M280.45,405.86l-1.84-.2a3.59,3.59,0,0,1-3.35-3.24c-1-10.57-10.12-18-22-19.35-10.69-1.2-23,3.52-31.08,11.6a10,10,0,0,1-7.89,3.12l-9.1-1a5.86,5.86,0,0,1-5.25-4.59c-2.14-9.24-10.42-16.27-21.12-17.47-11.87-1.33-25.23,3.59-33.13,13.16a6.19,6.19,0,0,1-5.24,2.28l-1.83-.21a2,2,0,0,0-2,1.33l-1.51,4.41a1.2,1.2,0,0,0,.63,1.57l2.08,1a3.88,3.88,0,0,1,2,4.5c-3.31,14.31,5,26.71,19.69,28.35,14.14,1.59,29.43-7.36,36.22-20.52a7.3,7.3,0,0,1,5.75-3.83,26,26,0,0,1,9.62,1,4.13,4.13,0,0,1,2.87,4.82c-2.44,13.68,5.81,25.3,20,26.89,14.67,1.65,30.56-8,36.95-22a6.89,6.89,0,0,1,4.82-3.74l2.61-.51a2.06,2.06,0,0,0,1.62-1.32l1.51-4.41A1.19,1.19,0,0,0,280.45,405.86ZM160.76,427.42c-13.63-1.53-20.95-13.76-16.32-27.27s19.48-23.24,33.11-21.71,21,13.76,16.33,27.26S174.39,429,160.76,427.42Zm37.65-23.93c.19-.78.35-1.56.47-2.33a1.38,1.38,0,0,1,1.43-1.07l16.32,1.83a.84.84,0,0,1,.62,1.3c-.39.73-.75,1.47-1.09,2.23C209.58,402.19,202.32,402.78,198.41,403.49Zm36.8,32.29c-13.63-1.53-21-13.76-16.33-27.27S238.37,385.27,252,386.8s20.95,13.76,16.32,27.26S248.84,437.31,235.21,435.78Z"
                                            style="fill-opacity: 0.7; opacity: 0.2; transform-origin: 208.292px 407.09px;"
                                            class="animable"></path>
                                        </g>
                                        <path
                                            d="M268.37,406.66l-105.84-4.45a17.87,17.87,0,0,0-13.5,5.34l-19,19.36a1.68,1.68,0,0,0,.33,2.6h0a4.92,4.92,0,0,0,6-.78L154,410.85a10.82,10.82,0,0,1,8.06-3.22l106,3.5Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 198.964px 416.193px;"
                                            id="eln0t6rjshvtn" class="animable"></path>
                                        <path
                                            d="M127.31,390.85l104.62,16.58a17.9,17.9,0,0,1,12.18,7.91l14.8,22.74a1.65,1.65,0,0,1-.83,2.47h0a4.91,4.91,0,0,1-5.76-1.94l-13.68-21a10.79,10.79,0,0,0-7.26-4.75L126.81,395.3Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 192.998px 415.843px;"
                                            id="el3rksrx14sb9" class="animable"></path>
                                        <path
                                            d="M189.37,408.59c1.24.46-.35,9.2-3.78,11.69s-5.14-5.29-3.93-7.74S185.48,407.12,189.37,408.59Z"
                                            style="fill: rgb(117, 117, 117); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 185.531px 414.482px;"
                                            id="ellqfexbl8aj" class="animable"></path>
                                        <path
                                            d="M207.69,410.64c-1.31.18-1.69,9.05,1.1,12.24s6.19-4,5.55-6.67S211.81,410.07,207.69,410.64Z"
                                            style="fill: rgb(117, 117, 117); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 210.554px 417.129px;"
                                            id="elrln6agejgcl" class="animable"></path>
                                        <g id="el485duo56g47">
                                        <path
                                            d="M146.48,379.88c6.27-3.71,19.22-9.63,30.54.15s14.25,18.75,9.7,29.44-15.13,24.15-33.43,18.27S127,391.4,146.48,379.88Z"
                                            style="fill: rgb(255, 255, 255); opacity: 0.4; transform-origin: 161.98px 401.927px;"
                                            class="animable"></path>
                                        </g>
                                        <g id="el1wt8jx3thxr">
                                        <path
                                            d="M220.86,389.22c6.28-3.71,19.22-9.63,30.54.15s14.26,18.74,9.7,29.44S246,443,227.67,437.07,201.37,400.74,220.86,389.22Z"
                                            style="fill: rgb(255, 255, 255); opacity: 0.4; transform-origin: 236.356px 411.271px;"
                                            class="animable"></path>
                                        </g>
                                        <path
                                            d="M270.81,405.44l-1.84-.21a4.71,4.71,0,0,1-4-3.26c-3.3-10.67-13.85-18.17-25.72-19.5-10.69-1.21-21.66,3.57-27.74,11.74a7.71,7.71,0,0,1-7,3.15l-9.11-1a7.71,7.71,0,0,1-6.13-4.63,31,31,0,0,0-24.45-17.6c-11.87-1.34-23.82,3.64-29.4,13.31a4.71,4.71,0,0,1-4.61,2.3l-1.83-.21a1.52,1.52,0,0,0-1.68,1.34l-.5,4.45a1.52,1.52,0,0,0,1,1.59l2.26,1.05a5,5,0,0,1,2.94,4.54,28.66,28.66,0,0,0,56.26,7.84,5.37,5.37,0,0,1,4.76-3.87,26.24,26.24,0,0,1,9.6,1,5.43,5.43,0,0,1,3.86,4.86,28.66,28.66,0,0,0,56.6,4.89,5,5,0,0,1,3.87-3.78l2.44-.52a1.53,1.53,0,0,0,1.29-1.33l.5-4.45A1.52,1.52,0,0,0,270.81,405.44Zm-112,21.87a24.88,24.88,0,1,1,27.5-21.95A24.91,24.91,0,0,1,158.85,427.31Zm31.43-24.19c0-.79,0-1.57-.05-2.35a1,1,0,0,1,1.16-1.08l16.31,1.83a1,1,0,0,1,.89,1.32c-.22.73-.41,1.48-.57,2.24A29.54,29.54,0,0,0,190.28,403.12Zm43,32.55a24.88,24.88,0,1,1,27.5-21.95A24.91,24.91,0,0,1,233.3,435.67Z"
                                            style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 199.492px 406.776px;"
                                            id="elcf38dsggqr" class="animable"></path>
                                        <g id="el887oo52sqho">
                                        <path
                                            d="M142.3,415.47s-6.94-13.52,1.87-26.27c7.93-11.46,21.62-10.52,27.49-6.73l-18.14,21.76a85.39,85.39,0,0,1,8.76-16.18S147.86,398.28,142.3,415.47Z"
                                            style="fill: rgb(255, 255, 255); opacity: 0.5; transform-origin: 155.682px 397.686px;"
                                            class="animable"></path>
                                        </g>
                                        <g id="elu7mqyo6az09">
                                        <path
                                            d="M216.69,423.1s-6.93-13.52,1.88-26.26c7.92-11.47,21.62-10.53,27.49-6.74l-18.15,21.76c2.57-8.52,8.76-16.18,8.76-16.18S222.25,405.91,216.69,423.1Z"
                                            style="fill: rgb(255, 255, 255); opacity: 0.5; transform-origin: 230.08px 405.316px;"
                                            class="animable"></path>
                                        </g>
                                        </g>
                                        <g id="freepik--Device--inject-31" class="animable"
                                           style="transform-origin: 234.509px 261.803px;">
                                        <g id="elmf6nkp6b4bq">
                                        <path
                                            d="M149.5,317.09s-20.23,25.11-21.64,26.69-1,27-4.46,38.45S108,405.44,81.31,463.4l-3.6-112.92,19.67-78.65Z"
                                            style="fill-opacity: 0.7; opacity: 0.2; transform-origin: 113.605px 367.615px;"
                                            class="animable"></path>
                                        </g>
                                        <path
                                            d="M164.35,316s-13.36-61.36-23.92-69c-6.12-4.42-15.35-6-23.41-5.23-5.83.55-11.06,2.34-14,5.19-7.08,6.79-17.33,10.76-22.31,15.17s-4.12,19-6.75,31.48-7.46,13.18-7.85,25.55-2.65,50.33-10.14,61.26-7.2,19.14-9.93,30-25,50.76-25,50.76L81.59,470S86,445.24,91.16,425c2.44-9.61,5-18.22,7.35-22.7a185.86,185.86,0,0,0,11.31-26.87c6.36-7.49,9.13-23.43,9.44-37.25h0l15.49-9.89C146.86,324.19,164.35,316,164.35,316Z"
                                            style="fill: rgb(255, 255, 255); transform-origin: 92.695px 355.791px;"
                                            id="eldrdxjwixy6" class="animable"></path>
                                        <g id="elqckeegboz4i">
                                        <path
                                            d="M164.35,316s-13.36-61.36-23.92-69c-6.12-4.42-15.35-6-23.41-5.23C98.16,247.7,93.64,258.67,91.2,261.4c-3.25,3.65-6.55,24.89-3.34,37s1.69,16.68,0,22.76c-3.78,13.48,10.54,19.77,12.27,24.68s2.86,32.9-2.83,42.36c-3,5-10.12,30.48-6.13,36.85,2.44-9.61,5-18.22,7.35-22.7a185.86,185.86,0,0,0,11.31-26.87c6.36-7.49,9.13-23.43,9.44-37.25h0l15.49-9.89C146.86,324.19,164.35,316,164.35,316Z"
                                            style="fill: rgb(255, 193, 0); opacity: 0.4; transform-origin: 125.45px 333.316px;"
                                            class="animable"></path>
                                        </g>
                                        <path d="M91.49,324.71s-3.61-3.77-6.59-3.6"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 88.195px 322.907px;"
                                              id="elmjcngyv6ce7" class="animable"></path>
                                        <path d="M98.05,310.86s-4.09-7.5-10-8.84"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 93.05px 306.44px;"
                                              id="elz6pnrkol0e" class="animable"></path>
                                        <path d="M89,266s8.41,3.06,10.07,9"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 94.035px 270.5px;"
                                              id="elxla5ds86kvr" class="animable"></path>
                                        <path d="M134.75,328.28s-2.21-2.49-2.33-4.54"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 133.585px 326.01px;"
                                              id="eluxcmkt9k9j" class="animable"></path>
                                        <path
                                            d="M81.59,470s9.68-53.73,16.92-67.65a185.86,185.86,0,0,0,11.31-26.87c6.36-7.49,9.13-23.44,9.44-37.26h0l15.49-9.89c12.11-4.09,29.6-12.24,29.6-12.24s-13.36-61.36-23.92-69-30.35-6.82-37.45,0S85.65,257.79,80.67,262.2s-4.12,19-6.75,31.48-7.46,13.18-7.85,25.55-2.65,50.33-10.14,61.26-7.2,19.14-9.93,30-25,50.76-25,50.76"
                                            style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 92.675px 355.832px;"
                                            id="elkx4slp2cfx" class="animable"></path>
                                        <g id="elzi7e4ndk81b">
                                        <path
                                            d="M65.6,115.62H81.8a1,1,0,0,1,1,1v6.85a0,0,0,0,1,0,0H64.61a0,0,0,0,1,0,0v-6.85A1,1,0,0,1,65.6,115.62Z"
                                            style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 73.705px 119.545px; transform: rotate(-96.36deg);"
                                            class="animable"></path>
                                        </g>
                                        <g id="ellnvgyc7llpe">
                                        <path
                                            d="M102,84.37h16.2a1,1,0,0,1,1,1v6.85a0,0,0,0,1,0,0H101a0,0,0,0,1,0,0V85.36A1,1,0,0,1,102,84.37Z"
                                            style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 110.1px 88.295px; transform: rotate(-6.36deg);"
                                            class="animable"></path>
                                        </g>
                                        <g id="el9ccwoy3u9lv">
                                        <path
                                            d="M123.5,82h16.2a1,1,0,0,1,1,1v6.85a0,0,0,0,1,0,0H122.51a0,0,0,0,1,0,0V83a1,1,0,0,1,1-1Z"
                                            style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 131.605px 85.925px; transform: rotate(-6.36deg);"
                                            class="animable"></path>
                                        </g>
                                        <path
                                            d="M94.59,325.93,70.7,111.44A20.77,20.77,0,0,1,89,88.5l312-34.76A20.78,20.78,0,0,1,424,72.09l23.89,214.49a20.78,20.78,0,0,1-18.35,22.95l-312,34.75A20.77,20.77,0,0,1,94.59,325.93Z"
                                            style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 259.295px 199.008px;"
                                            id="elgzvdprkoro" class="animable"></path>
                                        <path
                                            d="M429.54,306.81l-312.6,34.82a17.78,17.78,0,0,1-19.63-15.7l-24-215.08a17.78,17.78,0,0,1,15.7-19.64L401.65,56.4a17.77,17.77,0,0,1,19.63,15.69l24,215.08A17.79,17.79,0,0,1,429.54,306.81Z"
                                            style="fill: rgb(117, 117, 117); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 259.294px 199.014px;"
                                            id="elpg42mb8p7tp" class="animable"></path>
                                        <path d="M90.48,217.81a1.19,1.19,0,1,1-2.36.27,1.19,1.19,0,1,1,2.36-.27Z"
                                              style="fill: rgb(153, 153, 153); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 89.3px 217.945px;"
                                              id="el2ajimjsstba" class="animable"></path>
                                        <path d="M92.76,228.44a2.27,2.27,0,1,1-2.51-2A2.27,2.27,0,0,1,92.76,228.44Z"
                                              style="fill: rgb(38, 50, 56); transform-origin: 90.5044px 228.696px;"
                                              id="elnq2mtytjbc" class="animable"></path>
                                        <path d="M89.83,202.17a2.27,2.27,0,1,1-2.51-2A2.28,2.28,0,0,1,89.83,202.17Z"
                                              style="fill: rgb(38, 50, 56); transform-origin: 87.5744px 202.426px;"
                                              id="el2drbvypr6k6" class="animable"></path>
                                        <path d="M93,236a1.65,1.65,0,1,1-3.29.36A1.65,1.65,0,0,1,93,236Z"
                                              style="fill: rgb(38, 50, 56); transform-origin: 91.3552px 236.182px;"
                                              id="elh4r72vxkdfe" class="animable"></path>
                                        <path
                                            d="M109,327,84.79,110.17a8.78,8.78,0,0,1,7.75-9.69l314.37-35a8.79,8.79,0,0,1,9.7,7.75l24.15,216.86a8.77,8.77,0,0,1-7.75,9.69l-314.37,35A8.76,8.76,0,0,1,109,327Z"
                                            style="fill: rgb(255, 255, 255); transform-origin: 262.776px 200.128px;"
                                            id="elz6wjzgr9x68" class="animable"></path>
                                        <g id="eltq98350pgn">
                                        <path
                                            d="M407.44,65.41,92,100.54a8.23,8.23,0,0,0-7.28,9.11L109,327.55a8.23,8.23,0,0,0,9.11,7.28L433.53,299.7a8.25,8.25,0,0,0,7.29-9.11L416.55,72.69A8.25,8.25,0,0,0,407.44,65.41Z"
                                            style="fill: rgb(255, 193, 0); opacity: 0.3; transform-origin: 262.769px 200.121px;"
                                            class="animable"></path>
                                        </g>
                                        <path
                                            d="M181,118.75h-.07l.09,12.73-5.1.56-5.26-23.31,3.61-.4,4,18.39h.07L178,107.91l3.57-.39,3.91,18.55h.07l-.2-19,3.24-.37v23.91l-4.93.54Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 179.625px 119.37px;"
                                            id="elshldx1llwq" class="animable"></path>
                                        <path
                                            d="M195.27,116.06l5.1-.56.37,3.37-5.09.57.77,6.91,6.41-.71.37,3.37-10.11,1.13-2.63-23.61,10.11-1.13.38,3.37-6.41.72Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 196.83px 117.77px;"
                                            id="el38ydrnk5wwi" class="animable"></path>
                                        <path
                                            d="M222.74,126.83l-3.75.42L217.87,123l-4.55.51-.16,4.35-3.41.38,1.15-24,5.43-.6Zm-9.3-6.54,3.57-.4-3.08-11.74h-.07Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 216.245px 115.94px;"
                                            id="el2qz8n2zlm88" class="animable"></path>
                                        <path
                                            d="M232.22,125.78a7.25,7.25,0,0,1-.66-2.86l-.42-3.71c-.24-2.2-1.07-2.92-2.76-2.74l-1.28.15,1.07,9.61-3.71.41L221.83,103l5.6-.62c3.84-.43,5.69,1.17,6.1,4.82l.21,1.85c.27,2.43-.34,4.07-1.9,5v.07c1.94.57,2.74,2.25,3,4.71l.41,3.65a7.05,7.05,0,0,0,.72,2.82ZM225.91,106l.81,7.25,1.45-.16c1.39-.15,2.16-.85,2-2.74l-.26-2.33c-.19-1.69-.84-2.36-2.16-2.22Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 228.9px 114.476px;"
                                            id="elu5sqb1fu7l" class="animable"></path>
                                        <path
                                            d="M240.21,111.06l5.09-.57.38,3.37-5.1.57.77,6.92,6.41-.72.38,3.37L238,125.13l-2.63-23.61,10.12-1.12.37,3.37-6.4.71Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 241.755px 112.765px;"
                                            id="ela2trutycy2e" class="animable"></path>
                                        <path
                                            d="M259.37,122.75l-3.71.42L253,99.56l3.71-.42,1.13,10.12,4.22-.47L261,98.68l3.78-.43,2.63,23.61-3.78.42-1.13-10.11-4.21.46Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 260.205px 110.71px;"
                                            id="el1f0wb0xwpm7" class="animable"></path>
                                        <path d="M267.44,98l3.71-.41,2.63,23.61-3.71.41Z"
                                              style="fill: rgb(38, 50, 56); transform-origin: 270.61px 109.6px;"
                                              id="el5g965l0sr9" class="animable"></path>
                                        <path
                                            d="M284.23,120a7.39,7.39,0,0,1-.66-2.86l-.41-3.71c-.24-2.19-1.08-2.92-2.76-2.73l-1.28.14,1.07,9.62-3.71.41-2.63-23.61,5.6-.62c3.84-.43,5.69,1.17,6.1,4.81l.2,1.86c.27,2.43-.33,4.06-1.89,5v.07c1.94.57,2.75,2.26,3,4.72l.41,3.64a6.81,6.81,0,0,0,.72,2.82Zm-6.3-19.78.81,7.25,1.45-.16c1.38-.16,2.16-.86,1.95-2.75l-.26-2.32c-.19-1.69-.84-2.37-2.16-2.22Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 280.92px 108.721px;"
                                            id="elbju7xythe2d" class="animable"></path>
                                        <path d="M287.41,95.73l3.71-.41,2.63,23.6-3.71.42Z"
                                              style="fill: rgb(38, 50, 56); transform-origin: 290.58px 107.33px;"
                                              id="eltkd6gt0vzy" class="animable"></path>
                                        <path
                                            d="M297.91,101.15h-.06l1.9,17.1-3.34.37L293.78,95l4.66-.52,5.31,13.71h.07l-1.57-14.13,3.3-.37,2.63,23.61-3.81.42Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 300.98px 106.155px;"
                                            id="el1582qp3e3of" class="animable"></path>
                                        <path
                                            d="M315,103.25l5.19-.58.84,7.49c.42,3.77-1.23,6.14-4.87,6.55s-5.77-1.55-6.19-5.32l-1.37-12.28c-.42-3.78,1.23-6.15,4.87-6.55s5.77,1.54,6.19,5.32l.26,2.29-3.51.39L316.08,98c-.19-1.68-1-2.24-2.19-2.11s-1.85.85-1.66,2.54l1.42,12.75c.19,1.69,1,2.21,2.18,2.08s1.85-.82,1.67-2.51l-.49-4.35-1.68.19Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 314.815px 104.636px;"
                                            id="elowmfi3wutr" class="animable"></path>
                                        <path
                                            d="M323.9,110.27l-1.43-8.48L321.38,92l3.71-.42,1.09,9.85.48,8.59Zm3.35,1.3.4,3.58-3.58.4-.39-3.58Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 324.515px 103.565px;"
                                            id="elq74csf2qdlr" class="animable"></path>
                                        <path
                                            d="M297.43,295.55l-54.1,6a16.29,16.29,0,0,1-18-14.39h0a16.29,16.29,0,0,1,14.38-18l54.11-6a16.28,16.28,0,0,1,18,14.39h0A16.28,16.28,0,0,1,297.43,295.55Z"
                                            style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 268.575px 282.354px;"
                                            id="elxktxd1pfh9j" class="animable"></path>
                                        <path
                                            d="M258,291l-2.43.27-.72-2.73-2.95.33-.11,2.82-2.21.25.75-15.58,3.52-.4Zm-6-4.24,2.32-.26-2-7.62h0Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 253.79px 283.95px;"
                                            id="elkbfgi6hu0ql" class="animable"></path>
                                        <path
                                            d="M265,278.54l.22,2c.28,2.45-.76,3.91-3.16,4.18l-1.14.12.64,5.76-2.4.27-1.71-15.31,3.55-.4C263.36,274.88,264.69,276.09,265,278.54Zm-4.9-1.07.58,5.18,1.14-.13c.76-.08,1.14-.48,1-1.57l-.25-2.3c-.12-1.09-.58-1.4-1.34-1.31Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 261.357px 282.995px;"
                                            id="elv4qpqy37ecs" class="animable"></path>
                                        <path
                                            d="M273.21,277.62l.22,2c.27,2.45-.76,3.91-3.17,4.18l-1.13.13.64,5.75-2.41.27-1.7-15.31,3.54-.4C271.61,274,272.93,275.17,273.21,277.62Zm-4.9-1.07.57,5.18,1.14-.13c.77-.08,1.14-.48,1-1.57l-.25-2.3c-.13-1.09-.58-1.39-1.35-1.31Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 269.566px 282.08px;"
                                            id="elys345m5gg3p" class="animable"></path>
                                        <path d="M273.9,273.71l2.41-.27,1.46,13.12,4-.44.24,2.19-6.36.71Z"
                                              style="fill: rgb(38, 50, 56); transform-origin: 277.955px 281.23px;"
                                              id="eluh0cipg1tc" class="animable"></path>
                                        <path
                                            d="M283.35,283l-4.18-9.9,2.52-.28,2.59,6.78h0l1-7.18,2.3-.25-1.9,10.57.56,5.08-2.4.26Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 283.375px 280.125px;"
                                            id="el7besnnnw5ub" class="animable"></path>
                                        <g id="elt47cf1225me">
                                        <rect x="239.43" y="313.43" width="65.44" height="2.02"
                                              style="fill: rgb(153, 153, 153); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 272.15px 314.44px; transform: rotate(-6.36deg);"
                                              class="animable"></rect>
                                        </g>
                                        <path
                                            d="M398.14,240.44,139.41,269.25s-11.24-24.16-4.44-39.84,27.39-6.74,36.11-21.29S169.7,183.93,179.3,164s37.11-30.56,57.65-21.82,27.49,21.92,40.55,18.23S298,139.76,323.88,141s31.44,37.48,29.94,55.36S403.92,198.28,398.14,240.44Z"
                                            style="fill: rgb(255, 255, 255); transform-origin: 265.688px 204.173px;"
                                            id="eltdqik2ywz1f" class="animable"></path>
                                        <polygon
                                            points="320.82 162.16 320.58 160 304.38 161.81 304.86 166.19 305.73 173.97 321.93 172.17 320.82 162.16"
                                            style="fill: rgb(255, 255, 255); transform-origin: 313.155px 166.985px;"
                                            id="el5g055dksd4" class="animable"></polygon>
                                        <g style="clip-path: url(&quot;#freepik--clip-path--inject-31&quot;); transform-origin: 310.205px 167.23px;"
                                           id="elbu2yxz77j6m" class="animable">
                                        <g id="elkoa9bh290w">
                                        <rect x="305.07" y="161.19" width="10.27" height="12.08"
                                              style="opacity: 0.2; transform-origin: 310.205px 167.23px; transform: rotate(173.64deg);"
                                              class="animable"></rect>
                                        </g>
                                        </g>
                                        <polygon
                                            points="320.82 162.16 320.58 160 304.38 161.81 304.86 166.19 305.73 173.97 321.93 172.17 320.82 162.16"
                                            style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 313.155px 166.985px;"
                                            id="elzzw7hnlkxc" class="animable"></polygon>
                                        <line x1="314.63" y1="160.66" x2="314.75" y2="161.73"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 314.69px 161.195px;"
                                              id="elf9pjq5m7ov7" class="animable"></line>
                                        <polygon
                                            points="306.66 187.12 304.81 170.5 313.48 163.94 322.07 162.98 324.51 184.96 306.66 187.12"
                                            style="fill: rgb(38, 50, 56); transform-origin: 314.66px 175.05px;"
                                            id="el83buz7jzldo" class="animable"></polygon>
                                        <g style="clip-path: url(&quot;#freepik--clip-path-2--inject-31&quot;); transform-origin: 310.56px 175.51px;"
                                           id="el8pyllxzf6yn" class="animable">
                                        <g id="el8tjqewcwg3j">
                                        <polygon
                                            points="306.66 187.12 316.31 186.05 313.84 163.9 304.81 170.5 306.66 187.12"
                                            style="opacity: 0.2; transform-origin: 310.56px 175.51px;"
                                            class="animable"></polygon>
                                        </g>
                                        </g>
                                        <polygon
                                            points="306.66 187.12 304.81 170.5 313.48 163.94 322.07 162.98 324.51 184.96 306.66 187.12"
                                            style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 314.66px 175.05px;"
                                            id="elmjjxsozjiaq" class="animable"></polygon>
                                        <g id="elckjunvikwum">
                                        <line x1="314.25" y1="167.58" x2="314.76" y2="172.21"
                                              style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; opacity: 0.2; transform-origin: 314.505px 169.895px;"
                                              class="animable"></line>
                                        </g>
                                        <g id="elhr2k1xqd1ig">
                                        <line x1="315.07" y1="174.97" x2="316.16" y2="184.75"
                                              style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; opacity: 0.2; transform-origin: 315.615px 179.86px;"
                                              class="animable"></line>
                                        </g>
                                        <g id="el12s3pnelzv">
                                        <path
                                            d="M236.64,228.2h3.18a1.82,1.82,0,0,1,1.82,1.82v6.89a0,0,0,0,1,0,0h-6.81a0,0,0,0,1,0,0V230A1.82,1.82,0,0,1,236.64,228.2Z"
                                            style="fill: rgb(153, 153, 153); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 238.235px 232.555px; transform: rotate(173.64deg);"
                                            class="animable"></path>
                                        </g>
                                        <g id="elubwi01tw9qj">
                                        <rect x="237.12" y="236.84" width="4.26" height="9.81"
                                              style="fill: rgb(117, 117, 117); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 239.25px 241.745px; transform: rotate(173.64deg);"
                                              class="animable"></rect>
                                        </g>
                                        <polygon
                                            points="233.5 228.7 242.21 227.72 244.6 223.72 230.28 225.32 233.5 228.7"
                                            style="fill: rgb(117, 117, 117); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 237.44px 226.21px;"
                                            id="elb85jhkmczf" class="animable"></polygon>
                                        <path
                                            d="M258,213.09,246,214.42l-4-12.59-1.7,0,4,13.11h0a1.28,1.28,0,0,0-1.12,1.4l.29,2.56A3.21,3.21,0,0,0,247,221.7l10.28-1.14a1.52,1.52,0,0,0,1.33-1.67Z"
                                            style="fill: rgb(153, 153, 153); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 249.459px 211.774px;"
                                            id="el1oa7u0osqvu" class="animable"></path>
                                        <path
                                            d="M259,219.39l-.61.06a1.74,1.74,0,0,1-1.88-1.29L253,204.34a3.08,3.08,0,0,0-2.91-2.3l-9.83-.25a1.52,1.52,0,0,1-1.46-1.35h0a1.51,1.51,0,0,1,1.33-1.67l1.23-.13,9.75.41a5.37,5.37,0,0,1,5,4.08l3.71,15.08a1,1,0,0,1-.82,1.18h0"
                                            style="fill: rgb(191, 191, 191); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 249.315px 209.051px;"
                                            id="elpadzxnmi7n" class="animable"></path>
                                        <path
                                            d="M199.61,175.75l13.7,44.76,30.77-3.43.66-4.88-7.52-24.81-5-16.67a4.75,4.75,0,0,0-5-3.34L203.35,170a4.4,4.4,0,0,0-3.42,2.3A4.51,4.51,0,0,0,199.61,175.75Z"
                                            style="fill: rgb(255, 193, 0); transform-origin: 222.073px 193.934px;"
                                            id="elzv8hhp1ax3s" class="animable"></path>
                                        <g style="clip-path: url(&quot;#freepik--clip-path-3--inject-31&quot;); transform-origin: 222.088px 196.246px;"
                                           id="el5p3egy7vrjl" class="animable">
                                        <g id="eln22jffkua5e">
                                        <path
                                            d="M199.61,175.75l13.7,44.76,30.77-3.43.66-4.88-7.52-24.81-25.68,2.86-4.84-15.79A3.5,3.5,0,0,0,203,172l-3,.33A4.51,4.51,0,0,0,199.61,175.75Z"
                                            style="opacity: 0.2; transform-origin: 222.088px 196.246px;"
                                            class="animable"></path>
                                        </g>
                                        </g>
                                        <path
                                            d="M199.61,175.75l13.7,44.76,30.77-3.43.66-4.88-7.52-24.81-5-16.67a4.75,4.75,0,0,0-5-3.34L203.35,170a4.4,4.4,0,0,0-3.42,2.3A4.51,4.51,0,0,0,199.61,175.75Z"
                                            style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 222.073px 193.934px;"
                                            id="elmc6obfmfwrl" class="animable"></path>
                                        <path
                                            d="M223.9,255.34c6.31-4.2,25.88-6.38,33-3.67l3-1.21c-7.57-3.91-18-4.07-18-4.07l-4.59.51s-10.09,2.44-16.62,7.92Z"
                                            style="fill: rgb(153, 153, 153); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 240.295px 250.865px;"
                                            id="elj4ovtk28rx" class="animable"></path>
                                        <path d="M256.68,253.5a2.67,2.67,0,0,0,5.31-.59,2.67,2.67,0,1,0-5.31.59Z"
                                              style="fill: rgb(191, 191, 191); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 259.334px 253.199px;"
                                              id="elies3pyjn4x" class="animable"></path>
                                        <path
                                            d="M219.17,257.68a2.67,2.67,0,1,0,2.36-3A2.68,2.68,0,0,0,219.17,257.68Z"
                                            style="fill: rgb(191, 191, 191); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 221.818px 257.334px;"
                                            id="el6v8cfiw4huf" class="animable"></path>
                                        <path
                                            d="M224.41,227.29l30.11-3.35A9.89,9.89,0,0,0,263.25,213v0A2.92,2.92,0,0,0,260,210.4l-44,4.9a2.91,2.91,0,0,0-2.57,3.22v0A9.88,9.88,0,0,0,224.41,227.29Z"
                                            style="fill: rgb(255, 193, 0); transform-origin: 238.362px 218.869px;"
                                            id="elq4521ekpta" class="animable"></path>
                                        <g style="clip-path: url(&quot;#freepik--clip-path-4--inject-31&quot;); transform-origin: 238.406px 218.964px;"
                                           id="el8slcbe2qe5x" class="animable">
                                        <g id="eltdxtw0aajpd">
                                        <path
                                            d="M213.46,218.35l.09.81a9.29,9.29,0,0,0,10.26,8.2l31.3-3.49a9.27,9.27,0,0,0,8.2-10.25l-.09-.82a2.7,2.7,0,0,0-1.86-2.29l.17,1.51a3.32,3.32,0,0,1-2.93,3.66l-27.77,3.1a3.33,3.33,0,0,1-3.67-2.93l-.19-1.77-11.08,1.23A2.76,2.76,0,0,0,213.46,218.35Z"
                                            style="opacity: 0.2; transform-origin: 238.406px 218.964px;"
                                            class="animable"></path>
                                        </g>
                                        </g>
                                        <path
                                            d="M224.41,227.29l30.11-3.35A9.89,9.89,0,0,0,263.25,213v0A2.92,2.92,0,0,0,260,210.4l-44,4.9a2.91,2.91,0,0,0-2.57,3.22v0A9.88,9.88,0,0,0,224.41,227.29Z"
                                            style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 238.362px 218.869px;"
                                            id="elab5ogna8nd" class="animable"></path>
                                        <path
                                            d="M224.33,216.84l-11.94,1.33-4.06-12.59-1.69-.05,4,13.12h0a1.26,1.26,0,0,0-1.12,1.4l.28,2.56a3.23,3.23,0,0,0,3.55,2.84l10.28-1.15a1.5,1.5,0,0,0,1.33-1.66Z"
                                            style="fill: rgb(153, 153, 153); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 215.805px 215.499px;"
                                            id="elqo1ajfpvrkp" class="animable"></path>
                                        <path
                                            d="M225.38,223.13l-.62.07a1.73,1.73,0,0,1-1.87-1.3l-3.51-13.81a3.11,3.11,0,0,0-2.91-2.31l-9.83-.25a1.52,1.52,0,0,1-1.47-1.34h0a1.52,1.52,0,0,1,1.34-1.67l1.22-.14,9.76.41a5.38,5.38,0,0,1,5,4.09L226.19,222a.94.94,0,0,1-.81,1.17h0"
                                            style="fill: rgb(191, 191, 191); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 215.691px 212.795px;"
                                            id="el7c1m41tbdzd" class="animable"></path>
                                        <path
                                            d="M246.75,191.8,235.62,193l.07.6a1.09,1.09,0,0,0,1.21,1l.29,0,36.35-4.05a.71.71,0,0,0,.63-.79l-.11-1Z"
                                            style="fill: rgb(153, 153, 153); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 254.898px 191.683px;"
                                            id="elx84twi2t8v" class="animable"></path>
                                        <path
                                            d="M280.56,169.26l-1.81,18a1.64,1.64,0,0,1-1.46,1.47l-28.05,3.13a1.12,1.12,0,0,1-1.23-1.24l2-18a1.64,1.64,0,0,1,1.45-1.45L279.33,168A1.11,1.11,0,0,1,280.56,169.26Z"
                                            style="fill: rgb(191, 191, 191); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 264.287px 179.929px;"
                                            id="elwkf0064c8" class="animable"></path>
                                        <polygon
                                            points="265.14 177.83 267.31 177.59 268.14 179.47 266.8 181.58 264.63 181.82 263.8 179.95 265.14 177.83"
                                            style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 265.97px 179.705px;"
                                            id="el4zinu77d3r" class="animable"></polygon>
                                        <polygon
                                            points="308.3 163.86 308.06 161.69 291.86 163.51 292.35 167.89 293.21 175.67 309.41 173.86 308.3 163.86"
                                            style="fill: rgb(255, 255, 255); transform-origin: 300.635px 168.68px;"
                                            id="ely0702xjixsr" class="animable"></polygon>
                                        <g style="clip-path: url(&quot;#freepik--clip-path-5--inject-31&quot;); transform-origin: 297.62px 168.635px;"
                                           id="ele7fg43lywdc" class="animable">
                                        <g id="eln22wzuwc8q">
                                        <rect x="292.46" y="162.89" width="10.32" height="11.49"
                                              style="opacity: 0.2; transform-origin: 297.62px 168.635px; transform: rotate(173.64deg);"
                                              class="animable"></rect>
                                        </g>
                                        </g>
                                        <polygon
                                            points="308.3 163.86 308.06 161.69 291.86 163.51 292.35 167.89 293.21 175.67 309.41 173.86 308.3 163.86"
                                            style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 300.635px 168.68px;"
                                            id="el5ttrp3fbkqm" class="animable"></polygon>
                                        <line x1="302.11" y1="162.35" x2="302.23" y2="163.43"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 302.17px 162.89px;"
                                              id="elle3q3h928kr" class="animable"></line>
                                        <polygon
                                            points="294.14 188.82 292.29 172.19 300.96 165.63 309.55 164.68 312 186.66 294.14 188.82"
                                            style="fill: rgb(255, 193, 0); transform-origin: 302.145px 176.75px;"
                                            id="elo94h3cx10fh" class="animable"></polygon>
                                        <g style="clip-path: url(&quot;#freepik--clip-path-6--inject-31&quot;); transform-origin: 297.85px 177.18px;"
                                           id="el3skg27xeojq" class="animable">
                                        <g id="els5quipx5tyq">
                                        <polygon
                                            points="300.96 165.63 303.41 187.7 294.13 188.73 292.29 172.19 300.96 165.63"
                                            style="opacity: 0.2; transform-origin: 297.85px 177.18px;"
                                            class="animable"></polygon>
                                        </g>
                                        </g>
                                        <polygon
                                            points="294.14 188.82 292.29 172.19 300.96 165.63 309.55 164.68 312 186.66 294.14 188.82"
                                            style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 302.145px 176.75px;"
                                            id="el80wvhvxrwnw" class="animable"></polygon>
                                        <line x1="301.73" y1="169.27" x2="302.25" y2="173.9"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 301.99px 171.585px;"
                                              id="el1dm6x4lsb1c" class="animable"></line>
                                        <line x1="302.55" y1="176.67" x2="303.64" y2="186.45"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 303.095px 181.56px;"
                                              id="eljzurs4l4x5" class="animable"></line>
                                        <g id="el0gm0zhhvac2">
                                        <rect x="289.13" y="192.14" width="4.29" height="60.02"
                                              style="fill: rgb(255, 193, 0); transform-origin: 291.275px 222.15px; transform: rotate(-6.36deg);"
                                              class="animable"></rect>
                                        </g>
                                        <g style="clip-path: url(&quot;#freepik--clip-path-7--inject-31&quot;); transform-origin: 291.275px 222.15px;"
                                           id="el8tnduvsj03d" class="animable">
                                        <g id="el7wmhg52kdd">
                                        <rect x="289.13" y="192.14" width="4.29" height="60.02"
                                              style="opacity: 0.2; transform-origin: 291.275px 222.15px; transform: rotate(-6.36deg);"
                                              class="animable"></rect>
                                        </g>
                                        </g>
                                        <g id="elag32ztm7d6">
                                        <rect x="289.13" y="192.14" width="4.29" height="60.02"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 291.275px 222.15px; transform: rotate(-6.36deg);"
                                              class="animable"></rect>
                                        </g>
                                        <polygon
                                            points="263.93 195 327.29 187.94 333.93 247.59 329.67 248.06 323.42 191.91 264.32 198.5 263.93 195"
                                            style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 298.93px 218px;"
                                            id="elg5w6kkf8e4l" class="animable"></polygon>
                                        <polygon
                                            points="314.8 185.97 222.01 196.31 222.37 199.6 329.08 187.72 328.71 184.42 320.92 185.29 314.8 185.97"
                                            style="fill: rgb(255, 193, 0); transform-origin: 275.545px 192.01px;"
                                            id="eldbfma5801hh" class="animable"></polygon>
                                        <g style="clip-path: url(&quot;#freepik--clip-path-8--inject-31&quot;); transform-origin: 275.545px 192.01px;"
                                           id="elk9hzoe8o88r" class="animable">
                                        <g id="eljec9fubaz7">
                                        <polygon
                                            points="314.8 185.97 222.01 196.31 222.37 199.6 329.08 187.72 328.71 184.42 320.92 185.29 314.8 185.97"
                                            style="fill: rgb(255, 255, 255); opacity: 0.6; transform-origin: 275.545px 192.01px;"
                                            class="animable"></polygon>
                                        </g>
                                        </g>
                                        <polygon
                                            points="314.8 185.97 222.01 196.31 222.37 199.6 329.08 187.72 328.71 184.42 320.92 185.29 314.8 185.97"
                                            style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 275.545px 192.01px;"
                                            id="elj3ivp426csg" class="animable"></polygon>
                                        <polygon
                                            points="230.82 259.07 224.17 199.42 266.57 194.7 273.22 254.35 268.95 254.82 262.7 198.68 228.82 202.45 235.08 258.6 230.82 259.07"
                                            style="fill: rgb(255, 193, 0); transform-origin: 248.695px 226.885px;"
                                            id="el3xyjgnbyphv" class="animable"></polygon>
                                        <g style="clip-path: url(&quot;#freepik--clip-path-9--inject-31&quot;); transform-origin: 248.695px 226.885px;"
                                           id="elinrk4vq9skn" class="animable">
                                        <g id="elixn2spp0mzd">
                                        <polygon
                                            points="230.82 259.07 224.17 199.42 266.57 194.7 273.22 254.35 268.95 254.82 262.7 198.68 228.82 202.45 235.08 258.6 230.82 259.07"
                                            style="fill: rgb(255, 255, 255); opacity: 0.2; transform-origin: 248.695px 226.885px;"
                                            class="animable"></polygon>
                                        </g>
                                        </g>
                                        <polygon
                                            points="230.82 259.07 224.17 199.42 266.57 194.7 273.22 254.35 268.95 254.82 262.7 198.68 228.82 202.45 235.08 258.6 230.82 259.07"
                                            style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 248.695px 226.885px;"
                                            id="elxg9iht703jp" class="animable"></polygon>
                                        <path
                                            d="M331.71,203.49a22.49,22.49,0,1,0,2.16,33.17l3.39,2.71,2.58-3.23-3.39-2.71A22.5,22.5,0,0,0,331.71,203.49ZM333,233.35A19.68,19.68,0,1,1,330,205.69,19.66,19.66,0,0,1,333,233.35Z"
                                            style="fill: rgb(117, 117, 117); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 317.668px 221.06px;"
                                            id="elbl0ali3zape" class="animable"></path>
                                        <path
                                            d="M365.57,259.36h0a3.15,3.15,0,0,1-4.44.5l-24.64-19.7a.67.67,0,0,1-.1-.95l3.1-3.88a.68.68,0,0,1,.95-.11l24.64,19.7A3.16,3.16,0,0,1,365.57,259.36Z"
                                            style="fill: rgb(153, 153, 153); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 351.25px 247.814px;"
                                            id="elhu0i78uvjke" class="animable"></path>
                                        <polygon
                                            points="200.08 262.5 197.19 262.82 184.18 212.19 186.97 211.47 200.08 262.5"
                                            style="fill: rgb(153, 153, 153); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 192.13px 237.145px;"
                                            id="eluta8grnl0oo" class="animable"></polygon>
                                        <g id="eldl2z25w2g6b">
                                        <rect x="165.91" y="192.9" width="35.69" height="22.37"
                                              style="fill: rgb(38, 50, 56); transform-origin: 183.755px 204.085px; transform: rotate(-14.41deg);"
                                              class="animable"></rect>
                                        </g>
                                        <path
                                            d="M175.28,209.25l.22.85a1.44,1.44,0,0,1-1.11,2l-.49.12.63,2.45-1,.27-1.68-6.52,1.51-.39A1.44,1.44,0,0,1,175.28,209.25Zm-2.18-.16.56,2.2.49-.12c.32-.09.46-.28.34-.75l-.25-1c-.12-.47-.33-.57-.66-.49Z"
                                            style="fill: rgb(255, 193, 0); transform-origin: 173.735px 211.443px;"
                                            id="el5qvlbatz8sj" class="animable"></path>
                                        <path
                                            d="M175.66,209.1a1.61,1.61,0,1,1,3.11-.8l.87,3.39a1.61,1.61,0,1,1-3.11.8Zm1.91,3.19c.12.47.37.59.7.51s.48-.32.37-.78l-.91-3.52c-.12-.47-.37-.59-.7-.51s-.48.32-.36.78Z"
                                            style="fill: rgb(255, 193, 0); transform-origin: 177.65px 210.395px;"
                                            id="elmxmzfy5h83p" class="animable"></path>
                                        <path
                                            d="M180.39,206.14a1.46,1.46,0,0,1,1.93,1.25l.05.2-1,.25-.07-.27c-.12-.46-.36-.59-.68-.51s-.47.31-.35.78.42.77,1.24,1.18c1,.54,1.46,1,1.65,1.76a1.58,1.58,0,1,1-3,.78l-.11-.4,1-.25.12.47c.12.46.37.58.7.49s.48-.3.36-.77-.41-.77-1.23-1.19c-1.05-.53-1.46-1-1.65-1.75A1.46,1.46,0,0,1,180.39,206.14Z"
                                            style="fill: rgb(255, 193, 0); transform-origin: 181.271px 209.554px;"
                                            id="eljjirramj9k" class="animable"></path>
                                        <path d="M182.52,205.67l1-.26,1.68,6.52-1,.26Z"
                                              style="fill: rgb(255, 193, 0); transform-origin: 183.86px 208.8px;"
                                              id="elw4e6p07u0rq" class="animable"></path>
                                        <path
                                            d="M184,205.29l3.16-.81.24.93-1.07.28,1.44,5.58-1,.27L185.3,206l-1.07.27Z"
                                            style="fill: rgb(255, 193, 0); transform-origin: 185.885px 208.01px;"
                                            id="elrk8cpj46vif" class="animable"></path>
                                        <path d="M187.6,204.36l1-.26,1.67,6.52-1,.26Z"
                                              style="fill: rgb(255, 193, 0); transform-origin: 188.935px 207.49px;"
                                              id="ela5syzsztrxh" class="animable"></path>
                                        <path
                                            d="M189.69,205.49a1.61,1.61,0,1,1,3.11-.8l.87,3.39a1.61,1.61,0,1,1-3.11.8Zm1.91,3.2c.12.46.37.58.7.5s.48-.31.36-.78l-.9-3.52c-.12-.46-.37-.59-.7-.5s-.48.31-.36.78Z"
                                            style="fill: rgb(255, 193, 0); transform-origin: 191.68px 206.785px;"
                                            id="el6oe142rapf4" class="animable"></path>
                                        <path
                                            d="M194.45,204.52h0l1.21,4.72-.92.24L193.05,203l1.29-.33,2,3.64h0l-1-3.9.91-.23,1.68,6.52-1.06.27Z"
                                            style="fill: rgb(255, 193, 0); transform-origin: 195.49px 205.83px;"
                                            id="eldseytuhkb2q" class="animable"></path>
                                        <path
                                            d="M179.54,202.64l.36-.09c.32-.08.55-.27.42-.77l-1.28-5,1-.27,1.26,4.9c.33,1.3-.28,1.82-1.05,2l-.5.11Z"
                                            style="fill: rgb(255, 193, 0); transform-origin: 180.216px 200.015px;"
                                            id="el8nsoneyhpsv" class="animable"></path>
                                        <path
                                            d="M181.09,198a1.61,1.61,0,1,1,3.11-.8l.87,3.39a1.61,1.61,0,1,1-3.11.8Zm1.91,3.19c.12.47.37.59.69.51s.49-.32.37-.78l-.9-3.52c-.12-.47-.37-.59-.7-.51s-.49.32-.37.78Z"
                                            style="fill: rgb(255, 193, 0); transform-origin: 183.08px 199.295px;"
                                            id="elvcrsnqjouf" class="animable"></path>
                                        <path
                                            d="M187.91,196.13l.06.23a1.31,1.31,0,0,1-.33,1.47v0c.61.08,1,.5,1.12,1.19l.14.53a1.43,1.43,0,0,1-1.16,2l-1.61.41-1.67-6.51L186,195A1.36,1.36,0,0,1,187.91,196.13Zm-2.19,0,.44,1.73.4-.11c.39-.09.58-.32.44-.84l-.09-.37c-.12-.46-.33-.63-.7-.53Zm.68,2.66.52,2,.58-.15c.35-.09.49-.3.37-.78l-.15-.57c-.15-.6-.4-.74-.86-.62Z"
                                            style="fill: rgb(255, 193, 0); transform-origin: 186.741px 198.421px;"
                                            id="ely7h0hofg7g" class="animable"></path>
                                        <path
                                            d="M375.83,137.23,329,142.44a3,3,0,0,0-2.63,3.29l1.84,16.49a3,3,0,0,0,3.28,2.63l5.85-.65-4,10,7.84-10.4,37.09-4.13a3,3,0,0,0,2.63-3.29l-1.84-16.5A3,3,0,0,0,375.83,137.23Z"
                                            style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 353.635px 155.71px;"
                                            id="elj1rpqqiv1n" class="animable"></path>
                                        <path
                                            d="M335.82,156.08a2,2,0,0,1-.18-.76l-.11-1c-.06-.59-.28-.78-.73-.73l-.34,0,.28,2.56-1,.11-.7-6.3,1.49-.16a1.27,1.27,0,0,1,1.63,1.28l.06.5a1.25,1.25,0,0,1-.51,1.34v0c.52.15.73.6.81,1.25l.1,1a1.93,1.93,0,0,0,.2.76Zm-1.68-5.28.22,1.94.38-.05c.37,0,.58-.22.52-.73l-.07-.62c-.05-.45-.22-.63-.57-.59Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 334.93px 153.004px;"
                                            id="elhghmac4bmba" class="animable"></path>
                                        <path
                                            d="M338,152.16l1.36-.16.1.9-1.36.15.2,1.85,1.71-.19.1.9-2.7.3-.7-6.3,2.7-.3.1.9-1.71.19Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 338.41px 152.61px;"
                                            id="elhwc65ezteb9" class="animable"></path>
                                        <path
                                            d="M340.06,150.76a1.51,1.51,0,1,1,3-.33l.37,3.27a2,2,0,0,1-.1.9c.06.12.14.13.3.11h.09l.1.88h-.14a.87.87,0,0,1-.9-.33,2.18,2.18,0,0,1-.68.19,1.41,1.41,0,0,1-1.68-1.41Zm1.36,3.23c.05.45.27.6.58.56s.49-.22.44-.67l-.38-3.4c-.05-.45-.26-.6-.58-.57s-.49.23-.44.68Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 341.932px 152.322px;"
                                            id="elz5xng45b87s" class="animable"></path>
                                        <path
                                            d="M344.47,148.74l.54,4.86c.05.45.27.59.58.55s.5-.22.45-.66l-.54-4.86.93-.11.54,4.8a1.49,1.49,0,1,1-3,.33l-.54-4.8Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 345.205px 151.757px;"
                                            id="eleoublxg5rd7" class="animable"></path>
                                        <path d="M347.1,148.45l1-.11.7,6.29-1,.11Z"
                                              style="fill: rgb(38, 50, 56); transform-origin: 347.95px 151.54px;"
                                              id="elq44ygkerej" class="animable"></path>
                                        <path
                                            d="M351.58,154.32a2,2,0,0,1-.18-.76l-.11-1c-.06-.58-.28-.78-.73-.73l-.34,0,.28,2.56-1,.11-.7-6.29,1.49-.17a1.28,1.28,0,0,1,1.63,1.29l.06.49a1.24,1.24,0,0,1-.51,1.34v0c.52.15.73.6.81,1.26l.11,1a1.73,1.73,0,0,0,.19.75Zm-1.68-5.27.22,1.93.38,0c.37,0,.58-.23.52-.73l-.07-.62c-.05-.45-.22-.63-.57-.59Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 350.69px 151.245px;"
                                            id="elyxh1benhgdb" class="animable"></path>
                                        <path
                                            d="M353.71,150.4l1.36-.15.1.9-1.36.15.2,1.84,1.71-.19.1.9-2.69.3-.71-6.29,2.7-.3.1.9-1.71.19Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 354.12px 150.855px;"
                                            id="elmtng7iumxxb" class="animable"></path>
                                        <path
                                            d="M358.31,151.73h0l.17-4.54,1.38-.15.7,6.29-.94.11-.5-4.52h0L359,153.5l-.94.11-1.21-4.37h0l.5,4.45-.87.09-.7-6.29,1.38-.15Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 358.17px 150.41px;"
                                            id="eli2dhfw92uac" class="animable"></path>
                                        <path
                                            d="M361.88,149.49l1.35-.15.1.9-1.35.15.2,1.84,1.71-.19.1.9-2.7.3-.7-6.29,2.7-.3.1.9-1.71.19Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 362.29px 149.945px;"
                                            id="elluy0ues7ow" class="animable"></path>
                                        <path
                                            d="M365,148.21h0l.51,4.56-.89.09-.7-6.29,1.24-.14,1.42,3.66h0l-.42-3.77.88-.1.7,6.29-1,.12Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 365.83px 149.54px;"
                                            id="el29iay9mfsxn" class="animable"></path>
                                        <path d="M367.45,146.18l3.06-.34.1.9-1,.12.6,5.39-1,.11-.6-5.39-1,.11Z"
                                              style="fill: rgb(38, 50, 56); transform-origin: 369.03px 149.1px;"
                                              id="eljsoxd9vngpc" class="animable"></path>
                                        <path
                                            d="M372.26,145.58c1-.11,1.52.41,1.63,1.42l0,.19-.93.11,0-.26c-.05-.45-.25-.6-.57-.57s-.47.23-.42.68.29.77,1,1.27a2.47,2.47,0,0,1,1.3,1.85A1.38,1.38,0,0,1,373,152a1.4,1.4,0,0,1-1.65-1.42l0-.39.94-.1.05.45c.05.45.26.59.58.55s.49-.22.44-.67-.29-.78-1-1.27a2.47,2.47,0,0,1-1.3-1.85C370.86,146.31,371.29,145.68,372.26,145.58Z"
                                            style="fill: rgb(38, 50, 56); transform-origin: 372.664px 148.794px;"
                                            id="el09yphjxrpjr4" class="animable"></path>
                                        <line x1="126.42" y1="270.7" x2="411.32" y2="238.97"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 268.87px 254.835px;"
                                              id="elxram4mz67y" class="animable"></line>
                                        <path
                                            d="M128.49,266.69a8.85,8.85,0,0,0-8.06.36,11.59,11.59,0,0,0-4.71,5.44c-3.33,6.94-12.5,22.83-14.1,27.39s-5,17.17-8.77,22.63S87.27,336,87.27,336l3,76.2c1.59-11.14,7-24,7-24a35.3,35.3,0,0,0,12.53-12.72A22.36,22.36,0,0,0,112.2,372c5.54-9.79,7.49-26.94,7-40.13-.51-14.95,3.94-22,11-35.47S133.75,269.29,128.49,266.69Z"
                                            style="fill: rgb(255, 255, 255); transform-origin: 110.716px 339.045px;"
                                            id="ely8m5jty4npk" class="animable"></path>
                                        <g id="elr3xvwwj2r9r">
                                        <path
                                            d="M128.49,266.69a9.07,9.07,0,0,0-8.06.36c4.35.91,10.1,2.78,9,6.13-1.72,5.29-8.11-2-10.94.65s-12.81,17.65-5.57,23.55,5.69,16.62,1.18,19.87-1.06,10.18,1.09,21.27c1.31,6.71-1,22.22-3,33.43,5.54-9.79,7.49-26.94,7-40.13-.51-14.95,3.94-22,11-35.47S133.74,269.11,128.49,266.69Z"
                                            style="fill: rgb(255, 193, 0); opacity: 0.4; transform-origin: 122.245px 318.933px;"
                                            class="animable"></path>
                                        </g>
                                        <path
                                            d="M90.28,412.15c1.59-11.13,7-24,7-24a35.38,35.38,0,0,0,12.54-12.72c7.35-8.67,9.91-28.67,9.4-43.61s4-21.95,11-35.48,4.09-26.89-1.75-29.65c-4.07-1.92-9.43-1.14-12.77,5.8s-12.5,22.83-14.1,27.38-5,17.18-8.77,22.65S87.27,336,87.27,336"
                                            style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 110.792px 338.967px;"
                                            id="elp6gdw3raho" class="animable"></path>
                                        <path d="M108,300.84s6.13.19,9,2.32"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 112.5px 302px;"
                                              id="elhaecs9jpwre" class="animable"></path>
                                        <path d="M84.94,334.54s-1.35-2.8,4.71-5.94"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 87.2309px 331.57px;"
                                              id="el7fpyxm3owck" class="animable"></path>
                                        </g>
                                        <g id="freepik--Hand--inject-31" class="animable animator-active"
                                           style="transform-origin: 367.664px 368.895px;">
                                        <g id="elpm94a003rv">
                                        <path
                                            d="M299.6,277.46c12.22.1,27.51,55.18,32.27,61.52,0,0,68.25,2.35,76.85,11.87s4.34,17.56,10,26.59S426,401.69,426,401.69L441,427l-64.29,30.8s-34.35-19.68-42.73-24.12S300.77,419.54,294.17,407s-6.93-24.31-8.35-29.52S312,356.67,312,356.67Z"
                                            style="fill-opacity: 0.7; opacity: 0.2; transform-origin: 363.384px 367.63px;"
                                            class="animable"></path>
                                        </g>
                                        <path
                                            d="M449.56,432c-5.54-5.12-11.36-10.56-16.15-15.06h0c-6.11-5.74-10.54-9.93-10.54-9.93-3.64-7.64-6.84-10.21-10.87-16.24s-3.41-12.39-4.36-20.81-4.36-15.67-6.45-20.63-2.26-10.09-2.68-11.2-6.75-6-9.68-10a19.66,19.66,0,0,0-4.75-4.58,16.35,16.35,0,0,0-6.88-2.81,13.6,13.6,0,0,0-3.1-.06,37.64,37.64,0,0,0-6,1.47c-2.58.62-9.1-2.53-12.86-2.38-.7,0-1.39.1-2.09.2h0a62.54,62.54,0,0,0-9.52,2.57c-3.39,1-8.23-1.22-11.73-1.48h-.07a5,5,0,0,0-2.3.29c-3.31,1.39-9.64,3.51-9.64,3.51s-1.63-4.31-3.37-10.28c-.3-1-.61-2-.94-3v0c-1.22-3.64-2.55-6.85-3.37-9.87a23.21,23.21,0,0,1-.53-2.35c-.74-4.37-1.68-7.7-3.39-14.24l-.18-.7c-.54-2-1-4-1.51-5.76h0c-1.27-4.24-3-7.18-7.41-6.82-3.88.32-6,2.8-6.11,9.36s-1.36,6.39.37,15.54,1.09,15.39,2.48,19.91,2.51,13.67,2.51,13.67c-1.93-.45-3.34.65-3.46,1.44s.28,8.13.48,13.4c.17,4.68-2.91,9.78-3.68,13.22,0,0,0,.06,0,.08a6,6,0,0,0-.15,1.13c-.11,3.36,1.94,10,4,18.63s2,18,5.56,23.26a12.05,12.05,0,0,0,2.67,2.77c4.28,3.29,11.2,5.36,18.29,10.59,8.85,6.55,15.18,11.41,20.42,13,3.76,1.16,5.58,2.4,6.69,4.35v0a11.69,11.69,0,0,1,1,2.7c.5,1.81,1.83,3,4.06,4.9a75.11,75.11,0,0,1,9.61,9.64c2.72,3.24,7.22,9.58,12,16.63Z"
                                            style="fill: rgb(255, 255, 255); transform-origin: 370.593px 368.935px;"
                                            id="el6cleoi8kazs" class="animable"></path>
                                        <g id="elh431xbua4sd">
                                        <path
                                            d="M311.64,299.33a23.21,23.21,0,0,0,.53,2.35c-5.74.28-15.69,5.52-15.08,8.79.76,4,2.51,13.45,5,15.14s7.17,2.06,7.17,2.06a8.18,8.18,0,0,0-.91.35h0l-.1.05a7.17,7.17,0,0,0-3.11,2.88h0c-3.16,5.31-1.06,14.9,1.42,19.16,10.31,17.72,4.61,35.06.88,34s-7.94-17.39-7.86-21.48a26.5,26.5,0,0,0-.77-7.11c-1.58-.14-4.49,1.31-7.11,2.86,0,0,0-.05,0-.08.77-3.44,3.85-8.54,3.68-13.22-.2-5.27-.61-12.61-.48-13.4s1.53-1.89,3.46-1.44c0,0-1.13-9.14-2.51-13.67s-.75-10.75-2.48-19.91-.48-9-.37-15.54,2.23-9,6.11-9.36c4.43-.36,6.14,2.58,7.41,6.82a15.2,15.2,0,0,0-1.86-.89,7,7,0,0,0-5.09-.27c-1.92.75-3.18,3.15-3.77,5.52h0c-.86,3.41-.33,6.77,1.63,5.12,2.22-1.86,7.52-2.69,10.79-3C310,291.63,310.9,295,311.64,299.33Z"
                                            style="fill: rgb(255, 193, 0); opacity: 0.4; transform-origin: 302.055px 327.943px;"
                                            class="animable"></path>
                                        </g>
                                        <g id="elbansty2kv2e">
                                        <path
                                            d="M350.25,434.91a11.43,11.43,0,0,0-1-2.69.08.08,0,0,0,0,0c-1.11-1.95-2.93-3.19-6.69-4.35-5.24-1.63-11.57-6.49-20.42-13-7.09-5.23-14-7.3-18.29-10.59,4.7,1.26,10.08-1.25,12.71,1.89,3.82,4.53,17.85,9.42,17.85,9.42C349,424.46,350.25,434.91,350.25,434.91Z"
                                            style="fill: rgb(255, 193, 0); opacity: 0.4; transform-origin: 327.05px 419.595px;"
                                            class="animable"></path>
                                        </g>
                                        <g id="eltfs83zh7hi">
                                        <path
                                            d="M331.8,321c-1.46,0-3,10.29-2.59,13.7,1.11,8.81,11.85,34.25,6,35-2.41.32-8.11-11.4-9.66-17.12-4.69-17.4-5.73-24.85-5.73-24.85s-3.57-9.4-4.31-16.21c.33,1,.64,2,.94,3,1.74,6,3.37,10.28,3.37,10.28s6.33-2.12,9.64-3.51A5,5,0,0,1,331.8,321Z"
                                            style="fill: rgb(255, 193, 0); opacity: 0.4; transform-origin: 326.227px 340.613px;"
                                            class="animable"></path>
                                        </g>
                                        <g id="elbuzh3pz3tkt">
                                        <path
                                            d="M353.12,320c-3,1-5.35,4.73-7.72,5.86-2.9,1.39-10.15-4.15-13.53-4.77,3.5.26,8.34,2.52,11.73,1.48A62.54,62.54,0,0,1,353.12,320Z"
                                            style="fill: rgb(255, 193, 0); opacity: 0.4; transform-origin: 342.495px 323.041px;"
                                            class="animable"></path>
                                        </g>
                                        <g id="el7hs5aa1kxg3">
                                        <path
                                            d="M374.08,320.65a24.66,24.66,0,0,0-2.11,7.13c-.56,8.54,9,38.08,3.82,34.1-6.7-5.17-6.62-28.66-12.4-36.24-1.85-2.43-7.14-5.75-8.15-5.9,3.76-.15,10.28,3,12.86,2.38A37.64,37.64,0,0,1,374.08,320.65Z"
                                            style="fill: rgb(255, 193, 0); opacity: 0.4; transform-origin: 366.287px 340.991px;"
                                            class="animable"></path>
                                        </g>
                                        <g id="el05fct2472w98">
                                        <path
                                            d="M433.39,416.9C428.28,413.32,423,410,419.88,409c-7.66-2.34-10.56-6-12.77-12.67s-.44-6.94,0-14.17-5.34-14.68-4.62-12.94.54,15-1.64,16.15-5-7.05-6.92-13.85-5.83-39.63-8.37-45.63a8.78,8.78,0,0,0-1.46-2.41,19.66,19.66,0,0,1,4.75,4.58c2.93,4,9.26,8.87,9.68,10s.58,6.24,2.68,11.2,5.5,12.2,6.45,20.63.35,14.79,4.36,20.81,7.23,8.6,10.87,16.24C422.85,407,427.28,411.16,433.39,416.9Z"
                                            style="fill: rgb(255, 193, 0); opacity: 0.4; transform-origin: 408.745px 370.19px;"
                                            class="animable"></path>
                                        </g>
                                        <g id="elguiyfh5to7n">
                                        <path
                                            d="M350.57,338.53c1.91,1.24,7.9,22,10,27s2.38,18-.05,14.6S342.78,333.48,350.57,338.53Z"
                                            style="fill: rgb(255, 193, 0); opacity: 0.4; transform-origin: 355.312px 359.405px;"
                                            class="animable"></path>
                                        </g>
                                        <path
                                            d="M374.11,463.4c-4.1-5.95-7.82-11.13-10.19-13.95a75.11,75.11,0,0,0-9.61-9.64c-2.23-1.92-3.56-3.09-4.06-4.9a11.43,11.43,0,0,0-1-2.69.08.08,0,0,0,0,0c-1.11-1.95-2.93-3.19-6.69-4.35-5.24-1.63-11.57-6.49-20.42-13-7.09-5.23-14-7.3-18.29-10.59a12.05,12.05,0,0,1-2.67-2.77c-3.53-5.22-3.5-14.65-5.56-23.26s-4.11-15.27-4-18.63a6,6,0,0,1,.15-1.13s0-.05,0-.08c.77-3.44,3.85-8.54,3.68-13.22-.2-5.27-.61-12.61-.48-13.4s1.53-1.89,3.46-1.44c0,0-1.13-9.14-2.51-13.67s-.75-10.75-2.48-19.91-.48-9-.37-15.54,2.23-9,6.11-9.36c4.43-.36,6.14,2.58,7.41,6.82h0c.53,1.75,1,3.72,1.51,5.76l.18.7c1.71,6.54,2.65,9.87,3.39,14.24a23.21,23.21,0,0,0,.53,2.35c.82,3,2.15,6.23,3.37,9.87v0c.33,1,.64,2,.94,3,1.74,6,3.37,10.28,3.37,10.28s6.33-2.12,9.64-3.51a5,5,0,0,1,2.3-.29h.07c3.5.26,8.34,2.52,11.73,1.48a62.54,62.54,0,0,1,9.52-2.57h0c.7-.1,1.39-.17,2.09-.2,3.76-.15,10.28,3,12.86,2.38a37.64,37.64,0,0,1,6-1.47,13.6,13.6,0,0,1,3.1.06,16.35,16.35,0,0,1,6.88,2.81,19.66,19.66,0,0,1,4.75,4.58c2.93,4,9.26,8.87,9.68,10s.58,6.24,2.68,11.2,5.5,12.2,6.45,20.63.35,14.79,4.36,20.81,7.23,8.6,10.87,16.24c0,0,4.43,4.19,10.54,9.93h0c4.25,4,9.31,8.72,14.26,13.31"
                                            style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 369.638px 367.62px;"
                                            id="eltwnr400fkgp" class="animable"></path>
                                        <path
                                            d="M298.39,330.28c1.51,6.32,2.81,14.31,2.63,17.8s3.08,14.24,2.42,19.26"
                                            style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 300.959px 348.81px;"
                                            id="el3pskbbaf3kf" class="animable"></path>
                                        <path d="M302.84,334.48s3.21-6,6.47-6.81,7,.55,10.55.11,6.52-3.84,9.68-5.24"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 316.19px 328.51px;"
                                              id="eln7xlzpwcig" class="animable"></path>
                                        <path d="M299.82,310.85s5.41-3.59,9-2.16"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 304.32px 309.602px;"
                                              id="elrkchu6jpp4" class="animable"></path>
                                        <path d="M303.65,307a7.14,7.14,0,0,1,4.69-.27"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 305.995px 306.728px;"
                                              id="elp96eja5szpr" class="animable"></path>
                                        <path d="M298.4,292a14.33,14.33,0,0,1,6.08-1.45"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 301.44px 291.275px;"
                                              id="elgqvznr52d88" class="animable"></path>
                                        <path d="M291.74,358.34a29.42,29.42,0,0,1,4.87-3.34"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 294.175px 356.67px;"
                                              id="elv3hom1bbmsk" class="animable"></path>
                                        <path d="M303.2,361.81a29.77,29.77,0,0,0-1.46,5.93"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 302.47px 364.775px;"
                                              id="elc1trxqe99ku" class="animable"></path>
                                        <path
                                            d="M294.69,276.51s.83,7.53,1.9,8,8.31-.65,8.58-2.05-.9-6.78-.9-6.78S298.29,269.37,294.69,276.51Z"
                                            style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 299.95px 278.863px;"
                                            id="elbxji1muf4on" class="animable"></path>
                                        <path d="M295.41,345.12s5.16-4.37,4.29-8.64-2.59-3.82-4.78-3.32"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 297.359px 338.984px;"
                                              id="elkqdib8azj9" class="animable"></path>
                                        <path d="M389.29,332.85c1.8,6.65,4.55,26.64,5,29.56s2.44,10.22,2.44,10.22"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 393.01px 352.74px;"
                                              id="elw8opu3a792" class="animable"></path>
                                        <path d="M343.69,327.54c8.52,7.69,1.36,5.71,15.88,48.65"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 351.63px 351.865px;"
                                              id="elb8jyzsnmye9" class="animable"></path>
                                        <path d="M422.85,407s-6.64-3-8.19-5.27"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 418.755px 404.365px;"
                                              id="el6hgp5x3ah75" class="animable"></path>
                                        <path d="M344.18,423.59c2.34,2.39,4.87,8.24,5,8.6a.08.08,0,0,1,0,0"
                                              style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 346.68px 427.89px;"
                                              id="elkl8e2l0cea" class="animable"></path>
                                        </g>
                                        <defs>
                                        <filter id="active" height="200%">
                                            <feMorphology in="SourceAlpha" result="DILATED" operator="dilate"
                                                          radius="2"></feMorphology>
                                            <feFlood flood-color="#32DFEC" flood-opacity="1" result="PINK">
                                            </feFlood>
                                            <feComposite in="PINK" in2="DILATED" operator="in" result="OUTLINE">
                                            </feComposite>
                                            <feMerge>
                                                <feMergeNode in="OUTLINE"></feMergeNode>
                                                <feMergeNode in="SourceGraphic"></feMergeNode>
                                            </feMerge>
                                        </filter>
                                        <filter id="hover" height="200%">
                                            <feMorphology in="SourceAlpha" result="DILATED" operator="dilate"
                                                          radius="2"></feMorphology>
                                            <feFlood flood-color="#ff0000" flood-opacity="0.5" result="PINK">
                                            </feFlood>
                                            <feComposite in="PINK" in2="DILATED" operator="in" result="OUTLINE">
                                            </feComposite>
                                            <feMerge>
                                                <feMergeNode in="OUTLINE"></feMergeNode>
                                                <feMergeNode in="SourceGraphic"></feMergeNode>
                                            </feMerge>
                                            <feColorMatrix type="matrix"
                                                           values="0   0   0   0   0                0   1   0   0   0                0   0   0   0   0                0   0   0   1   0 ">
                                            </feColorMatrix>
                                        </filter>
                                        </defs>
                                        <defs>
                                        <clipPath id="freepik--clip-path--inject-31">
                                            <polygon
                                                points="320.82 162.16 320.58 160 304.38 161.81 304.86 166.19 305.73 173.97 321.93 172.17 320.82 162.16"
                                                style="fill:#fff;stroke:#263238;stroke-linecap:round;stroke-linejoin:round">
                                            </polygon>
                                        </clipPath>
                                        <clipPath id="freepik--clip-path-2--inject-31">
                                            <polygon
                                                points="306.66 187.12 304.81 170.5 313.48 163.94 322.07 162.98 324.51 184.96 306.66 187.12"
                                                style="fill:#263238;stroke:#263238;stroke-linecap:round;stroke-linejoin:round">
                                            </polygon>
                                        </clipPath>
                                        <clipPath id="freepik--clip-path-3--inject-31">
                                            <path
                                                d="M199.61,175.75l13.7,44.76,30.77-3.43.66-4.88-7.52-24.81-5-16.67a4.75,4.75,0,0,0-5-3.34L203.35,170a4.4,4.4,0,0,0-3.42,2.3A4.51,4.51,0,0,0,199.61,175.75Z"
                                                style="fill:#FFC100;stroke:#263238;stroke-linecap:round;stroke-linejoin:round">
                                            </path>
                                        </clipPath>
                                        <clipPath id="freepik--clip-path-4--inject-31">
                                            <path
                                                d="M224.41,227.29l30.11-3.35A9.89,9.89,0,0,0,263.25,213v0A2.92,2.92,0,0,0,260,210.4l-44,4.9a2.91,2.91,0,0,0-2.57,3.22v0A9.88,9.88,0,0,0,224.41,227.29Z"
                                                style="fill:#FFC100;stroke:#263238;stroke-linecap:round;stroke-linejoin:round">
                                            </path>
                                        </clipPath>
                                        <clipPath id="freepik--clip-path-5--inject-31">
                                            <polygon
                                                points="308.3 163.86 308.06 161.69 291.86 163.51 292.35 167.89 293.21 175.67 309.41 173.86 308.3 163.86"
                                                style="fill:#fff;stroke:#263238;stroke-linecap:round;stroke-linejoin:round">
                                            </polygon>
                                        </clipPath>
                                        <clipPath id="freepik--clip-path-6--inject-31">
                                            <polygon
                                                points="294.14 188.82 292.29 172.19 300.96 165.63 309.55 164.68 312 186.66 294.14 188.82"
                                                style="fill:#FFC100;stroke:#263238;stroke-linecap:round;stroke-linejoin:round">
                                            </polygon>
                                        </clipPath>
                                        <clipPath id="freepik--clip-path-7--inject-31">
                                            <rect x="289.13" y="192.14" width="4.29" height="60.02"
                                                  transform="translate(-22.8 33.61) rotate(-6.36)"
                                                  style="fill:#FFC100;stroke:#263238;stroke-linecap:round;stroke-linejoin:round">
                                            </rect>
                                        </clipPath>
                                        <clipPath id="freepik--clip-path-8--inject-31">
                                            <polygon
                                                points="314.8 185.97 222.01 196.31 222.37 199.6 329.08 187.72 328.71 184.42 320.92 185.29 314.8 185.97"
                                                style="fill:#FFC100;stroke:#263238;stroke-linecap:round;stroke-linejoin:round">
                                            </polygon>
                                        </clipPath>
                                        <clipPath id="freepik--clip-path-9--inject-31">
                                            <polygon
                                                points="230.82 259.07 224.17 199.42 266.57 194.7 273.22 254.35 268.95 254.82 262.7 198.68 228.82 202.45 235.08 258.6 230.82 259.07"
                                                style="fill:#FFC100;stroke:#263238;stroke-linecap:round;stroke-linejoin:round">
                                            </polygon>
                                        </clipPath>
                                        </defs>
                                        </svg>
                                    </div>
                                </div>


                            </div>
                            <div class="card-footer bg-secondary-light">

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
