<%-- 
    Document   : pagos
    Created on : 17/06/2022, 11:43:00 AM
    Author     : Pablo
--%>

<%@page import="ModeloVO.CiudadVO"%>
<%@page import="ModeloDAO.CiudadDAO"%>
<%@page import="ModeloVO.DepartamentoVO"%>
<%@page import="ModeloDAO.DepartamentoDAO"%>
<%@page import="java.time.LocalDate"%>
<%@page import="ModeloVO.TipoCargaVO"%>
<%@page import="ModeloDAO.TipoCargaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                       data-target="#addOrderModalside">Nuevo Envío</a>
                    <ul class="metismenu" id="menu">
                        <li><a href="indexCliente.jsp" class="ai-icon" aria-expanded="false">
                                <i class="flaticon-381-networking"></i>
                                <span class="nav-text">Inicio</span>
                            </a>
                        </li>

                        <li><a href="ConsutarEnviosCliente.jsp" class="ai-icon" aria-expanded="false">
                                <i class="flaticon-381-box-2"></i>
                                <span class="nav-text">Envíos</span>
                            </a>
                        </li>

                        <li><a href="ConsultarPagos.jsp" class="ai-icon" aria-expanded="false">
                                <i class="fa fa-money"></i>
                                <span class="nav-text">Pagos</span>
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
                                    <h5 class="modal-title">Publicar Envío</h5>
                                    <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form method="post"  action="Envio">
                                        <input type="hidden" value="<%=idusuario%>" name="txtidusuario"><br>
                                        <div class="form-group">
                                            <label class="text-black font-w500">Tipo de Carga</label>
                                            <select class="form-control form-control-lg default-select " name="txtidtipo_carga">
                                                <option>Seleccione...</option>
                                                <%                        TipoCargaDAO tipocargaDAO = new TipoCargaDAO();

                                                    for (TipoCargaVO tipocargaVO : tipocargaDAO.listar()) {

                                                %>
                                                <option value="<%=tipocargaVO.getIdtipo_carga()%>"><%=tipocargaVO.getNombre()%></option>
                                                <%}%>
                                            </select>
                                        </div>
                                        <div class="d-flex">
                                            <div class="form-group col-6 pl-0">
                                                <label class="text-black font-w500">Nombre Carga</label>
                                                <input type="text" class="form-control" name="txtnombrecarga">
                                            </div>
                                            <div class="form-group col-6 pl-0 pr-0">
                                                <label class="text-black font-w500">Peso(Kg)</label>
                                                <input type="text" class="form-control" name="txtpeso">
                                            </div>
                                        </div>

                                        <div class="d-flex">
                                            <div class="form-group col-6 pl-0">
                                                <label class="text-black font-w500">Cantidad</label>
                                                <input type="text" class="form-control" name="txtcantidad">
                                            </div>
                                            <div class="form-group col-6 pl-0 pr-0">
                                                <label class="text-black font-w500">Longitud(m²)</label>
                                                <input type="text" class="form-control" name="txtlongitud">
                                            </div>
                                        </div>

                                        <%
                                            LocalDate fecha = LocalDate.now();
                                        %>

                                        <input type="hidden" value="<%=fecha%>" name="txtfecha_registro"><br>

                                        <div class="form-group">
                                            <label class="text-black font-w500">Dirección</label>
                                            <input type="text" class="form-control" name="txtdireccion">
                                        </div>

                                        <div class="d-flex">
                                            <div class="form-group col-6 pl-0">
                                                <label class="text-black font-w500">Departamento</label>
                                                <select class="form-control form-control-lg default-select " name="txtiddepartamento">
                                                    <option>Seleccione...</option>
                                                    <%
                                                        DepartamentoDAO deptDAO = new DepartamentoDAO();

                                                        for (DepartamentoVO deptVO : deptDAO.listar()) {

                                                    %>
                                                    <option value="<%=deptVO.getIddepartamento()%>"><%=deptVO.getNombre()%></option>
                                                    <%}%>   
                                                </select>
                                            </div>
                                            <div class="form-group col-6 pl-0 pr-0">
                                                <label class="text-black font-w500">Ciudad</label>
                                                <select class="form-control form-control-lg default-select " name="txtidciudad">
                                                    <option>Seleccione...</option>
                                                    <%
                                                        CiudadDAO ciudadDAO = new CiudadDAO();

                                                        for (CiudadVO ciudadVO : ciudadDAO.listar()) {

                                                    %>
                                                    <option value="<%=ciudadVO.getIdciudad()%>"><%=ciudadVO.getNombre()%></option>
                                                    <%}%> 
                                                </select>
                                            </div>
                                        </div>

                                        <div class="d-flex">
                                            <div class="form-group col-6 pl-0">
                                                <label class="text-black font-w500">Código Postal</label>
                                                <input type="text" class="form-control" name="txtcodigo_postal">
                                            </div>
                                            <div class="form-group col-6 pl-0 pr-0">
                                                <label class="text-black font-w500">Fecha límite de llegada</label>
                                                <input type="date" class="form-control" name="txtfecha_limite_llegada">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label class="text-black font-w500">Comentario</label>
                                            <textarea class="form-control" rows="4" id="comment" name="txtcomentario_envio"></textarea>
                                        </div>

                                        <input type="hidden" value ="1" name="txtestado"><br>

                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary w-100">Publicar</button>
                                            <input type="hidden" value="1" name="opcion">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 d-flex">
                        <div class="col-6">
                            <svg class="animated" id="freepik_stories-cash-payment" xmlns="http://www.w3.org/2000/svg"
                                 xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 500 500" version="1.1"
                                 xmlns:svgjs="http://svgjs.com/svgjs">
                            <style>
                                svg#freepik_stories-cash-payment:not(.animated) .animable {
                                    opacity: 0;
                                }

                                svg#freepik_stories-cash-payment.animated #freepik--hand-2--inject-2 {
                                    animation: 1.5s Infinite linear wind;
                                    animation-delay: 0s;
                                }

                                @keyframes wind {
                                    0% {
                                        transform: rotate(0deg);
                                    }

                                    25% {
                                        transform: rotate(1deg);
                                    }

                                    75% {
                                        transform: rotate(-1deg);
                                    }
                                }

                                .animator-hidden {
                                    display: none;
                                }
                            </style>
                            <g id="freepik--background-simple--inject-2" class="animable"
                               style="transform-origin: 248.298px 250.609px;">
                            <g id="eldxh9cczw0qw">
                            <path
                                d="M67.93,167.09s-27.88,72,11.3,144.5S199.11,422.39,263.7,455.14s131.66,16.8,163.53-36.84-11.84-91.93-11.9-168.42,11.45-96.74-30-161.36-143.06-78.93-219.9-31S67.93,167.09,67.93,167.09Z"
                                style="fill: rgb(255, 255, 255); opacity: 0.7; transform-origin: 248.588px 250.609px;"
                                class="animable"></path>
                            </g>
                            <path
                                d="M77.07,166.45c28.82-53.06,101.32-115,200.78-89.2S444.51,157.63,433.5,252.59,364.63,426.45,240,428.76,13.87,282.8,77.07,166.45Z"
                                style="fill: rgb(255, 193, 0); transform-origin: 246.206px 249.997px;"
                                id="el98q2iascn8w" class="animable"></path>
                            <g id="elj2gvykpxhh9">
                            <path
                                d="M77.07,166.45c28.82-53.06,101.32-115,200.78-89.2S444.51,157.63,433.5,252.59,364.63,426.45,240,428.76,13.87,282.8,77.07,166.45Z"
                                style="fill: rgb(255, 255, 255); opacity: 0.7; transform-origin: 246.206px 249.997px;"
                                class="animable"></path>
                            </g>
                            </g>
                            <g id="freepik--Documents--inject-2" class="animable"
                               style="transform-origin: 247.226px 287.45px;">
                            <g id="elv41blzg6xks">
                            <rect x="373.07" y="242.94" width="74.72" height="49.06" rx="4.54"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 410.43px 267.47px; transform: rotate(-8.8deg);"
                                  class="animable"></rect>
                            </g>
                            <line x1="371.44" y1="259.81" x2="445.28" y2="248.38"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 408.36px 254.095px;"
                                  id="elamxmcwtwi5i" class="animable"></line>
                            <g id="el6olk18zjs7n">
                            <rect x="428.84" y="262.16" width="12.07" height="17.38"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 434.875px 270.85px; transform: rotate(-8.8deg);"
                                  class="animable"></rect>
                            </g>
                            <path
                                d="M432.42,266c2.52-3,6.66-1,5.69,8.31l3.69,1.83.36,2.34-11.92,1.85-.49-3.13,4.5-1.75S430.05,268.83,432.42,266Z"
                                style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 435.955px 272.518px;"
                                id="eln4s9nmkwle" class="animable"></path>
                            <path
                                d="M406.55,287s8.62.07,6.15-1.65-2.84-3.46-.74-3.49,5.62,4,5.34,1.54,1.24-.86,1.53-.7,2.78-.84,2.9-.55-.05,1.1,8.06-.15"
                                style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 418.17px 284.43px;"
                                id="el9gh9n89d3fe" class="animable"></path>
                            <line x1="377.7" y1="267.48" x2="413.86" y2="261.88"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 395.78px 264.68px;"
                                  id="eld31avf8ny49" class="animable"></line>
                            <line x1="378.34" y1="271.58" x2="399.64" y2="268.28"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 388.99px 269.93px;"
                                  id="elrvg7qogoax" class="animable"></line>
                            <line x1="379.46" y1="278.81" x2="409.17" y2="274.21"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 394.315px 276.51px;"
                                  id="el0y8krqi8f5yb" class="animable"></line>
                            <line x1="388.68" y1="251.77" x2="424.94" y2="246.15"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 406.81px 248.96px;"
                                  id="el2q5f18x2tzs" class="animable"></line>
                            <polygon points="43.35 226.44 124.42 210.25 152.73 346.17 66.56 364.65 43.35 226.44"
                                     style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 98.04px 287.45px;"
                                     id="elj7tszjet6t" class="animable"></polygon>
                            <line x1="63.3" y1="345.26" x2="149.3" y2="329.69"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 106.3px 337.475px;"
                                  id="elvn68noqct8" class="animable"></line>
                            <line x1="139.11" y1="318.13" x2="98.04" y2="325.71"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 118.575px 321.92px;"
                                  id="el4d3p4txpsv7" class="animable"></line>
                            <line x1="133.02" y1="311.31" x2="121.02" y2="313.08"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 127.02px 312.195px;"
                                  id="elty6unku18s" class="animable"></line>
                            <line x1="134.85" y1="297.43" x2="73.55" y2="308.93"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 104.2px 303.18px;"
                                  id="elq2e6d6xeyx" class="animable"></line>
                            <line x1="53.95" y1="289.58" x2="137.86" y2="274.77"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-dasharray: 1, 2; transform-origin: 95.905px 282.175px;"
                                  id="el02w7x0gpgm5" class="animable"></line>
                            <line x1="143.11" y1="341.77" x2="92.14" y2="352.45"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 117.625px 347.11px;"
                                  id="el2qegdb02rvn" class="animable"></line>
                            <line x1="141.59" y1="337.47" x2="117.63" y2="341.77"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 129.61px 339.62px;"
                                  id="elc79d4shlaak" class="animable"></line>
                            <line x1="128.63" y1="265.81" x2="86.6" y2="274.14"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 107.615px 269.975px;"
                                  id="elxz68vz6xxrd" class="animable"></line>
                            <line x1="125.31" y1="256.48" x2="111.92" y2="259.11"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 118.615px 257.795px;"
                                  id="elkxz1qthq2jb" class="animable"></line>
                            <line x1="124.52" y1="250" x2="63.3" y2="261.8"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 93.91px 255.9px;"
                                  id="el5jhbn03jlhv" class="animable"></line>
                            <line x1="118.96" y1="218.46" x2="102.43" y2="221.88"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 110.695px 220.17px;"
                                  id="elw24ovypmo1" class="animable"></line>
                            <line x1="63.3" y1="230.21" x2="49.04" y2="232.98"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 56.17px 231.595px;"
                                  id="elvrsc4vgt1zf" class="animable"></line>
                            <path d="M54.23,240.84a7.41,7.41,0,0,1,4-4.64"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 56.23px 238.52px;"
                                  id="elqw37txnl9to" class="animable"></path>
                            <path d="M60.57,250A7.45,7.45,0,0,1,54,242.84"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 57.285px 246.42px;"
                                  id="elfpzyz47s906" class="animable"></path>
                            <path d="M66.13,248.3A6.9,6.9,0,0,1,62.5,250"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 64.315px 249.15px;"
                                  id="elfvoiyud93xi" class="animable"></path>
                            <path d="M61.27,235.52a7.46,7.46,0,0,1,6.22,11.18"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 64.878px 241.11px;"
                                  id="el2e5m5beoqii" class="animable"></path>
                            <path d="M75.85,237.4c-1.33-.42-2.65-.9-4-1.2"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 73.85px 236.8px;"
                                  id="eluci6actbsb" class="animable"></path>
                            <path d="M87.19,238.36c-1.13,2.69-7.45.24-9.29-.32"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 82.545px 238.819px;"
                                  id="el2cuadrd1kx4" class="animable"></path>
                            <path d="M76.37,231.22,88.19,234c-.19.79-.34,1.59-.49,2.38"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 82.28px 233.8px;"
                                  id="ela5e00egbkqu" class="animable"></path>
                            <path d="M70.52,234c1.26-3,.76-4,3.9-3.27"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 72.47px 232.251px;"
                                  id="el274dit23qvt" class="animable"></path>
                            </g>
                            <g id="freepik--speech-bubble-2--inject-2" class="animable animator-active animator-hidden"
                               style="transform-origin: 182.885px 413.573px;">
                            <path d="M214.75,446.27l15.65,4.8-11.63-13.7a40.22,40.22,0,0,0,10.3-25.74"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 222.575px 431.35px;"
                                  id="elztaixu5fc4o" class="animable"></path>
                            <path d="M195.76,452.31a52.6,52.6,0,0,0,14.67-7.37"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 203.095px 448.625px;"
                                  id="elqrwuu9eg6og" class="animable"></path>
                            <path d="M135.37,423.21c4.61,22.21,29.15,35.89,54.82,30.57"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 162.78px 439.069px;"
                                  id="ellvxdb1c047g" class="animable"></path>
                            <path d="M139.11,398.17a40.17,40.17,0,0,0-2.5,5.82"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 137.86px 401.08px;"
                                  id="elawgajgirozn" class="animable"></path>
                            <path d="M228.32,403.93c-4.6-22.21-29.15-35.89-54.81-30.56a51.42,51.42,0,0,0-29.72,17.69"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 186.055px 388.074px;"
                                  id="elq69277zsse" class="animable"></path>
                            <path
                                d="M201.09,395.79c-7.39-8.05-17.46-2.47-21.65,5.7-6.92-6-18.35-7.47-22.21,2.76-6.52,17.23,15.78,27.74,26.1,31.54,1.17.44,2.13.81,2.93,1.08.65-.55,1.41-1.25,2.33-2.09C196.75,427.41,213.55,409.37,201.09,395.79Z"
                                style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 180.799px 414.371px;"
                                id="eln6x7am3mobq" class="animable"></path>
                            </g>
                            <g id="freepik--speech-bubble-1--inject-2" class="animable"
                               style="transform-origin: 292.165px 103.272px;">
                            <path d="M262.54,68l-15.11-6.29,10.25,14.76A40.19,40.19,0,0,0,245,101.07"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 253.77px 81.39px;"
                                  id="elxyaz2bzbyzp" class="animable"></path>
                            <path d="M282,63.79a53,53,0,0,0-15.31,5.92"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 274.345px 66.75px;"
                                  id="el334ha86u7n6" class="animable"></path>
                            <path d="M339.33,98.57C336.88,76,313.77,60,287.71,62.87"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 313.52px 80.5535px;"
                                  id="elobh2ynfroa" class="animable"></path>
                            <path d="M333.2,123.13a40.46,40.46,0,0,0,3-5.55"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 334.7px 120.355px;"
                                  id="elkqdimqaxs5b" class="animable"></path>
                            <path d="M245,108.81c2.45,22.55,25.56,38.53,51.62,35.7a51.46,51.46,0,0,0,31.28-14.75"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 286.45px 126.822px;"
                                  id="el9vapn63zg8j" class="animable"></path>
                            <g id="elwq1t8khjkzi">
                            <circle cx="291.93" cy="101.71" r="23.73"
                                    style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 291.93px 101.71px; transform: rotate(-28.16deg);"
                                    class="animable"></circle>
                            </g>
                            <polyline points="282.91 104.69 290.01 111.39 301.85 91"
                                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 292.38px 101.195px;"
                                      id="eljv9hqz0r6ts" class="animable"></polyline>
                            </g>
                            <g id="freepik--hand-2--inject-2" class="animable" style="transform-origin: 344.89px 328.85px;">
                            <g id="ell1vde1cmlx">
                            <path
                                d="M321.59,327.71s-3.56,43.08,1.59,53.53,7.73,81.85,5.42,90.83c0,0,16.58,4.18,23.14-1.76s16.65-.22,33.27-6,4.63-134.07,4.63-134.07l.51-46.67-27.41-24.42Z"
                                style="fill-opacity: 0.7; opacity: 0.2; transform-origin: 357.107px 366.324px;"
                                class="animable"></path>
                            </g>
                            <path
                                d="M343.69,348.43a2.32,2.32,0,0,1-.49.83c-3.54,3.35-18.65,7.07-31.63,9.75-10.75,2.23-20,3.74-20,3.74s-7.12-59.17-7.12-65.39-11.48-106.92-11.48-106.92l27.52-1.19L337,187.67s.22,2.69.59,7.39C340,225,348.28,336.62,343.69,348.43Z"
                                style="fill: rgb(255, 193, 0); transform-origin: 309.011px 275.21px;" id="el5eyvu9cqzrn"
                                class="animable"></path>
                            <g style="clip-path: url(&quot;#freepik--clip-path--inject-2&quot;); transform-origin: 311.151px 273.34px;"
                               id="elidehtvdjgie" class="animable">
                            <g id="el4lhz7vi2qf8">
                            <path
                                d="M343.69,348.43,311.57,355l-12.13,2.49c-3.29-3.23-5.8-3.29-5.8-3.29l-1-9.05-1.57-14.81-13.82-130.3c3-2.07,4.48-6.6,4.48-6.6l18.5-.67,32.05-1.17,5.29,3.42C340,225,348.28,336.62,343.69,348.43Z"
                                style="fill-opacity: 0.7; opacity: 0.2; transform-origin: 311.151px 274.545px;"
                                class="animable"></path>
                            </g>
                            <path
                                d="M343.69,348.43,311.57,355l-12.13,2.49c-3.29-3.23-5.8-3.29-5.8-3.29l-1-9.05-1.57-14.81-13.82-130.3c3-2.07,4.48-6.6,4.48-6.6l18.5-.67,32.05-1.17,5.29,3.42C340,225,348.28,336.62,343.69,348.43Z"
                                style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 311.151px 274.545px;"
                                id="elgvfe9erj8ut" class="animable"></path>
                            <polygon
                                points="295.34 310.07 306.06 310.05 306.07 313.4 303.09 314.46 296.22 315.21 295.34 310.07"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 300.705px 312.63px;"
                                id="elz9yegrnoz9" class="animable"></polygon>
                            <polygon
                                points="296 316.97 303.88 316.7 305.9 317.66 305.8 322.11 296.6 322.21 296 316.97"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 300.95px 319.455px;"
                                id="el2ftowc3ezx3" class="animable"></polygon>
                            <polygon
                                points="297.26 324.08 306.26 323.43 306.16 326.8 301.81 328.34 297.21 328.08 297.26 324.08"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 301.735px 325.885px;"
                                id="elowav7xy8mtk" class="animable"></polygon>
                            <polygon
                                points="297.8 329.76 305.07 330.13 305.73 331.99 304.67 334.04 298.17 334.46 297.05 331.29 297.8 329.76"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 301.39px 332.11px;"
                                id="elkxcqu8rfq6p" class="animable"></polygon>
                            <path
                                d="M306.18,336.27l1,2.91a2.18,2.18,0,0,1,0,2,1.65,1.65,0,0,1-1.52.54c-.56-.05-1.11-.24-1.67-.27-1.69-.07-3.24,1.32-4.9,1-.65-1.8-2.29-4.44-.07-5.25C299.43,337.07,306.42,336.93,306.18,336.27Z"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 302.659px 339.384px;"
                                id="elqmaeg2xva" class="animable"></path>
                            <path
                                d="M306.15,344.46a16.41,16.41,0,0,1,.34,2.1,2.68,2.68,0,0,1-.74,2.51,3,3,0,0,1-1.39.37l-5.78.52a26.52,26.52,0,0,1-.05-3.28c.34-1.3.1-1.19,1.33-1.72C301.81,344.13,304.15,345.45,306.15,344.46Z"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 302.529px 347.21px;"
                                id="elvg76c6p4ypk" class="animable"></path>
                            <path d="M285.13,203s2.18,21.07,2.28,25.24"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 286.27px 215.62px;"
                                  id="el27789730d6c" class="animable"></path>
                            <line x1="289.83" y1="203.23" x2="290.85" y2="214.84"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 290.34px 209.035px;"
                                  id="el58kkmqwsvif" class="animable"></line>
                            <polygon points="306.12 198.84 307.44 212.45 309.29 212.63 308.69 198.97 306.12 198.84"
                                     style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 307.705px 205.735px;"
                                     id="el7fasccrosoy" class="animable"></polygon>
                            <g id="el6itfotc8yue">
                            <path
                                d="M343.69,348.43a2.32,2.32,0,0,1-.49.83c-3.54,3.35-18.65,7.07-31.63,9.75v-9l-18.89-4.84-2.85-.73,1.28-14.08L296,276.56l4.27-83.75.18-3.56L337,187.67s.22,2.69.59,7.39C340,225,348.28,336.62,343.69,348.43Z"
                                style="fill-opacity: 0.7; opacity: 0.2; transform-origin: 317.441px 273.34px;"
                                class="animable"></path>
                            </g>
                            </g>
                            <path
                                d="M343.69,348.43a2.32,2.32,0,0,1-.49.83c-3.54,3.35-18.65,7.07-31.63,9.75-10.75,2.23-20,3.74-20,3.74s-7.12-59.17-7.12-65.39-11.48-106.92-11.48-106.92l27.52-1.19L337,187.67s.22,2.69.59,7.39C340,225,348.28,336.62,343.69,348.43Z"
                                style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 309.011px 275.21px;"
                                id="el7h9uubp3gr6" class="animable"></path>
                            <path
                                d="M363.06,482.7c.23-2.11-3.09-32.38-3.15-35.67-.16-9-2.71-20.81-2.71-20.81-3.56-9.1-6.33-30.07-15.83-43.52S331.88,353.43,330.3,340s-1.19-12.27-.79-24.19A175.41,175.41,0,0,0,328.32,289c-.79-7.92-2.37-21.85,0-28.34s8.57-8,15.36-1.5,9.56,33.15,9.56,36.44,0,13.57,2.38,17.53c0,0,13.45-6.88,13.45-8.78s-.4-18.69,1.58-19.59l-7.91-25.6,15-5.33a39,39,0,0,1,7.24,8.7,46.94,46.94,0,0,1,4.23,8.49c6.33,16.79,16.5,28.5,18.6,33.33s0,43.19,0,50.32-4.6,40-4.48,45.53c.09,4,2.79,18.88,5.48,30.29,1,4.4,7.07,36.28,8,38.81Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 371.939px 368.265px;"
                                id="elkmbylga09g" class="animable"></path>
                            <g id="elsvi25hns4mn">
                            <path
                                d="M374.9,283.07c-.1,2.15,2.47,19.29,2.47,19.29,1.78,4.27-7.94,18.83-7.94,18.83-2.1,1.18-3,8.5-3,8.5-6.58-1.46-21.65-16.61-21.65-16.61S343,319.29,341,334.66s10.68,51.88,16.08,77.09S359.91,447,359.91,447c-.16-9-2.71-20.81-2.71-20.81-3.56-9.1-6.33-30.07-15.83-43.52S331.88,353.43,330.3,340s-1.19-12.27-.79-24.19A175.41,175.41,0,0,0,328.32,289c-.79-7.92-2.37-21.85,0-28.34s8.57-8,15.36-1.5,9.56,33.15,9.56,36.44,0,13.57,2.38,17.53c0,0,13.45-6.88,13.45-8.78s-.4-18.69,1.58-19.59l-7.91-25.6,15-5.33a39,39,0,0,1,7.24,8.7C380.13,272.23,375,281.73,374.9,283.07Z"
                                style="fill: rgb(255, 193, 0); opacity: 0.4; transform-origin: 356.024px 350.415px;"
                                class="animable"></path>
                            </g>
                            <g id="elc1alrm5fpe">
                            <path
                                d="M400.12,402.85c.66-6,2.63-20.26,3.88-29.16-1.53,6.95-4,10.47-4,10.47s4.26-51,4.68-54.11,4.72-17.09,3.14-25.75c2.1,4.82,0,43.19,0,50.32s-4.6,40-4.48,45.53c.09,4,4.38,29.49,7.07,40.9C404.63,432.65,399.46,408.88,400.12,402.85Z"
                                style="fill: rgb(255, 193, 0); opacity: 0.4; transform-origin: 405.205px 372.675px;"
                                class="animable"></path>
                            </g>
                            <path
                                d="M416.79,469.25c-3.16-9.1-13.31-63.6-13.43-69.1s4.48-38.41,4.48-45.53,2.1-45.5,0-50.32-12.27-16.54-18.6-33.33a43.66,43.66,0,0,0-11.47-17.19l-15,5.33,7.91,25.6c-2,.9-1.58,17.69-1.58,19.59s-13.45,8.78-13.45,8.78c-2.38-4-2.38-14.24-2.38-17.53s-2.77-29.95-9.56-36.44-13-5-15.36,1.5-.79,20.42,0,28.34a175.41,175.41,0,0,1,1.19,26.84c-.4,11.92-.8,10.74.79,24.19s1.58,29.27,11.07,42.72,12.27,34.42,15.83,43.52c0,0,6.72,48.57,5.86,56.48"
                                style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 371.946px 368.24px;"
                                id="elk6v93o885u" class="animable"></path>
                            <path d="M355.62,313.08s2.37,11.07,7.71,16.61"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 359.475px 321.385px;"
                                  id="el678qwv3hktf" class="animable"></path>
                            <path d="M357.06,318.13s10,3.06,14.18,3.25"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 364.15px 319.755px;"
                                  id="elpmb3zc6a5uq" class="animable"></path>
                            <path d="M369.07,304.3s7.12-3.29,11.67-1.31"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 374.905px 303.328px;"
                                  id="elt0busi7ag1" class="animable"></path>
                            <path d="M370.65,284.71s5.54-.51,6.72-3.28"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 374.01px 283.07px;"
                                  id="elr4azmy65car" class="animable"></path>
                            <path d="M343.2,385.52s10.64,13.21,13.8,19.93"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 350.1px 395.485px;"
                                  id="elwv30izuzls" class="animable"></path>
                            <path d="M405.07,327.71c-1.78,10.49-4.16,39.17-4.95,44.31"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 402.595px 349.865px;"
                                  id="elko7qdvo69lf" class="animable"></path>
                            <path d="M408.47,307.93c.3,9.5-2,14.44-2,14.44"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 407.483px 315.15px;"
                                  id="ele6ie1vb7buk" class="animable"></path>
                            <path
                                d="M326.68,175,400,194.34S374.23,272.55,369,282.25l-8.74,68.18s-46.84-2.06-68.38-8.57c0,0,13.62-71,14.35-80.47S326.68,175,326.68,175Z"
                                style="fill: rgb(255, 193, 0); transform-origin: 345.94px 262.715px;" id="elu0h1l39eey"
                                class="animable"></path>
                            <g style="clip-path: url(&quot;#freepik--clip-path-2--inject-2&quot;); transform-origin: 345.33px 265.965px;"
                               id="el57hydzehfd4" class="animable">
                            <g id="elnawh43ti5x8">
                            <path
                                d="M310.91,257.19l16.16-69.09s6.95-3.45,9.64-6.6l52.53,14.94s.16,5.15,3.17,8.45L365.9,281.28l-6.43,56.31s-8.55.68-9.37,7c0,0-27.72,1.5-46.31-3.4,0,0-2.19-6.83-5.54-11.15Z"
                                style="fill-opacity: 0.7; opacity: 0.2; transform-origin: 345.33px 263.153px;"
                                class="animable"></path>
                            </g>
                            <path
                                d="M310.91,257.19l16.16-69.09s6.95-3.45,9.64-6.6l52.53,14.94s.16,5.15,3.17,8.45L365.9,281.28l-6.43,56.31s-8.55.68-9.37,7c0,0-27.72,1.5-46.31-3.4,0,0-2.19-6.83-5.54-11.15Z"
                                style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 345.33px 263.153px;"
                                id="elocme7vtm03" class="animable"></path>
                            <path
                                d="M324.36,260.78s4.77-18,21.57-14.77,7.31,25.41,7.31,25.41.1,17.9-13.53,15.43C327.89,284.71,321.59,278.22,324.36,260.78Z"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 339.811px 266.353px;"
                                id="elr8pfom527mq" class="animable"></path>
                            <path d="M333.46,194.67s-5.08,20.57-6.39,24.53"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 330.265px 206.935px;"
                                  id="elkabwxy6oz28" class="animable"></path>
                            <line x1="337.81" y1="196.45" x2="334.85" y2="207.73"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 336.33px 202.09px;"
                                  id="el8l7xhbldzz5" class="animable"></line>
                            <polygon
                                points="374.9 204.36 385.01 207.92 383.9 211.09 380.74 211.09 374.01 209.51 374.9 204.36"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 379.51px 207.725px;"
                                id="el1toaboxesb7" class="animable"></polygon>
                            <polygon
                                points="373.22 211.09 380.74 213.46 382.32 215.04 380.74 219.2 372.03 216.23 373.22 211.09"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 377.175px 215.145px;"
                                id="elaoquaeg68o" class="animable"></polygon>
                            <polygon
                                points="372.03 218.21 380.74 220.61 379.51 223.75 374.9 223.75 370.65 221.97 372.03 218.21"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 375.695px 220.98px;"
                                id="elan5e9r6ywa" class="animable"></polygon>
                            <polygon
                                points="370.65 223.75 377.37 226.52 377.37 228.49 375.69 230.08 369.43 228.3 369.43 224.93 370.65 223.75"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 373.4px 226.915px;"
                                id="el5gnyaunwheo" class="animable"></polygon>
                            <path
                                d="M376.38,232.68v3.08a2.2,2.2,0,0,1-.61,1.88,1.69,1.69,0,0,1-1.62,0c-.51-.24-1-.6-1.48-.81-1.57-.63-3.5.16-5-.68,0-1.91-.67-4.94,1.69-5C369.75,231.18,376.38,233.38,376.38,232.68Z"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 371.994px 234.498px;"
                                id="elsoj37ipfw3" class="animable"></path>
                            <path
                                d="M373.61,240.39a14.52,14.52,0,0,1-.38,2.09c-.22.89-.65,1.88-1.54,2.12a2.92,2.92,0,0,1-1.43-.12L364.64,243a27.5,27.5,0,0,1,1-3.1c.76-1.11.5-1.09,1.83-1.18C369.63,238.63,371.39,240.66,373.61,240.39Z"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 369.125px 241.678px;"
                                id="el14y7u5i8cc9" class="animable"></path>
                            <polygon points="354.63 197.84 351.26 211.09 352.94 211.88 357 198.82 354.63 197.84"
                                     style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 354.13px 204.86px;"
                                     id="elfcsjdaqx6qc" class="animable"></polygon>
                            <polygon
                                points="312.4 286.82 322.78 289.51 321.94 292.75 318.79 293.03 311.95 292.02 312.4 286.82"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 317.365px 289.925px;"
                                id="elq285ek306" class="animable"></polygon>
                            <polygon
                                points="311.3 293.67 318.99 295.39 320.71 296.83 319.49 301.11 310.56 298.89 311.3 293.67"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 315.635px 297.39px;"
                                id="elf1pll0w482i" class="animable"></polygon>
                            <polygon
                                points="310.73 300.87 319.61 302.51 318.65 305.74 314.06 306.14 309.67 304.73 310.73 300.87"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 314.64px 303.505px;"
                                id="elw5qc4r3dun" class="animable"></polygon>
                            <polygon
                                points="309.82 306.5 316.76 308.69 316.93 310.66 315.39 312.38 309 311.14 308.71 307.79 309.82 306.5"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 312.82px 309.44px;"
                                id="elap8ovd1h8o4" class="animable"></polygon>
                            <path
                                d="M316.29,314.91l.27,3.07a2.19,2.19,0,0,1-.45,1.93,1.67,1.67,0,0,1-1.61.13c-.53-.19-1-.51-1.55-.67-1.61-.5-3.47.45-5-.26-.18-1.9-1.09-4.86,1.25-5.09C309.56,314,316.35,315.61,316.29,314.91Z"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 312.124px 317.104px;"
                                id="el60w0xolu7jt" class="animable"></path>
                            <path
                                d="M314.2,322.83A15.06,15.06,0,0,1,314,325c-.15.9-.49,1.93-1.35,2.24a2.92,2.92,0,0,1-1.44,0l-5.72-1a27.16,27.16,0,0,1,.77-3.18c.66-1.17.4-1.13,1.72-1.33C310.08,321.42,312,323.29,314.2,322.83Z"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 309.845px 324.513px;"
                                id="elufnmatiwul" class="animable"></path>
                            <path d="M355.62,332.54S358,306,358,303.33"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 356.81px 317.935px;"
                                  id="ela8g9bl78rjr" class="animable"></path>
                            <path d="M350.87,331.35s1-13.8,1.18-16.2"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 351.46px 323.25px;"
                                  id="el4tkm97p9spl" class="animable"></path>
                            <polygon points="332.32 321.38 329.11 337.09 332.32 337.09 334.65 321.38 332.32 321.38"
                                     style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 331.88px 329.235px;"
                                     id="elxgtwfven9ts" class="animable"></polygon>
                            <g id="elw8goik2v93">
                            <path
                                d="M369.17,281.86c-6.94-1.45-13.13-3.58-17.71-6.65,0,0,3.32,9.54,15.09,25.8l-6.33,49.42s-30.57-1.34-53.67-5.29c7.1-20,20-57.9,18.47-65.41-2.07-10.31,5.24-22.48,5.24-22.48,23.11-4.16,45.52-21.63,60.9-36.4C383.33,244,372.64,275,369.17,281.86Z"
                                style="fill-opacity: 0.7; opacity: 0.2; transform-origin: 348.855px 285.64px;"
                                class="animable"></path>
                            </g>
                            </g>
                            <path
                                d="M326.68,175,400,194.34S374.23,272.55,369,282.25l-8.74,68.18s-46.84-2.06-68.38-8.57c0,0,13.62-71,14.35-80.47S326.68,175,326.68,175Z"
                                style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 345.94px 262.715px;"
                                id="el9h9op9jaeyn" class="animable"></path>
                            <path
                                d="M367.33,330.69,357,405.45c-2.3-4.89-8.57-13.23-11.81-17.4-1.2-1.56-2-2.53-2-2.53l-1.83-2.82c-9.49-13.45-9.49-29.27-11.07-42.72s-1.19-12.27-.79-24.19A175.41,175.41,0,0,0,328.32,289c-.79-7.92-2.37-21.85,0-28.34,1.16-3.18,3.25-5.16,5.87-5.58s6,.78,9.49,4.08c6.79,6.49,9.56,33.15,9.56,36.44s0,13.57,2.38,17.53C355.62,313.08,362,325.15,367.33,330.69Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 347.199px 330.225px;"
                                id="el7sbngxm24wb" class="animable"></path>
                            <g id="eldzsu8lm5slw">
                            <path
                                d="M340.58,377.37c2.16,2.76,3.63,6.74,4.61,10.68-1.2-1.56-2-2.53-2-2.53l-1.83-2.82c-9.49-13.45-9.49-29.27-11.07-42.72s-1.19-12.27-.79-24.19A175.41,175.41,0,0,0,328.32,289c-.79-7.92-2.37-21.85,0-28.34,1.16-3.18,3.25-5.16,5.87-5.58,5,1.42,10,6.51,11.74,15.22,3,14.62-10.53,2.81-13.66,15.2s1.42,15.73,3.29,18.85-.52,10-3.29,19.24S334.65,369.78,340.58,377.37Z"
                                style="fill: rgb(255, 193, 0); opacity: 0.4; transform-origin: 336.715px 321.565px;"
                                class="animable"></path>
                            </g>
                            <path
                                d="M367.33,330.69c-5.34-5.54-11.71-17.61-11.71-17.61-2.38-4-2.38-14.24-2.38-17.53s-2.77-29.95-9.56-36.44-13-5-15.36,1.5-.79,20.42,0,28.34a175.41,175.41,0,0,1,1.19,26.84c-.4,11.92-.8,10.74.79,24.19s1.58,29.27,11.07,42.72l1.83,2.82s10.64,13.21,13.8,19.93"
                                style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 347.201px 330.187px;"
                                id="elw9bpvq8qcom" class="animable"></path>
                            <path d="M332.32,299.05s9.07-4.69,13.61-4.29"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 339.125px 296.893px;"
                                  id="elao6wcds77x" class="animable"></path>
                            </g>
                            <g id="freepik--hand-1--inject-2" class="animable"
                               style="transform-origin: 142.705px 173.89px;">
                            <g id="elkx5srg59pjd">
                            <path
                                d="M193.81,170.81S170.87,145.55,169.29,144s-2.77-28.49-7.13-40.35-6.47-81.5-6.47-81.5-4.15-5.14-15.85-2.37-23.17-2.38-36.22,5.14S115.88,140,115.88,140l25.69,81.87Z"
                                style="fill-opacity: 0.7; opacity: 0.2; transform-origin: 146.846px 120.415px;"
                                class="animable"></path>
                            </g>
                            <path
                                d="M209.57,171s-10.28,65.67-21,74.37c-6.19,5-15.84,7.3-24.4,7-6.2-.22-11.84-1.78-15.16-4.61-7.91-6.73-19-10.29-24.52-14.64s-5.54-19.78-9.1-32.84-8.71-13.45-9.89-26.5-5.94-53-14.54-64.09-8.8-19.78-12.36-31.06S49,26.54,49,26.54l63.48-13s6.24,25.83,12.92,46.9c3.17,10,6.44,18.94,9.18,23.52a196.78,196.78,0,0,1,13.63,27.69c7.18,7.52,11.11,24.18,12.3,38.77h0l17,9.48C190.58,163.47,209.57,171,209.57,171Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 129.285px 132.968px;"
                                id="eln7fva6pnb9" class="animable"></path>
                            <g id="eleng4nm7ibid">
                            <path
                                d="M209.57,171s-10.28,65.67-21,74.37c-6.19,5-15.84,7.3-24.4,7-20.3-5-25.76-16.32-28.51-19.06-3.66-3.65-8.47-25.89-5.83-38.83s.74-17.73-1.44-24.05c-4.83-14,9.9-21.54,11.42-26.84s1-34.94-5.63-44.58c-3.52-5.13-12.59-31.57-8.77-38.55,3.17,10,6.44,18.94,9.18,23.52a196.78,196.78,0,0,1,13.63,27.69c7.18,7.52,11.11,24.18,12.3,38.77h0l17,9.48C190.58,163.47,209.57,171,209.57,171Z"
                                style="fill: rgb(255, 193, 0); opacity: 0.4; transform-origin: 167.029px 156.428px;"
                                class="animable"></path>
                            </g>
                            <path d="M132.05,166.38s-3.58,4.21-6.74,4.21"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 128.68px 168.485px;"
                                  id="elnb4qv4s128" class="animable"></path>
                            <path d="M139.84,180.61s-3.85,8.18-10,10"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 134.84px 185.61px;"
                                  id="elak7d27afia" class="animable"></path>
                            <path d="M133,228.55s8.71-3.76,10.09-10.09"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 138.045px 223.505px;"
                                  id="elbsekwup50tk" class="animable"></path>
                            <path d="M177.53,159.91s-2.18,2.77-2.18,5"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 176.44px 162.41px;"
                                  id="elxppn3zvgyk" class="animable"></path>
                            <path
                                d="M112.52,13.54S126.1,69.71,134.62,84a196.78,196.78,0,0,1,13.63,27.69c7.18,7.52,11.11,24.19,12.3,38.78h0l17,9.48c13.05,3.56,32,11.08,32,11.08s-10.28,65.67-21,74.37S157,254.46,149,247.74s-19-10.29-24.52-14.64-5.54-19.78-9.1-32.84-8.71-13.45-9.89-26.5-5.94-53-14.54-64.09-8.8-19.78-12.36-31.06S49,26.54,49,26.54"
                                style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 129.275px 132.968px;"
                                id="elo5kfw21ytoi" class="animable"></path>
                            <polygon
                                points="233.62 166.74 128.63 328.35 153.41 331.11 228.7 334.24 236.41 190.49 233.62 166.74"
                                style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 182.52px 250.49px;"
                                id="el9mdq45j3qz" class="animable"></polygon>
                            <polygon
                                points="233.62 166.73 223.92 331.48 128.63 328.35 136.15 202.11 138.49 162.91 180.01 164.58 233.62 166.73"
                                style="fill: rgb(117, 117, 117); transform-origin: 181.125px 247.195px;"
                                id="elzu1ux2q0wrn" class="animable"></polygon>
                            <g style="clip-path: url(&quot;#freepik--clip-path-3--inject-2&quot;); transform-origin: 181.45px 245.98px;"
                               id="elfza6nz7i0x" class="animable">
                            <circle cx="209.66" cy="300.91" r="11.6"
                                    style="fill: rgb(191, 191, 191); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; transform-origin: 209.66px 300.91px;"
                                    id="elm7z1yhil5ts" class="animable"></circle>
                            <line x1="206.39" y1="293.21" x2="214.25" y2="294.24"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 210.32px 293.725px;"
                                  id="elbgz2lrrrwx4" class="animable"></line>
                            <line x1="204.28" y1="295.12" x2="216.09" y2="296.27"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 210.185px 295.695px;"
                                  id="elz29q501t5x" class="animable"></line>
                            <line x1="202.97" y1="306.76" x2="214.79" y2="307.91"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 208.88px 307.335px;"
                                  id="elw4nari4zzwm" class="animable"></line>
                            <path d="M208.14,297.75a1.3,1.3,0,0,0,1.56-.89l.88.09-.89,8.35-1.31-.14.68-6.37-1-.11Z"
                                  style="fill: rgb(38, 50, 56); transform-origin: 209.32px 301.08px;"
                                  id="elfov867eeuin" class="animable"></path>
                            <path
                                d="M212.51,298.1c.52,0,.76.39.7.94v.1l-.51-.05V299c0-.24-.06-.35-.23-.37s-.28.07-.3.31.06.45.38.79a1.34,1.34,0,0,1,.47,1.13c-.06.55-.36.83-.89.77s-.76-.4-.71-.94l0-.21.5.05,0,.25c0,.24.07.34.24.36s.29-.06.31-.3-.06-.45-.38-.79a1.34,1.34,0,0,1-.47-1.13C211.69,298.32,212,298,212.51,298.1Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 212.316px 299.86px;"
                                id="elbbsjnjgwumg" class="animable"></path>
                            <path d="M213.45,298.24l1.66.17-.06.49-.56-.06-.31,2.92-.53-.05.31-2.93-.56-.06Z"
                                  style="fill: rgb(38, 50, 56); transform-origin: 214.255px 300px;" id="el5oe669dpq46"
                                  class="animable"></path>
                            <g id="elwwt9mmia3w">
                            <rect x="164.19" y="171.85" width="20.82" height="13.65" rx="0.89"
                                  style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 174.6px 178.675px; transform: rotate(12.31deg);"
                                  class="animable"></rect>
                            </g>
                            <path
                                d="M170,181.42l-.07-.07s0-.12-.05-.17a.1.1,0,0,0,0,0,.46.46,0,0,1-.11-.16.14.14,0,0,1,0-.06s.05,0,.08-.07a.19.19,0,0,0,.09-.14.11.11,0,0,1,0-.05l.06,0a.06.06,0,0,0,0,0c0-.19-.12-.33-.24-.48-.29-.36-.35-.54-.29-.78s.16-.31.33-.28.24.15.19.39l0,.14.5.11,0-.11a.74.74,0,0,0-.39-.94l.06-.24-.43-.1-.05.25c-.39,0-.64.25-.74.7a1.2,1.2,0,0,0,.37,1.11c.29.35.35.55.29.78s-.17.31-.34.27-.25-.15-.2-.38l.06-.27-.5-.11,0,.23a.75.75,0,0,0,.39,1l0,.24.43.1.05-.25.26,0a.57.57,0,0,0,.21-.13.8.8,0,0,0,.15-.21C170,181.48,170,181.45,170,181.42Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 169.546px 180.37px;"
                                id="el0vvh57pv3wi" class="animable"></path>
                            <path
                                d="M172.75,181.26a.6.6,0,0,0-.06-.23.25.25,0,0,1,0-.12.16.16,0,0,1,.07-.07c.27-.24-.06-.56-.32-.62a.54.54,0,0,0-.51.14l.21-.78.92.2.1-.48-1.38-.3a.83.83,0,0,0-.06.21c0,.07.09.09.09.17s0,.07,0,.11a.25.25,0,0,0,.11.14c.05,0,.1.09.09.15a.09.09,0,0,1,0,.06.46.46,0,0,1-.19.22.17.17,0,0,0-.1.06v.06c0,.07-.08.11-.14.15s-.21.36-.27.58l.5.11,0-.1c.05-.24.18-.3.34-.27s.26.15.2.39l-.16.74c0,.23-.17.3-.34.26s-.25-.14-.2-.38l.07-.31-.5-.11-.06.28a.81.81,0,1,0,1.57.34A2.09,2.09,0,0,0,172.75,181.26Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 172.136px 180.801px;"
                                id="elnfrytx6hxp" class="animable"></path>
                            <path
                                d="M179.28,182.66a.86.86,0,0,0-.06-.23.25.25,0,0,1,0-.12.16.16,0,0,1,.07-.07c.26-.24-.07-.56-.32-.62a.54.54,0,0,0-.51.14l.21-.78.92.2.1-.48-1.38-.3a.56.56,0,0,0-.06.21c0,.07.08.09.09.17s0,.07,0,.11a.25.25,0,0,0,.11.14c.05,0,.1.09.09.15s0,0,0,.06a.43.43,0,0,1-.2.22.18.18,0,0,0-.09.06s0,0,0,.06-.07.11-.13.15-.21.36-.27.58l.5.11,0-.1c.05-.24.18-.3.34-.27s.25.15.2.39l-.16.74c0,.23-.17.3-.34.26s-.25-.14-.2-.38l.07-.31-.5-.11-.06.28a.8.8,0,1,0,1.56.34A1.81,1.81,0,0,0,179.28,182.66Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 178.679px 182.17px;"
                                id="elb188fd8ptf" class="animable"></path>
                            <path
                                d="M173.89,180.27c.05-.24.18-.31.34-.27a.22.22,0,0,1,.19.21l.17,0h0a.06.06,0,0,1,0,0,.21.21,0,0,0,.1.14c.06.05.14.08.21.13a.78.78,0,0,0-.6-1,.76.76,0,0,0-1,.67,1.29,1.29,0,0,0,0,.19c0,.16,0,.11.16.17s.21.14.07.19l0,0s0,0,0,0l.09,0s0,.07,0,.1,0,.05-.05.09a.12.12,0,0,1,0,.08h0s-.08.13-.1.15a.34.34,0,0,1-.12.12c-.13.08-.19,0-.23.2s-.05.22-.07.32a.82.82,0,1,0,1.59.35l.16-.7h-.06a2.27,2.27,0,0,1-.34-.19l-.09-.08-.2.9c0,.24-.18.31-.34.27s-.25-.15-.2-.39l.29-1.36a.39.39,0,0,1,.06-.24Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 173.97px 181.146px;"
                                id="elvtwjt4b2rb" class="animable"></path>
                            <path
                                d="M176.35,181.92l.05,0c0-.05,0-.1,0-.17l.22,0,.17-.77a.82.82,0,1,0-1.59-.35l0,.14c.07.06.11.16.18.21s.18,0,.15.17-.06.14,0,.19.07,0,.08.07a.09.09,0,0,1,0,.11s-.07,0-.08.09,0,.15-.06.17-.19-.12-.3-.11a.23.23,0,0,0-.16.17,3.21,3.21,0,0,0-.11.52.76.76,0,0,0,.61,1,.8.8,0,0,0,.67-.12,1,1,0,0,0,.22-.27.28.28,0,0,0,0-.37s0,0,0,0,0,0,0,0a0,0,0,0,1-.05,0l-.07-.24s0,0,0,0,0,0,.07-.06,0-.19.1-.26S176.33,181.94,176.35,181.92Zm-.42.68c-.05.24-.18.31-.35.27s-.25-.15-.2-.39l.4-1.8c.05-.24.17-.31.34-.27s.25.15.2.39Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 175.847px 181.638px;"
                                id="elzttsn4nqxp" class="animable"></path>
                            <path d="M177.24,183.16l-.11.51-.51-.11.11-.51Z"
                                  style="fill: rgb(38, 50, 56); transform-origin: 176.93px 183.36px;"
                                  id="elamw5ycxtzgr" class="animable"></path>
                            <path
                                d="M181.42,182.27c.06,0,.06-.23.08-.31a.82.82,0,1,0-1.59-.35l-.15.67c.13.12,0,.31.06.45s0,0,0,.06-.15.09-.15.17,0,0,0,0-.08.12-.13.18a.3.3,0,0,0-.05.16.82.82,0,1,0,1.59.35l.12-.55c0-.14.18-.51,0-.62s-.08,0-.1-.07a.16.16,0,0,1,0-.15C181.22,182.16,181.31,182.33,181.42,182.27Zm-.61.88c0,.06-.1.08-.15.16a1.08,1.08,0,0,0-.07.31c-.05.24-.18.3-.34.27s-.26-.15-.2-.39c0-.07.09-.27.07-.33s-.1,0-.14-.12a.58.58,0,0,1,0-.32.17.17,0,0,0,0-.07s-.05-.09,0-.13,0,0,0,0,0-.13,0-.22,0,0,0,0c.32.12.31-.37.36-.57s.18-.31.34-.27.25.15.2.38a2.41,2.41,0,0,0-.12.63.19.19,0,0,1,.16.17.43.43,0,0,0,0,.16s0,.09,0,.13-.06,0-.1,0a.18.18,0,0,0-.11.13Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 180.495px 182.63px;"
                                id="elxigullfjwj" class="animable"></path>
                            <path d="M175.83,175l3.38.74"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 177.52px 175.37px;"
                                  id="el9z53cenhlwf" class="animable"></path>
                            <path d="M168.15,173.32l6,1.32"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 171.15px 173.98px;"
                                  id="elx2phy0locsb" class="animable"></path>
                            <line x1="167.65" y1="175.64" x2="171.61" y2="176.5"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 169.63px 176.07px;"
                                  id="eljrjzq5rq59n" class="animable"></line>
                            <g id="el8htgam1td7i">
                            <path
                                d="M133,326.89a66.47,66.47,0,0,1,16.09-2.16c9.76-.24,16,1.61,24-2.35s13.19,3.17,20.84-.79,11.2-10.3,15.62-10.16,11-70.69,13.12-82.88,6.63-46.17,8.18-53.07l-8.71,153.57Z"
                                style="fill: rgb(255, 255, 255); opacity: 0.4; transform-origin: 181.925px 252.265px;"
                                class="animable"></path>
                            </g>
                            <polygon points="133.42 296.67 157.81 326.34 132.05 324.74 133.42 296.67"
                                     style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 144.93px 311.505px;"
                                     id="eli4tlaancxra" class="animable"></polygon>
                            <path
                                d="M198.15,238l-.39,11.29a12,12,0,0,1-12.41,11.58l-11.6-.41A12,12,0,0,1,162.17,248l.52-14.7a12,12,0,0,1,12.41-11.57l11.6.4c.32,0,.64,0,1,.07A9.63,9.63,0,0,0,198.15,238Z"
                                style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 180.155px 241.3px;"
                                id="elg48e3qzrzdm" class="animable"></path>
                            <path d="M200.24,228.25a5.49,5.49,0,1,1-5.3-5.67A5.5,5.5,0,0,1,200.24,228.25Z"
                                  style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 194.753px 228.067px;"
                                  id="el8xq8fvdmzd" class="animable"></path>
                            <g id="eled6bejd2bdw">
                            <path
                                d="M165.47,249.4l17.05-14.58s-2.16-7.81,0-10.28l-8.19,0a7.74,7.74,0,0,0-7.75,7.25Z"
                                style="fill: rgb(255, 255, 255); opacity: 0.4; transform-origin: 173.995px 236.97px;"
                                class="animable"></path>
                            </g>
                            <g id="eldsxdf2uhwkj">
                            <path d="M192.43,228.55l3.65-4s-2.27-1.53-3.65,0S192.43,228.55,192.43,228.55Z"
                                  style="fill: rgb(255, 255, 255); opacity: 0.4; transform-origin: 193.948px 226.21px;"
                                  class="animable"></path>
                            </g>
                            <line x1="190.65" y1="315.66" x2="218.14" y2="316.85"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 204.395px 316.255px;"
                                  id="el4dg3kdszxi1" class="animable"></line>
                            <line x1="181.13" y1="318.43" x2="218.14" y2="320.41"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 199.635px 319.42px;"
                                  id="el0p2bj66ji3ti" class="animable"></line>
                            <line x1="208.45" y1="326.34" x2="218.14" y2="326.34"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 213.295px 326.34px;"
                                  id="elwklsfe2c3kc" class="animable"></line>
                            <g id="elb27csw0y31p">
                            <path
                                d="M174.76,225.37c-14.18,6.82-29.54-17.07-34.92-20.36a22.83,22.83,0,0,1-3.69-2.9l2.34-39.2L180,164.58c-.27,5.84-.18,12.29,1.12,16C183.92,188.67,188.93,218.56,174.76,225.37Z"
                                style="fill-opacity: 0.7; opacity: 0.2; transform-origin: 160.232px 194.749px;"
                                class="animable"></path>
                            </g>
                            <g id="el3iuy66uf7fq">
                            <path
                                d="M158.87,226.59s11.34,4.92,16.48,2,10.68-8.5,11.47-20.89c0,0,6.75,17.45-6.86,22.68S158.87,226.59,158.87,226.59Z"
                                style="fill: rgb(255, 255, 255); opacity: 0.4; transform-origin: 173.682px 219.856px;"
                                class="animable"></path>
                            </g>
                            <g id="eld0n3mvrured">
                            <path
                                d="M154.45,233.57s23,6.18,32.84-5c0,0-1.32,6.21-11.94,8S154.45,233.57,154.45,233.57Z"
                                style="fill: rgb(255, 255, 255); opacity: 0.4; transform-origin: 170.87px 232.77px;"
                                class="animable"></path>
                            </g>
                            <g id="elm1ai5a8q6v9">
                            <path d="M191.44,193.62c-1.75-3.11.4,24.84.4,24.84S195,200,191.44,193.62Z"
                                  style="fill: rgb(255, 255, 255); opacity: 0.4; transform-origin: 191.943px 205.919px;"
                                  class="animable"></path>
                            </g>
                            </g>
                            <polygon
                                points="233.62 166.73 223.92 331.48 128.63 328.35 136.15 202.11 138.49 162.91 180.01 164.58 233.62 166.73"
                                style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 181.125px 247.195px;"
                                id="el3a5dgxrgd45" class="animable"></polygon>
                            <g id="elw91i7pq7kv">
                            <polygon points="228.8 332.36 225.33 331.48 233.62 180.61 235.09 190.57 228.8 332.36"
                                     style="fill: rgb(255, 255, 255); opacity: 0.4; transform-origin: 230.21px 256.485px;"
                                     class="animable"></polygon>
                            </g>
                            <path
                                d="M174.76,225.37a9.37,9.37,0,0,1-8.54.13,12.25,12.25,0,0,1-5.31-5.46c-3.95-7.12-14.64-23.34-16.61-28s-6.33-17.84-10.68-23.37-6.73-13.85-6.73-13.85l-1.58-80.7c2.37,11.67,8.9,24.92,8.9,24.92a37.36,37.36,0,0,1,14,12.66,23.36,23.36,0,0,1,2.73,3.53c6.46,10,9.59,28,9.93,42,.4,15.83,5.54,23,13.85,36.79S180.16,222.3,174.76,225.37Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 152.622px 150.293px;"
                                id="el8iykgc9yejf" class="animable"></path>
                            <g id="elmh9ql6q1mkh">
                            <path
                                d="M174.76,225.37a9.59,9.59,0,0,1-8.54.13c4.54-1.24,10.5-3.57,9.13-7-2.15-5.48-8.44,2.65-11.6,0s-14.64-17.85-7.35-24.54,5-17.91,0-21.07-1.75-10.69-.17-22.54c1-7.17-2.43-23.41-5.25-35.13,6.46,10,9.59,28,9.93,42,.4,15.83,5.54,23,13.85,36.79S180.16,222.49,174.76,225.37Z"
                                style="fill: rgb(255, 193, 0); opacity: 0.4; transform-origin: 165.469px 170.83px;"
                                class="animable"></path>
                            </g>
                            <path
                                d="M125.31,74.07c2.37,11.67,8.9,24.92,8.9,24.92a37.36,37.36,0,0,1,14,12.66c8.31,8.7,12.27,29.67,12.66,45.49s5.54,23,13.85,36.79,6,28.17,0,31.44c-4.18,2.29-9.89,1.79-13.85-5.33s-14.64-23.34-16.61-28-6.33-17.84-10.68-23.37-6.73-13.85-6.73-13.85"
                                style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 152.715px 150.329px;"
                                id="el32x7oj07s9j" class="animable"></path>
                            <path d="M151,190.57s6.46-.58,9.42-3"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 155.71px 189.07px;"
                                  id="elscl0vaul56" class="animable"></path>
                            <path d="M124.52,156.41s-1.26,3,5.34,6"
                                  style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 127.142px 159.41px;"
                                  id="elbouna5sxff7" class="animable"></path>
                            </g>
                            <defs>
                            <filter id="active" height="200%">
                                <feMorphology in="SourceAlpha" result="DILATED" operator="dilate" radius="2">
                                </feMorphology>
                                <feFlood flood-color="#32DFEC" flood-opacity="1" result="PINK"></feFlood>
                                <feComposite in="PINK" in2="DILATED" operator="in" result="OUTLINE"></feComposite>
                                <feMerge>
                                    <feMergeNode in="OUTLINE"></feMergeNode>
                                    <feMergeNode in="SourceGraphic"></feMergeNode>
                                </feMerge>
                            </filter>
                            <filter id="hover" height="200%">
                                <feMorphology in="SourceAlpha" result="DILATED" operator="dilate" radius="2">
                                </feMorphology>
                                <feFlood flood-color="#ff0000" flood-opacity="0.5" result="PINK"></feFlood>
                                <feComposite in="PINK" in2="DILATED" operator="in" result="OUTLINE"></feComposite>
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
                            <clipPath id="freepik--clip-path--inject-2">
                                <path
                                    d="M343.69,348.43a2.32,2.32,0,0,1-.49.83c-3.54,3.35-18.65,7.07-31.63,9.75-10.75,2.23-20,3.74-20,3.74s-7.12-59.17-7.12-65.39-11.48-106.92-11.48-106.92l27.52-1.19L337,187.67s.22,2.69.59,7.39C340,225,348.28,336.62,343.69,348.43Z"
                                    style="fill:#FFC100;stroke:#263238;stroke-linecap:round;stroke-linejoin:round">
                                </path>
                            </clipPath>
                            <clipPath id="freepik--clip-path-2--inject-2">
                                <path
                                    d="M326.68,175,400,194.34S374.23,272.55,369,282.25l-8.74,68.18s-46.84-2.06-68.38-8.57c0,0,13.62-71,14.35-80.47S326.68,175,326.68,175Z"
                                    style="fill:#FFC100;stroke:#263238;stroke-linecap:round;stroke-linejoin:round">
                                </path>
                            </clipPath>
                            <clipPath id="freepik--clip-path-3--inject-2">
                                <polygon
                                    points="233.62 166.73 223.92 331.48 128.63 328.35 136.15 202.11 138.49 162.91 180.01 164.58 233.62 166.73"
                                    style="fill:#757575;stroke:#263238;stroke-linecap:round;stroke-linejoin:round">
                                </polygon>
                            </clipPath>
                            </defs>
                            </svg>
                        </div>

                        <div class="col-6 align-self-center">
                            <h1 class="text-success fs-48"><i class="fa fa-paypal" aria-hidden="true"></i> Pago Exitoso!</h1>
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
