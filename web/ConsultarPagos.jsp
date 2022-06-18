<%-- 
    Document   : ConsultarPagos
    Created on : 17/06/2022, 12:23:40 PM
    Author     : Pablo
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="ModeloDAO.PagoDAO"%>
<%@page import="ModeloVO.PagoVO"%>
<%@page import="ModeloVO.CiudadVO"%>
<%@page import="ModeloDAO.CiudadDAO"%>
<%@page import="ModeloVO.DepartamentoVO"%>
<%@page import="ModeloDAO.DepartamentoDAO"%>
<%@page import="java.time.LocalDate"%>
<%@page import="ModeloVO.TipoCargaVO"%>
<%@page import="ModeloDAO.TipoCargaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Sesiones.jsp" %>
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
                        <div class="col-6 align-self-center">
                            <h1>Revise los pagos pendientes</h1>
                        </div>

                        <div class="col-6">
                            <svg class="animated" id="freepik_stories-credit-card" xmlns="http://www.w3.org/2000/svg"
                                 viewBox="0 0 500 500" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink"
                                 xmlns:svgjs="http://svgjs.com/svgjs" width="350px" height="300px" aling="center">
                            <style>
                                svg#freepik_stories-credit-card:not(.animated) .animable {
                                    opacity: 0;
                                }

                                svg#freepik_stories-credit-card.animated #freepik--background-complete--inject-35 {
                                    animation: 1s 1 forwards ease-out slideLeft;
                                    animation-delay: 0s;
                                }

                                svg#freepik_stories-credit-card.animated #freepik--Device--inject-35 {
                                    animation: 1.5s Infinite linear floating;
                                    animation-delay: 0s;
                                }

                                @keyframes slideLeft {
                                    0% {
                                        opacity: 0;
                                        transform: translateX(-30px);
                                    }

                                    100% {
                                        opacity: 1;
                                        transform: translateX(0);
                                    }
                                }

                                @keyframes floating {
                                    0% {
                                        opacity: 1;
                                        transform: translateY(0px);
                                    }

                                    50% {
                                        transform: translateY(-10px);
                                    }

                                    100% {
                                        opacity: 1;
                                        transform: translateY(0px);
                                    }
                                }
                            </style>
                            <g id="freepik--background-complete--inject-35" class="animable"
                               style="transform-origin: 228.261px 174.241px;">
                            <g id="freepik--freepik--background-complete--inject-2--inject-35" class="animable"
                               style="transform-origin: 228.261px 174.241px;">
                            <path d="M356,183.29a45,45,0,1,1-9.22-63l.05,0A45,45,0,0,1,356,183.29Z"
                                  style="fill: rgb(240, 240, 240); transform-origin: 319.93px 156.395px;"
                                  id="elyww9o1jqe0h" class="animable"></path>
                            <path d="M347.41,176.88a34.31,34.31,0,1,1-7-48h0a34.28,34.28,0,0,1,7,48Z"
                                  style="fill: rgb(245, 245, 245); transform-origin: 319.902px 156.382px;"
                                  id="elpdnimk37g2c" class="animable"></path>
                            <path
                                d="M348.05,176c-.17-.11.61-1.41,1.74-3.84a36.55,36.55,0,0,0,3.13-10.79,35.58,35.58,0,0,0,.09-7.72,34.22,34.22,0,0,0-2-8.58,32.47,32.47,0,0,0-4.69-8.49,31.93,31.93,0,0,0-3.41-3.85,37.63,37.63,0,0,0-4.08-3.37,38.73,38.73,0,0,0-4.57-2.68,32.76,32.76,0,0,0-4.78-1.89,30.85,30.85,0,0,0-4.84-1.11,30.23,30.23,0,0,0-4.75-.38,33.93,33.93,0,0,0-8.75,1,35.17,35.17,0,0,0-7.22,2.73,36.47,36.47,0,0,0-9.06,6.64c-1.9,1.9-2.84,3.08-3,3s.53-1.47,2.25-3.64a31.91,31.91,0,0,1,8.93-7.59,34.25,34.25,0,0,1,16.85-4.56,34.78,34.78,0,0,1,10.34,1.45,35.31,35.31,0,0,1,5.18,2,39.16,39.16,0,0,1,4.93,2.88,40.37,40.37,0,0,1,4.4,3.65,34.38,34.38,0,0,1,3.65,4.17,32.22,32.22,0,0,1,2.85,4.53,34.6,34.6,0,0,1,3.55,22.09,32.1,32.1,0,0,1-4.06,11C349.25,175,348.17,176.1,348.05,176Z"
                                style="fill: rgb(224, 224, 224); transform-origin: 323.563px 148.442px;"
                                id="elj355dimnzas" class="animable"></path>
                            <path
                                d="M310.79,175.06l-3.51,4.83L303,176.76l3.41-4.71c-4.08-3.36-7.22-7.67-8.24-11.25l6.19-3.55a21.49,21.49,0,0,0,6.16,9.14l5.23-7.21c-3.95-4.64-8.15-10.13-3.67-16.3,3.32-4.58,9.5-6.1,16.89-1.93l3.48-4.79,4.32,3.13L333.31,144a24.16,24.16,0,0,1,6.86,9l-6,3.75a22,22,0,0,0-5-7L323.85,157c4,4.6,8.09,10,3.67,16.11C324.27,177.65,318.16,179.15,310.79,175.06Zm9.52-22.23,4.45-6.13c-2.66-1.15-4.48-.55-5.51.88S318.85,150.85,320.31,152.83Zm-.12,15.8c1.1-1.51.44-3.24-.94-5.24l-4.33,6C317.43,170.45,319.19,170,320.19,168.63Z"
                                style="fill: rgb(224, 224, 224); transform-origin: 319.17px 158.025px;"
                                id="ela319y7hjzb" class="animable"></path>
                            <path d="M194.91,249.84A51.94,51.94,0,1,1,136,206h.1a51.88,51.88,0,0,1,58.85,43.82Z"
                                  style="fill: rgb(240, 240, 240); transform-origin: 143.522px 257.392px;"
                                  id="elzcujls97oqr" class="animable"></path>
                            <path
                                d="M182.68,251.61a39.58,39.58,0,1,1-44.94-33.37h.09A39.54,39.54,0,0,1,182.68,251.61Z"
                                style="fill: rgb(245, 245, 245); transform-origin: 143.525px 257.399px;"
                                id="elfazqkb9insw" class="animable"></path>
                            <path
                                d="M182.49,250.39c-.24,0-.65-1.65-1.72-4.56a42.24,42.24,0,0,0-6.26-11.35,41.18,41.18,0,0,0-6.22-6.37,39.7,39.7,0,0,0-8.65-5.34,38,38,0,0,0-5.16-1.91,36.69,36.69,0,0,0-5.6-1.19,37.79,37.79,0,0,0-5.92-.34,42.71,42.71,0,0,0-6.08.58,44.63,44.63,0,0,0-5.91,1.54,38.7,38.7,0,0,0-5.45,2.37,37.24,37.24,0,0,0-4.85,3,36.47,36.47,0,0,0-4.18,3.57,39.52,39.52,0,0,0-6.28,8,40.19,40.19,0,0,0-3.65,8.11,42.48,42.48,0,0,0-2,12.81c0,3.1.2,4.83,0,4.87s-.77-1.63-1.14-4.81a36.86,36.86,0,0,1,1.09-13.47,39.64,39.64,0,0,1,10-17.48,37.43,37.43,0,0,1,4.43-3.91,40,40,0,0,1,11-5.94,42.45,42.45,0,0,1,6.38-1.67,45.1,45.1,0,0,1,6.56-.63,42.69,42.69,0,0,1,6.39.42,39.76,39.76,0,0,1,6,1.36,37.54,37.54,0,0,1,5.5,2.15,40.68,40.68,0,0,1,9.09,6,39.28,39.28,0,0,1,6.32,7,36.62,36.62,0,0,1,5.67,12.27C182.64,248.59,182.66,250.36,182.49,250.39Z"
                                style="fill: rgb(224, 224, 224); transform-origin: 142.899px 240.224px;"
                                id="el3ln5ewizl1j" class="animable"></path>
                            <path
                                d="M151.33,280l1.09,6.81-6.07,1-1.06-6.62c-6.08.6-12.16-.36-15.92-2.44l2.16-7.95A25,25,0,0,0,144,273.22l-1.63-10.16c-7-.55-14.9-1.6-16.29-10.29-1-6.44,2.76-12.72,12.19-15.35l-1.08-6.75,6.08-1,1.06,6.62A27.93,27.93,0,0,1,157.26,238l-1.84,8a25.11,25.11,0,0,0-9.81-1.68l1.66,10.34c7,.5,14.77,1.56,16.14,10.13C164.44,271.13,160.69,277.34,151.33,280ZM141,254.13l-1.39-8.63c-3.1,1.24-4.1,3.21-3.78,5.22S138.14,253.71,141,254.13Zm12.8,13c-.35-2.13-2.29-3-5-3.5l1.34,8.39c2.86-1.18,3.93-3,3.62-4.91Z"
                                style="fill: rgb(224, 224, 224); transform-origin: 144.749px 258.74px;"
                                id="elnz9hfj9bu1c" class="animable"></path>
                            <path
                                d="M300.06,69.44a25.66,25.66,0,1,1-20.61-29.87h.06a25.61,25.61,0,0,1,20.55,29.84Z"
                                style="fill: rgb(240, 240, 240); transform-origin: 274.824px 64.8091px;"
                                id="el43rm4qb5gol" class="animable"></path>
                            <path
                                d="M294.06,68.32a19.55,19.55,0,1,1-15.7-22.76h0A19.54,19.54,0,0,1,294.06,68.32Z"
                                style="fill: rgb(245, 245, 245); transform-origin: 274.832px 64.7889px;"
                                id="el9xxqe7xm68k" class="animable"></path>
                            <path
                                d="M294.16,67.72a12.15,12.15,0,0,1-.07-2.41A21.17,21.17,0,0,0,293,59a20.32,20.32,0,0,0-1.89-4,19.79,19.79,0,0,0-3.2-3.87,17.41,17.41,0,0,0-2.11-1.72A16.75,16.75,0,0,0,283.33,48a18.8,18.8,0,0,0-2.71-1.11,20.93,20.93,0,0,0-2.94-.69,20.09,20.09,0,0,0-3-.22,17.88,17.88,0,0,0-2.92.24,17.44,17.44,0,0,0-2.75.65,17.74,17.74,0,0,0-2.53,1,19.3,19.3,0,0,0-7.2,6,20.62,20.62,0,0,0-3,5.68,12.24,12.24,0,0,1-.8,2.27,5.56,5.56,0,0,1,.24-2.43,17.9,17.9,0,0,1,2.65-6.13,19.47,19.47,0,0,1,3-3.53,20,20,0,0,1,4.42-3,19.14,19.14,0,0,1,2.69-1.13,20.53,20.53,0,0,1,3-.74,19.52,19.52,0,0,1,3.15-.28,20,20,0,0,1,6.42,1A19.68,19.68,0,0,1,284,46.7a20.15,20.15,0,0,1,4.83,3.47A20.18,20.18,0,0,1,294,58.69a18.17,18.17,0,0,1,.7,6.64A5.8,5.8,0,0,1,294.16,67.72Z"
                                style="fill: rgb(224, 224, 224); transform-origin: 275.098px 56.1496px;"
                                id="elwtava5t5np" class="animable"></path>
                            <path
                                d="M274.88,76.62,274.3,80l-3-.51.56-3.27a14.45,14.45,0,0,1-7.06-3.67l2.27-3.38a12.27,12.27,0,0,0,5.46,3.12l.85-5c-3.19-1.38-6.72-3.12-6-7.41.54-3.18,3.31-5.51,8.14-5.24l.57-3.33,3,.51-.56,3.27A13.71,13.71,0,0,1,284.3,58l-2.13,3.43A12.26,12.26,0,0,0,277.88,59L277,64.12c3.2,1.35,6.66,3.08,5.94,7.31C282.42,74.55,279.68,76.86,274.88,76.62Zm-.74-13.76.73-4.26c-1.65.09-2.43.85-2.6,1.84S272.9,62.22,274.14,62.86ZM278.07,71c.17-1-.6-1.77-1.81-2.44l-.71,4.13C277.11,72.59,277.9,71.93,278.07,71Z"
                                style="fill: rgb(224, 224, 224); transform-origin: 274.55px 65.655px;"
                                id="eloso4v6ylmvm" class="animable"></path>
                            </g>
                            </g>
                            <g id="freepik--Floor--inject-35" class="animable"
                               style="transform-origin: 251.625px 455.46px;">
                            <path
                                d="M455.25,455.46c0,.15-129.16.26-215.17.26S48,455.61,48,455.46s106-.26,192.08-.26S455.25,455.32,455.25,455.46Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 251.625px 455.46px;"
                                id="elhm99xv9xzw6" class="animable"></path>
                            </g>
                            <g id="freepik--Plant--inject-35" class="animable"
                               style="transform-origin: 97.1516px 375.641px;">
                            <path
                                d="M122.78,414.6c17.16-12,21.06-34.25,20.38-54.26-.11-3.34.25-6.86-1.33-9.8s-5.3-4.93-8.29-3.52c-2.48,1.17-3.56,4.05-4.95,6.44a19.66,19.66,0,0,1-7.84,7.48c-2.12,1.1-4.75,1.78-6.85.62-2.88-1.59-3.22-5.57-3.2-8.89q.06-9.29.11-18.58c0-3.32,0-6.71-1-9.86s-3.32-6.09-6.48-7-7.07.94-7.73,4.19a30,30,0,0,0-.1,4.13c-.09,1.38-.73,2.91-2,3.29s-2.66-.55-3.65-1.52c-3.43-3.36-5.76-7.68-7.93-12s-4.29-8.7-7.4-12.36-7.41-6.56-12.17-6.83-9.83,2.67-11,7.34,1.53,9.44,4.5,13.23a74.34,74.34,0,0,0,15.44,14.72,6,6,0,0,1,2.58,2.77c.72,2.22-1.37,4.42-3.56,5.15-2.48.82-5.16.56-7.75.87s-5.4,1.45-6.38,3.89c-1.36,3.4,1.48,7,4.27,9.29a63.53,63.53,0,0,0,18.8,10.85c2.45.9,5,1.68,7,3.4s3.16,4.7,2,7-4.25,3.09-6.81,2.62-4.85-1.87-7.29-2.79c-4.56-1.72-10.46-1.41-13.38,2.54-1.93,2.59-2.09,6.21-1.12,9.3a24.25,24.25,0,0,0,5,8.21,64,64,0,0,0,27.28,19.17c10.59,3.67,20.4,4.66,30.93.81"
                                style="fill: rgb(243, 156, 18); transform-origin: 97.1516px 356.534px;"
                                id="elck8odaqp3cn" class="animable"></path>
                            <path
                                d="M56.08,299a1.62,1.62,0,0,0,.32.32l1,.88c.87.77,2.15,1.9,3.76,3.41a123.69,123.69,0,0,1,12.69,13.7c2.48,3.08,5,6.56,7.73,10.35s5.53,7.88,8.36,12.28a151.5,151.5,0,0,1,8.19,14.2c1.28,2.54,2.43,5.19,3.59,7.9l3.53,8.24a303.8,303.8,0,0,1,11.83,32,148.1,148.1,0,0,1,5.54,27.26,107.84,107.84,0,0,1,.31,18.76c-.17,2.22-.34,3.93-.5,5.09q-.09.84-.15,1.32a3.53,3.53,0,0,0,0,.46,3.58,3.58,0,0,0,.09-.45,11.4,11.4,0,0,1,.22-1.31c.19-1.16.4-2.87.61-5.09a102.89,102.89,0,0,0-.12-18.82,145.07,145.07,0,0,0-5.43-27.38A297.77,297.77,0,0,0,105.8,370l-3.53-8.24c-1.17-2.71-2.32-5.39-3.61-7.94A149,149,0,0,0,90.4,339.6c-2.85-4.41-5.71-8.48-8.41-12.27s-5.31-7.26-7.81-10.33a118.19,118.19,0,0,0-12.87-13.6c-1.64-1.48-2.94-2.59-3.84-3.32l-1-.84Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 89.8267px 377.085px;"
                                id="elndz5fxnvsms" class="animable"></path>
                            <path
                                d="M98.48,353.81a7,7,0,0,0,.33-1.42c.17-.92.38-2.25.61-3.91.47-3.3,1-7.89,1.49-13s1.08-9.63,1.6-12.92c.25-1.65.47-3,.64-3.9a6.31,6.31,0,0,0,.18-1.44,7.4,7.4,0,0,0-.41,1.39c-.24.91-.53,2.23-.83,3.87-.64,3.29-1.26,7.87-1.79,12.94s-1,9.51-1.31,13q-.24,2.34-.42,3.93A7.12,7.12,0,0,0,98.48,353.81Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 100.902px 335.515px;"
                                id="elmj5eyf08k" class="animable"></path>
                            <path
                                d="M55.77,345.83a9.74,9.74,0,0,0,1.7.2c1.1.1,2.69.23,4.64.46,3.91.42,9.3,1.19,15.2,2.3s11.2,2.37,15,3.38c1.91.49,3.44.93,4.51,1.23a9.59,9.59,0,0,0,1.66.41,8.39,8.39,0,0,0-1.59-.64c-1-.37-2.56-.87-4.46-1.42-3.79-1.12-9.09-2.44-15-3.56a148.35,148.35,0,0,0-15.27-2.14c-2-.17-3.56-.24-4.66-.26A7.69,7.69,0,0,0,55.77,345.83Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 77.125px 349.785px;"
                                id="elstmm374cbnd" class="animable"></path>
                            <path
                                d="M117.09,401.27a2,2,0,0,0,.29-.52l.73-1.54c.63-1.35,1.49-3.32,2.52-5.76,2.06-4.9,4.69-11.75,7.5-19.34s5.37-14.47,7.32-19.39l2.34-5.84c.25-.63.45-1.16.62-1.59a1.9,1.9,0,0,0,.18-.57,2,2,0,0,0-.29.52l-.73,1.55c-.63,1.34-1.49,3.31-2.52,5.76-2.06,4.89-4.69,11.74-7.5,19.34s-5.37,14.46-7.32,19.39l-2.34,5.83-.62,1.59A1.9,1.9,0,0,0,117.09,401.27Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 127.84px 373.995px;"
                                id="elslzdaa7rtrr" class="animable"></path>
                            <path
                                d="M60.33,383a2.28,2.28,0,0,0,.56.23l1.65.55,6.08,2c5.13,1.67,12.19,4,20,6.69s14.89,5,20.06,6.52c2.59.78,4.68,1.39,6.14,1.78l1.68.44a2.44,2.44,0,0,0,.6.11,2.35,2.35,0,0,0-.57-.23l-1.64-.55-6.08-2c-5.13-1.67-12.19-4-20-6.69s-14.89-5-20-6.51c-2.59-.78-4.68-1.39-6.14-1.79L61,383.11A2.46,2.46,0,0,0,60.33,383Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 88.715px 392.16px;"
                                id="elztpk00dafb" class="animable"></path>
                            </g>
                            <g id="freepik--Device--inject-35" class="animable"
                               style="transform-origin: 231.07px 241.98px;">
                            <path
                                d="M285.84,405.54l-111-.51a24.17,24.17,0,0,1-24.06-24.28h0L152,102.49a24.19,24.19,0,0,1,24.29-24.07l111,.51a24.18,24.18,0,0,1,24.07,24.28l-1.18,278.26a24.16,24.16,0,0,1-24.27,24.07Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 231.07px 241.98px;"
                                id="elrpatkk5kho" class="animable"></path>
                            <path
                                d="M287.08,88.54l-21.51-.1a5.34,5.34,0,0,0-5.25,5.43h0v3.91a5.35,5.35,0,0,1-5.25,5.44l-41.94-.2a5.36,5.36,0,0,1-5.21-5.48V93.63a5.35,5.35,0,0,0-5.2-5.48h-7.57L176.32,88a16.93,16.93,0,0,0-17,16.86h0l-1.15,271.6a17,17,0,0,0,16.85,17l110.77.51a16.94,16.94,0,0,0,17-16.86l1.15-271.6A16.93,16.93,0,0,0,287.08,88.54Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 231.055px 240.985px;"
                                id="elj0cla4ehn" class="animable"></path>
                            <rect x="190.58" y="222.86" width="71.34" height="68.72"
                                  style="fill: rgb(243, 156, 18); transform-origin: 226.25px 257.22px;"
                                  id="el85x9j5uxsaf" class="animable"></rect>
                            <polygon points="210.25 203.71 190.57 222.86 261.91 222.86 275.55 203.71 210.25 203.71"
                                     style="fill: rgb(243, 156, 18); transform-origin: 233.06px 213.285px;"
                                     id="elvd6ou88yl3h" class="animable"></polygon>
                            <g id="elanmz40d2fht">
                            <polygon
                                points="210.25 203.71 190.57 222.86 261.91 222.86 275.55 203.71 210.25 203.71"
                                style="isolation: isolate; opacity: 0.1; transform-origin: 233.06px 213.285px;"
                                class="animable"></polygon>
                            </g>
                            <polygon points="261.91 291.57 275.55 272.17 275.55 203.71 261.91 222.86 261.91 291.57"
                                     style="fill: rgb(243, 156, 18); transform-origin: 268.73px 247.64px;"
                                     id="elrttlge064h" class="animable"></polygon>
                            <g id="elxk5d9emj5m7">
                            <polygon
                                points="261.91 291.57 275.55 272.17 275.55 203.71 261.91 222.86 261.91 291.57"
                                style="isolation: isolate; opacity: 0.3; transform-origin: 268.73px 247.64px;"
                                class="animable"></polygon>
                            </g>
                            <rect x="206.01" y="251.39" width="37.24" height="4.22"
                                  style="fill: rgb(243, 156, 18); transform-origin: 224.63px 253.5px;"
                                  id="elgj9ddsdm82u" class="animable"></rect>
                            <g id="elygrbqlhhcis">
                            <rect x="206.01" y="251.39" width="37.24" height="4.22"
                                  style="isolation: isolate; opacity: 0.2; transform-origin: 224.63px 253.5px;"
                                  class="animable"></rect>
                            </g>
                            <rect x="212.75" y="258.77" width="23.77" height="3.98"
                                  style="fill: rgb(243, 156, 18); transform-origin: 224.635px 260.76px;"
                                  id="elcvsl41cb27u" class="animable"></rect>
                            <g id="elmq0n4qpyg4">
                            <rect x="212.75" y="258.77" width="23.77" height="3.98"
                                  style="isolation: isolate; opacity: 0.2; transform-origin: 224.635px 260.76px;"
                                  class="animable"></rect>
                            </g>
                            <path
                                d="M205.12,201a22.39,22.39,0,0,0-.43-2.58,10.66,10.66,0,0,0-3.91-5.77,10.29,10.29,0,0,0-4.42-1.94,10.58,10.58,0,0,0-5.49.48,9.52,9.52,0,0,0-2.64,1.43,9.86,9.86,0,0,0-2.2,2.22,10.37,10.37,0,0,0,0,12.33,10.48,10.48,0,0,0,4.84,3.65,10.51,10.51,0,0,0,9.92-1.47,10.66,10.66,0,0,0,3.9-5.76,22.56,22.56,0,0,0,.43-2.59,8.08,8.08,0,0,1-.23,2.64,10.62,10.62,0,0,1-3.87,6,10.92,10.92,0,0,1-15.42-15.17,10.89,10.89,0,0,1,10.84-4.24,10.78,10.78,0,0,1,8.45,8.09A8.06,8.06,0,0,1,205.12,201Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 194.297px 200.966px;"
                                id="elto5yee2k1k" class="animable"></path>
                            <path
                                d="M189.64,199.52c0-1.5.84-2.5,2.08-2.5s2.08,1,2.08,2.5-.86,2.5-2.08,2.5A2.22,2.22,0,0,1,189.64,199.52Zm3.5,0c0-1.2-.57-1.91-1.42-1.91s-1.42.72-1.42,1.91.55,1.9,1.42,1.9S193.14,200.71,193.14,199.52Zm4.15-2.44h.78l-6.29,9.21H191Zm-2,6.78c0-1.5.86-2.5,2.08-2.5s2.08,1,2.08,2.5-.84,2.5-2.08,2.5-2.09-1-2.09-2.5Zm3.5,0c0-1.19-.55-1.91-1.42-1.91s-1.42.71-1.42,1.91.57,1.9,1.42,1.9,1.41-.76,1.41-1.9Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 194.536px 201.69px;"
                                id="el4e0svbx4iip" class="animable"></path>
                            <path
                                d="M250.71,314.82c0,2-1.45,3.7-4.65,3.7a7.64,7.64,0,0,1-4.26-1.2l1-2a5.41,5.41,0,0,0,3.18,1c1.29,0,2.09-.54,2.09-1.45s-.57-1.46-2.6-1.46h-2.86l.58-6.28H250v2.07h-4.66l-.17,2.12h.91C249.4,311.35,250.71,312.84,250.71,314.82Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 246.255px 312.826px;"
                                id="elvu7o37smbir" class="animable"></path>
                            <path
                                d="M251.76,312.74c0-3.69,2.05-5.78,4.79-5.78s4.79,2.09,4.79,5.78-2,5.78-4.79,5.78S251.76,316.43,251.76,312.74Zm7,0c0-2.54-.89-3.59-2.19-3.59s-2.17,1.05-2.17,3.59.9,3.59,2.17,3.59,2.17-1.05,2.17-3.59Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 256.55px 312.74px;"
                                id="el4a2isaqlsxy" class="animable"></path>
                            <path
                                d="M268,309.6a2.21,2.21,0,0,1-1.95,2.44,2.29,2.29,0,0,1-.37,0,2.5,2.5,0,0,1-1.26-.31l.39-.77a1.46,1.46,0,0,0,.86.22,1.21,1.21,0,0,0,1.28-1.13.61.61,0,0,0,0-.19,1.59,1.59,0,0,1-1.14.41,1.44,1.44,0,0,1-1.56-1.31v-.11a1.56,1.56,0,0,1,1.6-1.52H266C267.26,307.35,268,308.13,268,309.6Zm-1.17-.79a.71.71,0,0,0-.71-.69H266a.69.69,0,1,0-.23,1.36H266a.7.7,0,0,0,.81-.57.41.41,0,0,0,0-.11Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 266.132px 309.689px;"
                                id="elljuzz6lj0mh" class="animable"></path>
                            <path
                                d="M272.17,309.6a2.21,2.21,0,0,1-1.95,2.44,2.29,2.29,0,0,1-.37,0,2.5,2.5,0,0,1-1.26-.31L269,311a1.41,1.41,0,0,0,.85.22,1.19,1.19,0,0,0,1.28-1.11.74.74,0,0,0,0-.21,1.51,1.51,0,0,1-1.13.41,1.45,1.45,0,0,1-1.57-1.32v-.1a1.56,1.56,0,0,1,1.6-1.52h.13C271.4,307.35,272.17,308.13,272.17,309.6Zm-1.18-.79a.71.71,0,0,0-.71-.69h-.08a.68.68,0,0,0,0,1.36h0a.69.69,0,0,0,.79-.59.28.28,0,0,0,0-.09Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 270.307px 309.709px;"
                                id="elkp96kqroqng" class="animable"></path>
                            <rect x="264.15" y="313.61" width="7.98" height="1.01"
                                  style="fill: rgb(38, 50, 56); transform-origin: 268.14px 314.115px;"
                                  id="elcxsm4silvqt" class="animable"></rect>
                            <rect x="185.55" y="310.43" width="41.2" height="1.28"
                                  style="fill: rgb(38, 50, 56); transform-origin: 206.15px 311.07px;"
                                  id="elwbw64o7y1m" class="animable"></rect>
                            <rect x="185.55" y="314.51" width="25.01" height="1.28"
                                  style="fill: rgb(38, 50, 56); transform-origin: 198.055px 315.15px;"
                                  id="elhuv71v6ppn6" class="animable"></rect>
                            <path
                                d="M274.19,367.28l-82.37-.38c-.85,0-1.54-.94-1.53-2.08l.09-21.55c0-1.14.7-2.06,1.55-2.06l82.37.39c.85,0,1.54.93,1.54,2.07l-.09,21.55C275.74,366.36,275.05,367.28,274.19,367.28Z"
                                style="fill: rgb(243, 156, 18); transform-origin: 233.065px 354.245px;"
                                id="elf16212x2fij" class="animable"></path>
                            <path
                                d="M229.65,355.21c0,1.1-.78,1.72-2.32,1.71h-2.84v-6.45h2.67c1.37,0,2.16.62,2.16,1.67a1.49,1.49,0,0,1-1,1.46A1.53,1.53,0,0,1,229.65,355.21Zm-.65-.06c0-.84-.58-1.21-1.67-1.21h-2.18v2.42h2.18C228.41,356.37,229,356,229,355.15ZM225.16,351v2.34h2c1,0,1.56-.39,1.57-1.16s-.57-1.17-1.56-1.18Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 227.071px 353.695px;"
                                id="elk7pmu7c60v" class="animable"></path>
                            <path
                                d="M231.1,354.18v-3.69h.65v3.67c0,1.53.68,2.23,1.88,2.24s1.9-.69,1.9-2.22v-3.67h.63v3.7c0,1.85-1,2.8-2.54,2.8S231.09,356,231.1,354.18Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 233.63px 353.75px;"
                                id="el2m6m9j4r8ms" class="animable"></path>
                            <path d="M240.16,354.75V357h-.64v-2.23l-2.45-4.23h.69l2.11,3.63,2.13-3.61h.65Z"
                                  style="fill: rgb(255, 255, 255); transform-origin: 239.86px 353.77px;"
                                  id="elu6e9h41o5u" class="animable"></path>
                            <rect x="174.92" y="148.85" width="31.14" height="15.9"
                                  style="fill: rgb(243, 156, 18); transform-origin: 190.49px 156.8px;"
                                  id="el7nqrnghk84w" class="animable"></rect>
                            <polygon points="181.64 143.28 174.92 148.85 206.06 148.85 210.65 143.28 181.64 143.28"
                                     style="fill: rgb(243, 156, 18); transform-origin: 192.785px 146.065px;"
                                     id="el7d9sis30tfc" class="animable"></polygon>
                            <g id="elctc0m49t0o5">
                            <polygon
                                points="181.64 143.28 174.92 148.85 206.06 148.85 210.65 143.28 181.64 143.28"
                                style="isolation: isolate; opacity: 0.2; transform-origin: 192.785px 146.065px;"
                                class="animable"></polygon>
                            </g>
                            <polygon points="206.06 164.75 210.65 158.69 210.65 143.28 206.06 148.85 206.06 164.75"
                                     style="fill: rgb(243, 156, 18); transform-origin: 208.355px 154.015px;"
                                     id="elmxj19ayje3q" class="animable"></polygon>
                            <g id="elbn9osh8yz6b">
                            <polygon
                                points="206.06 164.75 210.65 158.69 210.65 143.28 206.06 148.85 206.06 164.75"
                                style="isolation: isolate; opacity: 0.1; transform-origin: 208.355px 154.015px;"
                                class="animable"></polygon>
                            </g>
                            <rect x="179.53" y="154.02" width="21.23" height="1.64"
                                  style="fill: rgb(243, 156, 18); transform-origin: 190.145px 154.84px;"
                                  id="elkxztm546uyd" class="animable"></rect>
                            <g id="elbq4qrb8akvo">
                            <rect x="179.53" y="154.02" width="21.23" height="1.64"
                                  style="isolation: isolate; opacity: 0.1; transform-origin: 190.145px 154.84px;"
                                  class="animable"></rect>
                            </g>
                            <rect x="183.73" y="156.98" width="13.18" height="1.64"
                                  style="fill: rgb(243, 156, 18); transform-origin: 190.32px 157.8px;"
                                  id="el5wjoveeja2" class="animable"></rect>
                            <g id="el6aze1za7vm9">
                            <rect x="183.73" y="156.98" width="13.18" height="1.64"
                                  style="isolation: isolate; opacity: 0.1; transform-origin: 190.32px 157.8px;"
                                  class="animable"></rect>
                            </g>
                            <rect x="183.73" y="173.32" width="14.19" height="2.17"
                                  style="fill: rgb(38, 50, 56); transform-origin: 190.825px 174.405px;"
                                  id="elnqtmgddq5rn" class="animable"></rect>
                            <path
                                d="M174.92,148.85a9.5,9.5,0,0,1,1.51-.1l4.11-.09c3.47,0,8.27-.07,13.56-.07l12,.06-.16.07,3.42-4a12,12,0,0,1,1.33-1.43,11.19,11.19,0,0,1-1.15,1.58L206.22,149l-.06.07h-.1l-12,.06c-5.29,0-10.09,0-13.56-.08l-4.11-.08A7.24,7.24,0,0,1,174.92,148.85Z"
                                style="fill: rgb(243, 156, 18); transform-origin: 192.805px 146.21px;"
                                id="elarauvwtwmgn" class="animable"></path>
                            <g id="el42ub1cvdkwm">
                            <g style="opacity: 0.2; transform-origin: 192.805px 146.21px;" class="animable">
                            <path
                                d="M174.92,148.85a9.5,9.5,0,0,1,1.51-.1l4.11-.09c3.47,0,8.27-.07,13.56-.07l12,.06-.16.07,3.42-4a12,12,0,0,1,1.33-1.43,11.19,11.19,0,0,1-1.15,1.58L206.22,149l-.06.07h-.1l-12,.06c-5.29,0-10.09,0-13.56-.08l-4.11-.08A7.24,7.24,0,0,1,174.92,148.85Z"
                                id="eliaepkvi1eta" class="animable"
                                style="transform-origin: 192.805px 146.21px;">
                            </path>
                            </g>
                            </g>
                            <path
                                d="M206.06,164.75a60.3,60.3,0,0,1-.26-7.95,59.37,59.37,0,0,1,.26-8,59.37,59.37,0,0,1,.27,8A58.63,58.63,0,0,1,206.06,164.75Z"
                                style="fill: rgb(243, 156, 18); transform-origin: 206.064px 156.775px;"
                                id="elayry0qiq83" class="animable"></path>
                            <g id="elwnbkmqyobw">
                            <g style="opacity: 0.2; transform-origin: 206.064px 156.775px;" class="animable">
                            <path
                                d="M206.06,164.75a60.3,60.3,0,0,1-.26-7.95,59.37,59.37,0,0,1,.26-8,59.37,59.37,0,0,1,.27,8A58.63,58.63,0,0,1,206.06,164.75Z"
                                id="el9dr4vv133ci" class="animable"
                                style="transform-origin: 206.064px 156.775px;">
                            </path>
                            </g>
                            </g>
                            <rect x="228.15" y="173.32" width="14.19" height="2.17"
                                  style="fill: rgb(38, 50, 56); transform-origin: 235.245px 174.405px;"
                                  id="el979k05qg8o9" class="animable"></rect>
                            <g id="elzijbvfp8qdg">
                            <rect x="222.4" y="141.27" width="24.62" height="22.33"
                                  style="fill: rgb(243, 156, 18); transform-origin: 234.71px 152.435px; transform: rotate(-89.52deg);"
                                  class="animable"></rect>
                            </g>
                            <polygon points="230.15 135.07 223.56 140.13 245.89 140.13 250.48 135.07 230.15 135.07"
                                     style="fill: rgb(243, 156, 18); transform-origin: 237.02px 137.6px;"
                                     id="elm6yb3cu9eeo" class="animable"></polygon>
                            <polygon points="245.89 164.75 250.48 158.69 250.48 135.07 245.89 140.13 245.89 164.75"
                                     style="fill: rgb(243, 156, 18); transform-origin: 248.185px 149.91px;"
                                     id="elyfgye5tl94q" class="animable"></polygon>
                            <rect x="228.4" y="150.08" width="11.29" height="1.64"
                                  style="fill: rgb(243, 156, 18); transform-origin: 234.045px 150.9px;"
                                  id="elnw8v73i1d98" class="animable"></rect>
                            <g id="elpvgn4m9z80r">
                            <rect x="228.4" y="150.08" width="11.29" height="1.64"
                                  style="isolation: isolate; opacity: 0.2; transform-origin: 234.045px 150.9px;"
                                  class="animable"></rect>
                            </g>
                            <rect x="230.64" y="153.05" width="7.01" height="1.64"
                                  style="fill: rgb(243, 156, 18); transform-origin: 234.145px 153.87px;"
                                  id="el3kv5ddu1qfz" class="animable"></rect>
                            <g id="el2nd0jflb6l8">
                            <rect x="230.64" y="153.05" width="7.01" height="1.64"
                                  style="isolation: isolate; opacity: 0.2; transform-origin: 234.145px 153.87px;"
                                  class="animable"></rect>
                            </g>
                            <path
                                d="M223.56,140.13a5.53,5.53,0,0,1,1.15-.1l3.12-.09c2.64-.05,6.28-.08,10.31-.08h7.75l-.17.07c1.4-1.51,2.57-2.75,3.4-3.61a9.3,9.3,0,0,1,1.36-1.3,10.36,10.36,0,0,1-1.16,1.48c-.78.91-1.9,2.19-3.26,3.73l-.07.08h-7.85c-4,0-7.67,0-10.31-.08l-3.12-.08A4.92,4.92,0,0,1,223.56,140.13Z"
                                style="fill: rgb(243, 156, 18); transform-origin: 237.02px 137.665px;"
                                id="elv9l5gxoz5v" class="animable"></path>
                            <g id="elw78obrxht6m">
                            <g style="opacity: 0.3; transform-origin: 237.02px 137.665px;" class="animable">
                            <path
                                d="M223.56,140.13a5.53,5.53,0,0,1,1.15-.1l3.12-.09c2.64-.05,6.28-.08,10.31-.08h7.75l-.17.07c1.4-1.51,2.57-2.75,3.4-3.61a9.3,9.3,0,0,1,1.36-1.3,10.36,10.36,0,0,1-1.16,1.48c-.78.91-1.9,2.19-3.26,3.73l-.07.08h-7.85c-4,0-7.67,0-10.31-.08l-3.12-.08A4.92,4.92,0,0,1,223.56,140.13Z"
                                id="el98nmqzfcgxb" class="animable"
                                style="transform-origin: 237.02px 137.665px;">
                            </path>
                            </g>
                            </g>
                            <path
                                d="M245.89,164.75c-.15,0-.27-5.51-.27-12.31s.12-12.31.27-12.31.27,5.51.27,12.31S246,164.75,245.89,164.75Z"
                                style="fill: rgb(243, 156, 18); transform-origin: 245.89px 152.44px;"
                                id="ele2lag7b024j" class="animable"></path>
                            <g id="elrptxqfpjnj">
                            <g style="opacity: 0.3; transform-origin: 245.89px 152.44px;" class="animable">
                            <path
                                d="M245.89,164.75c-.15,0-.27-5.51-.27-12.31s.12-12.31.27-12.31.27,5.51.27,12.31S246,164.75,245.89,164.75Z"
                                id="el71velv9i6yy" class="animable"
                                style="transform-origin: 245.89px 152.44px;">
                            </path>
                            </g>
                            </g>
                            <rect x="267.69" y="173.32" width="14.19" height="2.17"
                                  style="fill: rgb(38, 50, 56); transform-origin: 274.785px 174.405px;"
                                  id="eln9389frubo" class="animable"></rect>
                            <path
                                d="M264.65,149.26a20.49,20.49,0,0,1,3.5-.19c2.17,0,5.16-.08,8.47-.08,2.93,0,5.62,0,7.66.06l-.15.07c.91-1,1.65-1.74,2.18-2.27a4.25,4.25,0,0,1,.86-.78,4.49,4.49,0,0,1-.69.93c-.47.58-1.17,1.4-2,2.39l-.06.07h-.1c-2,0-4.73.06-7.66.06-3.31,0-6.3,0-8.47-.08A23.26,23.26,0,0,1,264.65,149.26Z"
                                style="fill: rgb(243, 156, 18); transform-origin: 275.91px 147.795px;"
                                id="elsfppv5f9azr" class="animable"></path>
                            <rect x="264.65" y="149.26" width="19.64" height="15.5"
                                  style="fill: rgb(243, 156, 18); transform-origin: 274.47px 157.01px;"
                                  id="el0k56j2lc3erk" class="animable"></rect>
                            <g id="elw9g9rftcvc">
                            <rect x="264.65" y="149.26" width="19.64" height="15.5"
                                  style="isolation: isolate; opacity: 0.2; transform-origin: 274.47px 157.01px;"
                                  class="animable"></rect>
                            </g>
                            <polygon points="268.8 146.07 264.65 149.25 284.29 149.25 287.17 146.07 268.8 146.07"
                                     style="fill: rgb(243, 156, 18); transform-origin: 275.91px 147.66px;"
                                     id="elm2xzhlild2n" class="animable"></polygon>
                            <polygon points="284.29 164.75 287.17 160.94 287.17 146.07 284.29 149.25 284.29 164.75"
                                     style="fill: rgb(243, 156, 18); transform-origin: 285.73px 155.41px;"
                                     id="el621jdua62h" class="animable"></polygon>
                            <g id="elwstfwqg3a5">
                            <polygon
                                points="284.29 164.75 287.17 160.94 287.17 146.07 284.29 149.25 284.29 164.75"
                                style="isolation: isolate; opacity: 0.1; transform-origin: 285.73px 155.41px;"
                                class="animable"></polygon>
                            </g>
                            <rect x="270.21" y="155.17" width="8.99" height="1.2"
                                  style="fill: rgb(243, 156, 18); transform-origin: 274.705px 155.77px;"
                                  id="elq9ihktpzbhk" class="animable"></rect>
                            <rect x="271.99" y="157.35" width="5.58" height="1.2"
                                  style="fill: rgb(243, 156, 18); transform-origin: 274.78px 157.95px;"
                                  id="el8s752xwratq" class="animable"></rect>
                            <path
                                d="M284.29,164.75A55.68,55.68,0,0,1,284,157a55.59,55.59,0,0,1,.27-7.74,58.84,58.84,0,0,1,.26,7.74A59,59,0,0,1,284.29,164.75Z"
                                style="fill: rgb(243, 156, 18); transform-origin: 284.266px 157.005px;"
                                id="elir4vgs1b4ch" class="animable"></path>
                            </g>
                            <g id="freepik--Sparkles--inject-35" class="animable"
                               style="transform-origin: 227.17px 128.175px;">
                            <polygon
                                points="312.32 74.58 310.28 78.3 306.56 80.33 310.28 82.37 312.32 86.08 314.35 82.37 318.07 80.33 314.35 78.3 312.32 74.58"
                                style="fill: rgb(243, 156, 18); transform-origin: 312.315px 80.33px;"
                                id="eltr0omccg38j" class="animable"></polygon>
                            <polygon
                                points="138.35 170.27 136.31 173.99 132.59 176.02 136.31 178.05 138.35 181.77 140.38 178.05 144.1 176.02 140.38 173.99 138.35 170.27"
                                style="fill: rgb(243, 156, 18); transform-origin: 138.345px 176.02px;"
                                id="eldnouk7avkto" class="animable"></polygon>
                            <polygon
                                points="327.14 90.36 325.89 92.64 323.61 93.89 325.89 95.14 327.14 97.43 328.4 95.14 330.68 93.89 328.4 92.64 327.14 90.36"
                                style="fill: rgb(243, 156, 18); transform-origin: 327.145px 93.895px;"
                                id="elbs8two2truq" class="animable"></polygon>
                            <polygon
                                points="127.19 148.89 125.94 151.17 123.66 152.42 125.94 153.67 127.19 155.96 128.44 153.67 130.72 152.42 128.44 151.17 127.19 148.89"
                                style="fill: rgb(243, 156, 18); transform-origin: 127.19px 152.425px;"
                                id="elpaym2ul12og" class="animable"></polygon>
                            </g>
                            <g id="freepik--Character--inject-35" class="animable"
                               style="transform-origin: 362.515px 310.025px;">
                            <path
                                d="M409.69,409l-7.36-5.79,10.75-13.85,10.85,8.35-.61.9c-2.75,4-14.28,20.08-17,22C403.2,422.86,409.69,409,409.69,409Z"
                                style="fill: rgb(243, 156, 18); transform-origin: 413.13px 405.109px;"
                                id="elpfoac0sedrp" class="animable"></path>
                            <path
                                d="M405.35,420.48c-.13-.1,3.82-5.34,8.82-11.7s9.16-11.43,9.29-11.33-3.82,5.34-8.82,11.7S405.48,420.58,405.35,420.48Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 414.405px 408.965px;"
                                id="el3q3vuoinjtk" class="animable"></path>
                            <path
                                d="M411,410.46c0,.16-.51.22-1.07.22s-1.05-.08-1.07-.24.45-.37,1.07-.36S411,410.3,411,410.46Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 409.93px 410.38px;"
                                id="el21x2rvmh268i" class="animable"></path>
                            <path
                                d="M410.79,411.72c-.05.16-.58.15-1.2.06s-1.14-.21-1.14-.37.55-.31,1.22-.22S410.84,411.56,410.79,411.72Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 409.622px 411.504px;"
                                id="el3qz6pm2kdas" class="animable"></path>
                            <path
                                d="M420.14,401.56c-.08,0-.25-.29-.45-.83a6.22,6.22,0,0,1-.39-2.26,3.48,3.48,0,0,1,.82-2.2c.41-.46.79-.57.83-.5s-.22.3-.49.75a4.15,4.15,0,0,0-.56,2,11.73,11.73,0,0,0,.2,2.13C420.19,401.18,420.22,401.54,420.14,401.56Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 420.127px 398.655px;"
                                id="elbscvr2nv746" class="animable"></path>
                            <path
                                d="M409.58,409.41c-.06-.15.24-.42.63-.67s.77-.41.88-.29-.11.51-.55.8S409.64,409.57,409.58,409.41Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 410.345px 408.958px;"
                                id="elbdwwlpedigo" class="animable"></path>
                            <path
                                d="M409,408.64c-.12-.12.07-.57.42-1s.76-.73.9-.63-.06.54-.43,1S409.16,408.75,409,408.64Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 409.664px 407.827px;"
                                id="el614qtj7a9ks" class="animable"></path>
                            <path
                                d="M360.93,290s-22,58.34-19,69.24,62.18,54.18,62.18,54.18l16.07-23.14S374,353.73,373.85,351.72s18.34-50.49,18.34-50.49Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 380.914px 351.71px;"
                                id="elvkwudlkxms" class="animable"></path>
                            <path
                                d="M403.09,395.63l-.21-.11c-.15-.11-.34-.23-.58-.38l-2.2-1.51c-1.89-1.33-4.63-3.27-8-5.73-6.66-4.92-15.71-11.94-25.31-20.16-2.4-2.06-4.73-4.09-7-6.06l-3.27-2.93a12.49,12.49,0,0,1-2.82-3.2,5.85,5.85,0,0,1-.41-4.05c.25-1.29.58-2.5.89-3.69.63-2.35,1.26-4.53,1.83-6.52l2.74-9.41c.3-1.08.54-1.94.72-2.57l.18-.67a.13.13,0,0,1-.09-.15.12.12,0,0,1,.24.06.12.12,0,0,1-.09.09,3.92,3.92,0,0,1-.14.68c-.13.59-.33,1.47-.62,2.59-.57,2.25-1.46,5.48-2.57,9.47-.55,2-1.16,4.17-1.77,6.53-.3,1.17-.62,2.4-.86,3.65a5.44,5.44,0,0,0,.39,3.74,12.19,12.19,0,0,0,2.72,3.05l3.28,2.91c2.23,2,4.56,4,7,6.05,9.59,8.21,18.59,15.27,25.19,20.26l7.86,5.87,2.14,1.59.55.42C403,395.57,403.1,395.63,403.09,395.63Z"
                                style="fill: rgb(69, 90, 100); transform-origin: 378.096px 362.014px;"
                                id="elxaidxe1uves" class="animable"></path>
                            <path
                                d="M397.73,402.68c-.12-.09,2.93-4.3,6.81-9.4s7.13-9.17,7.25-9.08-2.94,4.3-6.82,9.41S397.85,402.77,397.73,402.68Z"
                                style="fill: rgb(69, 90, 100); transform-origin: 404.76px 393.44px;"
                                id="elzgg2elbtgpk" class="animable"></path>
                            <path
                                d="M399.71,179.06c2,3.92,3,7.32,6.88,9.34,1.75.92,3.89,1.44,5,3.1,1.15,1.82.61,4.45,2.06,6,2.12,2.31,6.44.44,8.81,2.47,2.12,1.82,1.44,5.72,3.73,7.32,1.28.91,3,.71,4.5,1.27,2.4.93,3.54,3.7,3.85,6.25a10.9,10.9,0,0,1-.75,6.05,6.16,6.16,0,0,1-4.7,3.59c-2.73.29-5.81-1.59-8,0a10.72,10.72,0,0,0-1.84,2.24,6.87,6.87,0,0,1-9.65,1.15A6.8,6.8,0,0,1,408,226c-1.52-2.54-1.42-6-3.65-8a12.71,12.71,0,0,0-4.18-1.92c-1.45-.54-2.95-1.44-3.38-2.92a12.93,12.93,0,0,0-2.1-3.61c-1.11-1.66-2.59.37-4.07-.45s-.91-2.42-1-4.1"
                                style="fill: rgb(38, 50, 56); transform-origin: 412.132px 204.186px;"
                                id="elfp1h8hm05jk" class="animable"></path>
                            <path
                                d="M373.84,235.74l-19-6.35s-8.39,24.16-11,24.4c-14.24,1.3-29.48-3.43-34.82-5.29-.55-.61-1.17-1.34-1.86-2.24a8.59,8.59,0,0,1-1.34-2.56,13.26,13.26,0,0,1-.76-3.52,1.12,1.12,0,0,0-1-1.22,1.15,1.15,0,0,0-.91.34c-.61.8-.77,3.85.63,7.14s-3.57.67-5.4-.25-7.62-3.5-8.35-3.16c-1.07.5-.73,1.73,1.12,2.61s7.21,3.89,6.67,4.83-9.77-3.88-9.77-3.88-1.82-1.34-2.47-.27c-1.17,1.93,9,6.31,10,6.7.69.28.15,1.32-.57,1s-9-5-10.24-3c-.94,1.5,8.36,3.69,9.56,5.62s-6.88-2.37-7.71-.9c-.31.54-.47,1,4.53,2.8a109.68,109.68,0,0,0,11.15,2.84v.05s49.94,22.34,60.72.81C374.42,239.32,373.84,235.74,373.84,235.74Z"
                                style="fill: rgb(229, 186, 171); transform-origin: 329.274px 250.497px;"
                                id="elhku8857ybz" class="animable"></path>
                            <path
                                d="M392.61,215.73h0l8.29.15,6.58,18.87-5.36,21.62c-1.57,6.31,5.55,18.95,5.36,25.92L361,289.82l-1-31.05v-1l-16.09-8,5.31-13c8.17-19.14,22.44-20.3,22.44-20.3Z"
                                style="fill: rgb(243, 156, 18); transform-origin: 375.697px 252.775px;"
                                id="elljrrvjpx3y" class="animable"></path>
                            <g id="eltr5jdnsr5g">
                            <g style="opacity: 0.2; transform-origin: 375.697px 252.775px;" class="animable">
                            <path
                                d="M392.61,215.73h0l8.29.15,6.58,18.87-5.36,21.62c-1.57,6.31,5.55,18.95,5.36,25.92L361,289.82l-1-31.05v-1l-16.09-8,5.31-13c8.17-19.14,22.44-20.3,22.44-20.3Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 375.697px 252.775px;"
                                id="elknae1zjq1f" class="animable"></path>
                            </g>
                            </g>
                            <path
                                d="M401.24,215.93a.61.61,0,0,0-.27.11,8.19,8.19,0,0,1-.81.23,20.43,20.43,0,0,1-3.22.32l.1-.19,3.17,5.15.22.34-.41-.07a19.93,19.93,0,0,0-5.56-.18l.19-.24a28.83,28.83,0,0,0,.9,6.26l.14.42-.44-.1a22.9,22.9,0,0,1-6.05-2.22l.39-.17c-.38,1.86-.77,3.81-1.17,5.8l-.09.43-.34-.27a27.13,27.13,0,0,1-2.39-2.15,26.1,26.1,0,0,1-2.09-2.36l.38.05-5.32,4.19-.33.26-.09-.41c-.38-1.85-.74-3.65-1.09-5.37l.32.18-5.69,2-.39.14.11-.4c.6-2.27,1.15-4.33,1.65-6.16l.14.22-4.94-.85h-.2l.11-.17,2.16-3.16.58-.81c.13-.18.21-.27.22-.26s-.1.2-.16.3l-.52.84-2.05,3.23-.09-.2,4.95.75h.2v.2l-1.58,6.18-.28-.27,5.66-2,.27-.1.06.28,1.12,5.37-.42-.15,5.31-4.21.21-.17.17.21a25.33,25.33,0,0,0,2,2.25,27.5,27.5,0,0,0,2.34,2.11l-.42.16c.4-2,.8-3.94,1.18-5.8l.07-.36.32.19a22.51,22.51,0,0,0,5.9,2.18l-.29.31a28.4,28.4,0,0,1-.86-6.36v-.22h.22a19.67,19.67,0,0,1,5.68.25l-.19.28c-1.21-2-2.24-3.8-3.08-5.21l-.1-.18h.2a23,23,0,0,0,3.21-.2A10.58,10.58,0,0,1,401.24,215.93Z"
                                style="fill: rgb(69, 90, 100); transform-origin: 384.65px 223.875px;"
                                id="elw4nmn9x1rg" class="animable"></path>
                            <path
                                d="M410.42,223.86a7.16,7.16,0,0,0-1-.34,5.86,5.86,0,0,0-2.94-.05l.08-.11c.19,1.1.49,2.42.9,3.93s.91,3.22,1.36,5.15l.07.28-.29-.08c-2.37-.69-5.16-1.21-8.09-2.2l.27-.22c.31,2.85.29,6,.46,9.4v.29h-.3a47.26,47.26,0,0,1-7.85-2.07c-.32-.09-.69-.22-.78-.08a2.33,2.33,0,0,0-.44.82l-.83,2c-.55,1.35-1.12,2.72-1.69,4.1l-.17.42-.28-.35-5.32-6.6-.4-.49h.36L375,243.54l-.28.19-.12-.32c-1-2.78-1.9-5.46-2.8-8.06l.38.13a48.52,48.52,0,0,1-9.52,4.79l-.35.14V240c.61-4.33,1.16-8.22,1.63-11.58l.25.19a18,18,0,0,1-7.65,1.23h-.17l.06-.16,1.79-4.82c.21-.51.36-.92.48-1.23a2.17,2.17,0,0,1,.19-.41,3,3,0,0,1-.12.43c-.11.32-.25.73-.42,1.26-.4,1.14-1,2.77-1.69,4.86l-.11-.17a18,18,0,0,0,7.5-1.31l.29-.12v.31c-.45,3.37-1,7.25-1.54,11.59l-.31-.24a48.66,48.66,0,0,0,9.4-4.79l.27-.17.11.3,2.82,8-.4-.12,8.55-5.89.21-.14.15.19.4.49,5.31,6.61-.45.06,1.7-4.1.83-2a2.46,2.46,0,0,1,.61-1,.71.71,0,0,1,.36-.17h.34a4.94,4.94,0,0,1,.55.15,48.68,48.68,0,0,0,7.77,2.08l-.28.25c-.15-3.38-.12-6.55-.4-9.38v-.33l.31.11c2.9,1,5.67,1.55,8.06,2.27l-.22.2c-.42-1.91-.91-3.62-1.29-5.15s-.66-2.85-.83-4v-.09h.09a5.67,5.67,0,0,1,3,.14A4.31,4.31,0,0,1,410.42,223.86Z"
                                style="fill: rgb(69, 90, 100); transform-origin: 383.395px 234.086px;"
                                id="elc9vk4oml01" class="animable"></path>
                            <path
                                d="M360.26,257.5a2.83,2.83,0,0,1-1-.53,8.08,8.08,0,0,1-2.15-2.21,7.09,7.09,0,0,1-1.09-4.44,9.86,9.86,0,0,1,5.1-8.26l-.14.2c.38-2.85.73-5.3,1-7a18.25,18.25,0,0,1,.51-2.75,17.5,17.5,0,0,1-.2,2.8c-.17,1.74-.46,4.2-.81,7.06v.12l-.13.07a9.64,9.64,0,0,0-4.83,7.83,6.89,6.89,0,0,0,.92,4.21,8.77,8.77,0,0,0,2,2.25A10.16,10.16,0,0,1,360.26,257.5Z"
                                style="fill: rgb(69, 90, 100); transform-origin: 359.242px 245.005px;"
                                id="elwrivtdv32je" class="animable"></path>
                            <path
                                d="M362,236.55c-.13.07-.59-.6-1-1.48s-.68-1.65-.54-1.72.59.6,1,1.49S362.15,236.49,362,236.55Z"
                                style="fill: rgb(69, 90, 100); transform-origin: 361.232px 234.95px;"
                                id="el5s3g3hybshn" class="animable"></path>
                            <path
                                d="M392.05,216l1.43-32.67-13-9.83-11.79,5.76s-.4,14.81,0,21.24,6.87,7.1,6.87,7.1-.15,3.77-.3,7.72a8.38,8.38,0,0,0,8,8.7h.42A8.39,8.39,0,0,0,392.05,216Z"
                                style="fill: rgb(229, 186, 171); transform-origin: 380.996px 198.76px;"
                                id="eldhnz19jkt1h" class="animable"></path>
                            <path d="M370,190.06a.83.83,0,1,0,.84-.82h0a.82.82,0,0,0-.82.82Z"
                                  style="fill: rgb(38, 50, 56); transform-origin: 370.83px 190.07px;"
                                  id="elriw9d1yw27o" class="animable"></path>
                            <path
                                d="M369.2,189.16c.1.11.71-.41,1.59-.46s1.55.38,1.65.26-.07-.24-.36-.44a2.19,2.19,0,0,0-2.59.15C369.23,188.91,369.14,189.12,369.2,189.16Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 370.825px 188.671px;"
                                id="eljcmxiecubae" class="animable"></path>
                            <path d="M379.52,190.06a.82.82,0,1,0,.82-.82.82.82,0,0,0-.82.82Z"
                                  style="fill: rgb(38, 50, 56); transform-origin: 380.34px 190.06px;"
                                  id="elno873onnu0p" class="animable"></path>
                            <path
                                d="M379,189.16c.1.11.71-.41,1.6-.46s1.54.38,1.64.26-.07-.24-.36-.44a2.19,2.19,0,0,0-2.59.15A.64.64,0,0,0,379,189.16Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 380.634px 188.671px;"
                                id="elx67rkrr2kw" class="animable"></path>
                            <path
                                d="M378.74,197.47a16.21,16.21,0,0,1-4.28,1.48,2.48,2.48,0,0,0,2.93.83,1.84,1.84,0,0,0,1.38-2.21Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 376.639px 198.716px;"
                                id="eltslgygvxa78" class="animable"></path>
                            <path d="M375.57,207.6a16,16,0,0,0,8.51-2.87s-1.93,4.72-8.37,4.45Z"
                                  style="fill: rgb(215, 135, 118); transform-origin: 379.825px 206.961px;"
                                  id="elyxh98rnsw9c" class="animable"></path>
                            <path
                                d="M412.17,201.79a4.61,4.61,0,0,1-2.33-.53,6.46,6.46,0,0,1-2.54-2.46,26.43,26.43,0,0,1-1.9-4.07c-1.2-3-2.1-5.75-2.72-7.77-.09-.32-.18-.61-.26-.89s-.11-.65-.17-.88C398.74,171.8,387,169.3,384.64,169.3s-6.86-1.37-13.23,5.24a14.46,14.46,0,0,0-2.42,3.34,14.42,14.42,0,0,0-2.84,6.05,7.47,7.47,0,0,0-.15,3.19c.12,0,.14-1.22.64-3.08a16.46,16.46,0,0,1,1.24-3.16,12.19,12.19,0,0,0,.65,7.4l2.28-.63,8.18-2.78c-.74-2.54.35-5.68,1-7.15l.06-.05a12.8,12.8,0,0,0,10.82,10.5l1.51,21c10.87-2.32,10.62-16.87,10.55-19.83.5,1.67,1.14,3.58,1.94,5.59a24.3,24.3,0,0,0,2,4.14,6.7,6.7,0,0,0,2.83,2.55,4.41,4.41,0,0,0,2.53.37,1.77,1.77,0,0,0,.88-.34A5.42,5.42,0,0,1,412.17,201.79Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 389.502px 189.176px;"
                                id="elc172ii6c4rh" class="animable"></path>
                            <path
                                d="M375.81,196.64a5.8,5.8,0,0,0-1.44-.18c-.23,0-.45-.05-.5-.21a1.27,1.27,0,0,1,.13-.72l.6-1.83c.43-1.31.79-2.5,1-3.36a5.86,5.86,0,0,0,.33-1.42,5.46,5.46,0,0,0-.57,1.34c-.3.85-.7,2-1.13,3.33-.2.64-.39,1.26-.58,1.84a1.39,1.39,0,0,0-.08.92.52.52,0,0,0,.37.32,1.28,1.28,0,0,0,.39,0A6.11,6.11,0,0,0,375.81,196.64Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 374.728px 192.811px;"
                                id="el2kf2u9zmajk" class="animable"></path>
                            <path
                                d="M394.16,196.37a7.91,7.91,0,0,1,.35-3.17,3,3,0,0,1,2.31-2,2.53,2.53,0,0,1,2.6,2.11,3.1,3.1,0,0,1-1.58,3.09,4.07,4.07,0,0,1-3.57.1"
                                style="fill: rgb(229, 186, 171); transform-origin: 396.784px 194.031px;"
                                id="ely25au3wtsqc" class="animable"></path>
                            <path
                                d="M396,195.43c0-.07.35.09.81-.05a1.45,1.45,0,0,0,1-1.36,1.1,1.1,0,0,0-.23-.86,1,1,0,0,0-.7-.21c-.48.05-.82.17-.85.09s.22-.3.79-.46a1.27,1.27,0,0,1,1.08.21,1.44,1.44,0,0,1,.44,1.26,2,2,0,0,1-.48,1.2,1.44,1.44,0,0,1-.94.5C396.27,195.82,396,195.47,396,195.43Z"
                                style="fill: rgb(215, 135, 118); transform-origin: 397.178px 194.149px;"
                                id="el56jcf53nq6r" class="animable"></path>
                            <path
                                d="M386.19,450.82v-9.36l17.54-.11.14,13.69-1.08.08c-4.84.3-24.62,1.18-27.86.22C371.32,454.27,386.19,450.82,386.19,450.82Z"
                                style="fill: rgb(243, 156, 18); transform-origin: 389.118px 448.563px;"
                                id="elaha67g2swhe" class="animable"></path>
                            <path
                                d="M374.52,454.48c0-.16,6.56-.3,14.65-.3s14.64.14,14.64.3-6.55.3-14.64.3S374.52,454.65,374.52,454.48Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 389.165px 454.48px;"
                                id="elj91u8dmbcxn" class="animable"></path>
                            <path
                                d="M385.89,452.73c-.15.08-.49-.26-.84-.71s-.58-.86-.47-1,.57.13.95.62S386,452.65,385.89,452.73Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 385.243px 451.862px;"
                                id="elk367qpj7a6" class="animable"></path>
                            <path
                                d="M384.77,453.35c-.16.06-.47-.37-.79-.91s-.54-1-.41-1.13.58.24.92.83S384.92,453.29,384.77,453.35Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 384.186px 452.32px;"
                                id="elit4uw232nnp" class="animable"></path>
                            <path
                                d="M398.53,454.42c-.06-.05.08-.38.38-.87a6,6,0,0,1,1.54-1.7,3.52,3.52,0,0,1,2.23-.72c.62,0,.94.27.91.34s-.38,0-.9.08a4.06,4.06,0,0,0-1.89.78,10.85,10.85,0,0,0-1.55,1.48C398.86,454.22,398.6,454.47,398.53,454.42Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 401.054px 452.778px;"
                                id="elttbzp1pycem" class="animable"></path>
                            <path
                                d="M385.83,451c.09-.14.48-.07.92.08s.8.35.77.51-.47.23-1,.06S385.75,451.11,385.83,451Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 386.668px 451.336px;"
                                id="elvqijzgn081e" class="animable"></path>
                            <path
                                d="M386.11,450.06c0-.16.48-.29,1.05-.28s1,.15,1,.31-.46.3-1.05.29S386.09,450.23,386.11,450.06Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 387.135px 450.08px;"
                                id="elmjvauldkdyh" class="animable"></path>
                            <path
                                d="M370.53,288.4l-9.6,1.61,5.53,6.8c1.59,32,1.2,63.05,2.67,78.52.22,2.35,10.14,76,9.15,74.31l29.21,1.22-8.72-74,4.13-65.73a34.82,34.82,0,0,0,3.66-25.67l-.72-2.95"
                                style="fill: rgb(69, 90, 100); transform-origin: 384.244px 366.685px;"
                                id="ely9o716hp4cl" class="animable"></path>
                            <path
                                d="M390.66,172.74a4.94,4.94,0,0,1-3-3.34,4.31,4.31,0,0,1,1.33-4.23,3.86,3.86,0,0,1,4.35-.41,5.51,5.51,0,0,1,2.16,3,4.33,4.33,0,0,1,.26,2.49,3.68,3.68,0,0,1-2.69,2.43,11.16,11.16,0,0,1-3.78.1"
                                style="fill: rgb(38, 50, 56); transform-origin: 391.689px 168.584px;"
                                id="eldku2kxcv5it" class="animable"></path>
                            <path
                                d="M416.43,190.56a3.21,3.21,0,0,0,.06-1.31,3,3,0,0,0-.69-1.33,3.62,3.62,0,0,0-1.72-1,7.33,7.33,0,0,0-2.47-.17c-.91.06-1.88.22-2.94.24a5.76,5.76,0,0,1-3.25-.77,5.2,5.2,0,0,1-1.95-3,16.09,16.09,0,0,0-3.2-5.74,17.18,17.18,0,0,0-4.14-3.46,24.26,24.26,0,0,0-4.62-1.93h.35a4.32,4.32,0,0,1,1,.2,14.45,14.45,0,0,1,3.47,1.38,16.79,16.79,0,0,1,4.32,3.46A16.14,16.14,0,0,1,404,183a4.73,4.73,0,0,0,1.72,2.74,5.35,5.35,0,0,0,3,.72c1,0,2-.15,2.92-.19a7.62,7.62,0,0,1,2.6.25,3.82,3.82,0,0,1,1.84,1.16,3.12,3.12,0,0,1,.68,1.5,2.12,2.12,0,0,1-.09,1C416.53,190.47,416.44,190.57,416.43,190.56Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 404.147px 181.325px;"
                                id="elhho485g5plu" class="animable"></path>
                            <path
                                d="M398,196.31c0-.05.48.33.48,1.19a1.87,1.87,0,0,1-.61,1.34,2,2,0,0,1-1.73.54,2.07,2.07,0,0,1-1.47-1.06,1.9,1.9,0,0,1-.14-1.46,1.46,1.46,0,0,1,.83-1,2.35,2.35,0,0,0-.46,1.07,1.65,1.65,0,0,0,.2,1.13,1.71,1.71,0,0,0,1.13.77,1.67,1.67,0,0,0,1.31-.37,1.63,1.63,0,0,0,.56-1C398.16,196.77,397.88,196.35,398,196.31Z"
                                style="fill: rgb(224, 224, 224); transform-origin: 396.462px 197.634px;"
                                id="eladuvqtr0x1q" class="animable"></path>
                            <path d="M395.37,174a15.17,15.17,0,0,0-7.84-4.15A8.84,8.84,0,0,1,395.37,174Z"
                                  style="fill: rgb(243, 156, 18); transform-origin: 391.45px 171.922px;"
                                  id="elilg9w8yin" class="animable"></path>
                            <path
                                d="M399.1,195.08c0-.07.29-.09.47.24a.77.77,0,0,1,0,.63.79.79,0,0,1-.68.42.81.81,0,0,1-.86-.75.43.43,0,0,1,0-.16c0-.34.24-.45.29-.41s0,.2.09.4a.44.44,0,0,0,.46.38.32.32,0,0,0,.34-.3s0-.05,0-.08C399.2,195.26,399.08,195.16,399.1,195.08Z"
                                style="fill: rgb(224, 224, 224); transform-origin: 398.83px 195.705px;"
                                id="elb7nxclfubsu" class="animable"></path>
                            <path
                                d="M392.26,215a3,3,0,0,1,.11,1.08,8.52,8.52,0,0,1-.58,2.91A8.71,8.71,0,0,1,379,223.18a8.81,8.81,0,0,1-3-3.24,8.51,8.51,0,0,1-.93-2.82,2.8,2.8,0,0,1,0-1.08,11.72,11.72,0,0,0,1.27,3.72,8.91,8.91,0,0,0,2.92,3,8.57,8.57,0,0,0,9.69-.59,8.88,8.88,0,0,0,2.54-3.34A12,12,0,0,0,392.26,215Z"
                                style="fill: rgb(69, 90, 100); transform-origin: 383.699px 219.77px;"
                                id="elkpde00slgog" class="animable"></path>
                            <path
                                d="M390.16,444.17a1.31,1.31,0,0,1-.06-.27c0-.21-.07-.47-.11-.8-.1-.74-.24-1.77-.41-3.07-.34-2.67-.79-6.53-1.32-11.32-1.07-9.56-2.38-22.78-3.56-37.41s-2-27.91-2.46-37.52c-.25-4.8-.41-8.69-.5-11.38q-.06-2-.09-3.09v-.81a1.22,1.22,0,0,1,0-.27,1.22,1.22,0,0,1,0,.27,4.12,4.12,0,0,0,.06.8c.05.75.11,1.78.2,3.09.16,2.73.38,6.6.66,11.37.58,9.6,1.46,22.86,2.63,37.49s2.43,27.86,3.39,37.42c.49,4.76.88,8.62,1.16,11.34.13,1.3.23,2.33.3,3.08a7,7,0,0,0,.07.8A.9.9,0,0,1,390.16,444.17Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 385.901px 391.2px;"
                                id="eloc5adlagci" class="animable"></path>
                            <path
                                d="M406.48,444.24a4.73,4.73,0,0,1-1.12.16c-.72.06-1.77.13-3.06.19-2.59.13-6.17.19-10.12.13s-7.53-.18-10.11-.28l-3.06-.15a4.3,4.3,0,0,1-1.13-.12,4.28,4.28,0,0,1,1.13-.09h3.07c2.58,0,6.16.06,10.11.12s7.51.06,10.1,0h3.06A4.74,4.74,0,0,1,406.48,444.24Z"
                                style="fill: rgb(38, 50, 56); transform-origin: 392.18px 444.409px;"
                                id="elk23d1iviotq" class="animable"></path>
                            <path
                                d="M401.24,215.93a12.56,12.56,0,0,1-4.3.77l.19-.36,1.93,3.13,1.22,2,.29.49-.56-.11a45.32,45.32,0,0,0-5.58-.47,5,5,0,0,1,1.59-.25,17.45,17.45,0,0,1,4.08.22l-.26.38-1.24-2-1.87-3.16-.21-.35h.4c1.28-.06,2.37-.14,3.12-.21A6.05,6.05,0,0,1,401.24,215.93Z"
                                style="fill: rgb(69, 90, 100); transform-origin: 397.835px 218.943px;"
                                id="eldn9vrfl1118" class="animable"></path>
                            <path
                                d="M410.42,223.86c0,.09-1.45-.26-3.94-.32l.17-.19c.59,2.34,1.37,5.46,2.28,9.06l.1.42-.41-.11L402.26,231l-1.73-.48.34-.27c.14,3.45.27,6.65.38,9.4v.3l-.28-.08-6.11-1.71-1.69-.5a2.42,2.42,0,0,1-.58-.23,2.17,2.17,0,0,1,.62.1l1.72.39,6.13,1.52-.27.23c-.14-2.75-.3-5.95-.47-9.39v-.37l.36.1,1.73.48,6.34,1.77-.31.31c-.84-3.63-1.56-6.77-2.11-9.13l-.05-.2h.22a19,19,0,0,1,2.91.37A5.14,5.14,0,0,1,410.42,223.86Z"
                                style="fill: rgb(69, 90, 100); transform-origin: 401.505px 231.595px;"
                                id="el18mflvnykbw" class="animable"></path>
                            <path
                                d="M411.68,249.22a3,3,0,0,1-.72-.75c-.42-.53-.88-1.41-1.54-2.43h.27a60.47,60.47,0,0,1-5.66,9l-.2.27-.21-.27q-1.5-1.87-3-4l-2.3-3h.38L395,251.3l-1.66,1.43-.77.67-.37.32-.09.08H392c0,.09-.33-.12-.26-.21h0v-.06h0s.07.17.1.16h0l-.17.05-.06-.19c-.59-2-1-3.58-1.25-4.72a5.17,5.17,0,0,1-.2-1.79,17.33,17.33,0,0,0,.41,1.74c.31,1.11.78,2.7,1.43,4.65l-.23-.14a.41.41,0,0,1,.22,0,.25.25,0,0,1,.17.24.33.33,0,0,1,0,.14h-.05l-.14-.06a.21.21,0,0,0-.06-.1l-.06-.06h0l.08-.08.37-.33.76-.68c.52-.47,1.06-1,1.63-1.46l3.65-3.25.21-.19.18.23,2.3,3c1.06,1.38,2.08,2.72,3,4h-.41a70.74,70.74,0,0,0,5.79-8.84l.14-.24.14.23c.64,1.07,1,2,1.41,2.51S411.71,249.19,411.68,249.22Z"
                                style="fill: rgb(69, 90, 100); transform-origin: 400.916px 250.46px;"
                                id="elbphhccv9bx" class="animable"></path>
                            <path
                                d="M394,235a3.38,3.38,0,0,1-.17,1c-.15.62-.38,1.5-.7,2.59-.63,2.17-1.61,5.15-2.87,8.36s-2.58,6.06-3.6,8.08c-.51,1-.94,1.82-1.26,2.37a3.78,3.78,0,0,1-.53.83,31.21,31.21,0,0,1,1.45-3.36c.93-2.06,2.18-4.91,3.44-8.11s2.29-6.15,3-8.29A28.66,28.66,0,0,1,394,235Z"
                                style="fill: rgb(69, 90, 100); transform-origin: 389.435px 246.615px;"
                                id="els9kfpztrzqa" class="animable"></path>
                            <path
                                d="M401.24,215.93a12.56,12.56,0,0,1-4.3.77l.19-.36,1.93,3.13,1.22,2,.29.49-.56-.11a45.32,45.32,0,0,0-5.58-.47,5,5,0,0,1,1.59-.25,17.45,17.45,0,0,1,4.08.22l-.26.38-1.24-2-1.87-3.16-.21-.35h.4c1.28-.06,2.37-.14,3.12-.21A6.05,6.05,0,0,1,401.24,215.93Z"
                                style="fill: rgb(69, 90, 100); transform-origin: 397.835px 218.943px;"
                                id="elkd9a8cvmvr" class="animable"></path>
                            <path
                                d="M394,235a3.38,3.38,0,0,1-.17,1c-.15.62-.38,1.5-.7,2.59-.63,2.17-1.61,5.15-2.87,8.36s-2.58,6.06-3.6,8.08c-.51,1-.94,1.82-1.26,2.37a3.78,3.78,0,0,1-.53.83,31.21,31.21,0,0,1,1.45-3.36c.93-2.06,2.18-4.91,3.44-8.11s2.29-6.15,3-8.29A28.66,28.66,0,0,1,394,235Z"
                                style="fill: rgb(69, 90, 100); transform-origin: 389.435px 246.615px;"
                                id="eluksmd3kqi7n" class="animable"></path>
                            <g id="eljkusuxw8eme">
                            <rect x="313.22" y="207.56" width="98.59" height="151.61" rx="7.76"
                                  style="fill: rgb(243, 156, 18); transform-origin: 362.515px 283.365px; transform: rotate(-73.75deg);"
                                  class="animable"></rect>
                            </g>
                            <g id="eln4lwu8s8wm">
                            <g style="opacity: 0.3; transform-origin: 362.515px 283.365px;" class="animable">
                            <g id="el93y21zi00y">
                            <rect x="313.22" y="207.56" width="98.59" height="151.61" rx="7.76"
                                  class="animable"
                                  style="transform-origin: 362.515px 283.365px; transform: rotate(-73.75deg);">
                            </rect>
                            </g>
                            </g>
                            </g>
                            <path d="M296.78,279.1l-2.36,8.08-.83-.24,2.14-7.34-1.91-.56.22-.74Z"
                                  style="fill: rgb(255, 255, 255); transform-origin: 295.185px 282.74px;"
                                  id="el8zaqjn6urf3" class="animable"></path>
                            <path
                                d="M305,288.86l-.22.74-5.71-1.6.17-.59,4.32-2.31c1.18-.63,1.51-1.13,1.67-1.68.27-.94-.22-1.7-1.45-2.06a2.87,2.87,0,0,0-2.47.25l-.44-.68a3.83,3.83,0,0,1,3.2-.32c1.64.48,2.43,1.62,2,3-.22.77-.67,1.39-2.06,2.14l-3.54,1.9Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 302.628px 284.999px;"
                                id="elqxneik3ucd" class="animable"></path>
                            <path
                                d="M313.87,290l-1.62-.47-.62,2.12-.83-.24.62-2.13L306.86,288l.17-.6,5.85-4.1.92.27-5.65,4,3.51,1,.54-1.87.81.24-.54,1.87,1.61.47Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 310.47px 287.475px;"
                                id="eloqcloqi4vv" class="animable"></path>
                            <path
                                d="M326.25,293.57l-1.62-.48-.62,2.13-.83-.24.62-2.13-4.56-1.33.18-.6,5.84-4.11.92.27-5.65,4,3.51,1,.54-1.87.81.23-.54,1.88,1.61.47Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 322.85px 291.015px;"
                                id="eli8ekssjaia" class="animable"></path>
                            <path
                                d="M333.39,295.37c-.41,1.37-1.68,2.17-3.65,1.59a4.29,4.29,0,0,1-2.6-1.88l.6-.54A3.66,3.66,0,0,0,330,296.2c1.37.4,2.3-.06,2.58-1s-.15-1.88-2.21-2.47l-1.72-.51,1.6-3.93,4.42,1.29-.21.74-3.7-1.08-1,2.5,1,.3C333.16,292.71,333.8,293.94,333.39,295.37Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 330.905px 292.721px;"
                                id="elyfl3wqlbjgs" class="animable"></path>
                            <path
                                d="M341.38,297.66a2.63,2.63,0,0,1-3.26,1.76l-.22-.08c-2.15-.62-2.88-2.45-2.14-5,.8-2.74,2.72-3.74,4.91-3.1a3.75,3.75,0,0,1,1.79,1l-.53.57a2.88,2.88,0,0,0-1.46-.84c-1.74-.51-3.19.29-3.82,2.48-.06.22-.12.44-.16.67a2.71,2.71,0,0,1,2.87-.67,2.55,2.55,0,0,1,2.08,2.95Zm-.83-.21a1.83,1.83,0,0,0-1.25-2.28,1.31,1.31,0,0,0-.27-.06,1.86,1.86,0,1,0-1.64,3.34,1.8,1.8,0,0,0,.64.18,1.84,1.84,0,0,0,2.43-.93,1.06,1.06,0,0,0,.09-.25Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 338.97px 295.29px;"
                                id="elrqskpawoxpq" class="animable"></path>
                            <path
                                d="M352.41,301c-.39,1.35-1.68,2.1-3.63,1.53a4.38,4.38,0,0,1-2.61-1.88l.6-.55a3.68,3.68,0,0,0,2.23,1.67c1.34.39,2.26,0,2.56-1s-.22-1.81-1.72-2.24l-.58-.17.18-.61,3.06-2.16-4.13-1.2.21-.74,5.2,1.51-.17.59L350.48,298C352.19,298.52,352.79,299.68,352.41,301Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 349.975px 298.186px;"
                                id="ell0bpgyajq1s" class="animable"></path>
                            <path
                                d="M360.54,303.25a2.63,2.63,0,0,1-3.29,1.74l-.2-.07c-2.14-.62-2.87-2.45-2.13-5,.8-2.75,2.72-3.74,4.91-3.11a3.94,3.94,0,0,1,1.79,1l-.53.57a3.07,3.07,0,0,0-1.46-.84c-1.74-.5-3.19.29-3.83,2.48-.06.22-.11.44-.15.67a2.65,2.65,0,0,1,2.87-.66A2.55,2.55,0,0,1,360.6,303,1.27,1.27,0,0,1,360.54,303.25Zm-.83-.22a1.85,1.85,0,0,0-1.29-2.29l-.23-.05a1.86,1.86,0,1,0-1.64,3.34,1.8,1.8,0,0,0,.64.18,1.84,1.84,0,0,0,2.43-.94c0-.09.07-.18.09-.27Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 358.13px 300.867px;"
                                id="elag5dncz3t2m" class="animable"></path>
                            <path
                                d="M369.62,299.74l-.17.59-5.56,6.51-.9-.26,5.46-6.38-4.16-1.2-.44,1.51-.82-.24.66-2.25Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 366.305px 302.43px;"
                                id="el3i6wtbkieqy" class="animable"></path>
                            <path
                                d="M381.17,303.11l-.17.59-5.56,6.5-.9-.26,5.46-6.37-4.16-1.21-.44,1.51-.82-.24.66-2.25Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 377.855px 305.79px;"
                                id="el3f60hty4tc6" class="animable"></path>
                            <path
                                d="M387.43,311.26c-.42,1.43-1.89,2-3.82,1.4s-2.86-1.8-2.44-3.23a2.08,2.08,0,0,1,2.14-1.53,1.89,1.89,0,0,1-.75-2.15c.38-1.31,1.74-1.81,3.45-1.31s2.61,1.65,2.22,3a1.89,1.89,0,0,1-1.81,1.4A2.12,2.12,0,0,1,387.43,311.26Zm-.85-.26c.29-1-.39-1.87-1.82-2.29s-2.46,0-2.75,1,.37,1.87,1.81,2.29S386.28,312,386.58,311ZM385,308.05c1.26.37,2.18,0,2.43-.85s-.37-1.7-1.58-2.05-2.16,0-2.42.87S383.69,307.69,385,308.05Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 384.695px 308.573px;"
                                id="ely0gwmp9xg4a" class="animable"></path>
                            <path
                                d="M395.82,311.68c-.8,2.75-2.72,3.75-4.92,3.11a3.85,3.85,0,0,1-1.78-1l.53-.57a2.89,2.89,0,0,0,1.45.84c1.75.51,3.19-.29,3.83-2.48.06-.22.12-.44.16-.67a2.65,2.65,0,0,1-2.87.66,2.53,2.53,0,0,1-2.06-2.94,1.31,1.31,0,0,1,.06-.27,2.61,2.61,0,0,1,3.24-1.76l.24.08C395.83,307.3,396.56,309.13,395.82,311.68Zm-.68-1.93a2,2,0,0,0-1.57-2.35h-.06a1.84,1.84,0,0,0-1.38,3.41,1.82,1.82,0,0,0,.38.11,2,2,0,0,0,2.61-1.1A.14.14,0,0,1,395.14,309.75Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 392.61px 310.735px;"
                                id="el84obrwm9x7e" class="animable"></path>
                            <path d="M405.17,310.1l-2.36,8.08-.83-.24,2.14-7.34-1.91-.56.22-.74Z"
                                  style="fill: rgb(255, 255, 255); transform-origin: 403.575px 313.74px;"
                                  id="elroefh6na69s" class="animable"></path>
                            <path
                                d="M409.69,319.86l-.22.74L403.8,319l.17-.59,4.32-2.31c1.18-.63,1.51-1.13,1.67-1.68.27-.93-.22-1.7-1.45-2.06a2.87,2.87,0,0,0-2.47.25l-.44-.68a3.83,3.83,0,0,1,3.2-.31c1.64.47,2.43,1.61,2,3-.23.77-.67,1.39-2.06,2.14l-3.54,1.9Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 407.358px 316.003px;"
                                id="els10fqwgsteq" class="animable"></path>
                            <path
                                d="M417,320.4c-.4,1.35-1.68,2.1-3.63,1.53A4.35,4.35,0,0,1,410.8,320l.6-.54a3.63,3.63,0,0,0,2.23,1.67c1.34.39,2.26,0,2.55-1s-.21-1.81-1.71-2.24l-.58-.17.18-.62,3.05-2.15-4.13-1.2.22-.74,5.19,1.51-.17.59-3.12,2.21C416.81,317.94,417.41,319.1,417,320.4Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 414.6px 317.566px;"
                                id="el4j7r7d059hq" class="animable"></path>
                            <g id="el9ycoc8ee5y">
                            <rect x="384.57" y="288.11" width="3.65" height="67.41"
                                  style="fill: rgb(255, 255, 255); transform-origin: 386.395px 321.815px; transform: rotate(-73.76deg);"
                                  class="animable"></rect>
                            </g>
                            <g id="elz7b4l0xly88">
                            <rect x="398.29" y="316.12" width="3.66" height="34.58"
                                  style="fill: rgb(255, 255, 255); transform-origin: 400.12px 333.41px; transform: rotate(-73.76deg);"
                                  class="animable"></rect>
                            </g>
                            <g id="elp88z85f7ilo">
                            <rect x="299.82" y="250.42" width="21.13" height="28.29" rx="4.96"
                                  style="fill: rgb(38, 50, 56); transform-origin: 310.385px 264.565px; transform: rotate(-73.75deg);"
                                  class="animable"></rect>
                            </g>
                            <path
                                d="M295.5,265.12l.38-1.3,14,4.08a3.05,3.05,0,0,0,1.71-5.86l-14-4.07.38-1.3,14,4.07a4.41,4.41,0,0,1-2.46,8.46Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 305.226px 262.996px;"
                                id="elz59bei3ac6d" class="animable"></path>
                            <g id="elunsb5cvkw59">
                            <rect x="318.4" y="262.39" width="1.36" height="10"
                                  style="fill: rgb(255, 255, 255); transform-origin: 319.08px 267.39px; transform: rotate(-73.7deg);"
                                  class="animable"></rect>
                            </g>
                            <g id="el1oaws0a6i2p">
                            <rect x="338.77" y="211.5" width="6.24" height="72.75"
                                  style="fill: rgb(255, 255, 255); transform-origin: 341.89px 247.875px; transform: rotate(-73.75deg);"
                                  class="animable"></rect>
                            </g>
                            <path
                                d="M412.17,248.91,395,237.63s-8.39,24.16-11,24.4c-14.24,1.3-29.48-3.43-34.82-5.29-.54-.61-1.16-1.34-1.85-2.24a8.59,8.59,0,0,1-1.34-2.56,12.88,12.88,0,0,1-.76-3.52,1.12,1.12,0,0,0-1-1.22,1.15,1.15,0,0,0-.91.34c-.62.8-.78,3.85.63,7.14s-3.57.67-5.4-.25-7.63-3.5-8.36-3.16c-1.06.5-.73,1.73,1.12,2.61s7.21,3.89,6.68,4.83-9.78-3.88-9.78-3.88-1.81-1.34-2.46-.27c-1.18,1.93,9,6.31,10,6.7.68.28.14,1.32-.58,1s-9.12-5-10.33-3.06c-.93,1.5,8.37,3.69,9.57,5.62s-6.89-2.37-7.72-.91c-.31.55-.46,1,4.54,2.81a109.5,109.5,0,0,0,11.14,2.84v.05s51.06,22.86,60.72.81C413.43,246.92,412.17,248.91,412.17,248.91Z"
                                style="fill: rgb(229, 186, 171); transform-origin: 368.497px 258.822px;"
                                id="ele0oxgnl6mwd" class="animable"></path>
                            <path
                                d="M400.9,215.88s15.6,1.84,14,20.4a90.55,90.55,0,0,1-9.5,32.91l-20.46-10.74a126.09,126.09,0,0,0,10.32-28.94L401,215.88Z"
                                style="fill: rgb(243, 156, 18); transform-origin: 399.978px 242.535px;"
                                id="elo6g4b75ukw" class="animable"></path>
                            <g id="elsoepwjwmrco">
                            <g style="opacity: 0.2; transform-origin: 399.978px 242.535px;" class="animable">
                            <path
                                d="M400.9,215.88s15.6,1.84,14,20.4a90.55,90.55,0,0,1-9.5,32.91l-20.46-10.74a126.09,126.09,0,0,0,10.32-28.94L401,215.88Z"
                                style="fill: rgb(255, 255, 255); transform-origin: 399.978px 242.535px;"
                                id="el6upbococ1d6" class="animable"></path>
                            </g>
                            </g>
                            <path
                                d="M410.42,223.86c0,.09-1.45-.26-3.94-.32l.17-.19c.59,2.34,1.37,5.46,2.28,9.06l.1.42-.41-.11L402.26,231l-1.73-.48.34-.27c.14,3.45.27,6.65.38,9.4v.3l-.28-.08-6.11-1.71-1.69-.5a2.42,2.42,0,0,1-.58-.23,2.17,2.17,0,0,1,.62.1l1.72.39,6.13,1.52-.27.23c-.14-2.75-.3-5.95-.47-9.39v-.37l.36.1,1.73.48,6.34,1.77-.31.31c-.84-3.63-1.56-6.77-2.11-9.13l-.05-.2h.22a19,19,0,0,1,2.91.37A5.14,5.14,0,0,1,410.42,223.86Z"
                                style="fill: rgb(69, 90, 100); transform-origin: 401.505px 231.595px;"
                                id="elxvfa2qy2tag" class="animable"></path>
                            <path
                                d="M411.68,249.22a3,3,0,0,1-.72-.75c-.42-.53-.88-1.41-1.54-2.43h.27a60.47,60.47,0,0,1-5.66,9l-.2.27-.21-.27q-1.5-1.87-3-4l-2.3-3h.38L395,251.3l-1.66,1.43-.77.67-.37.32-.09.08H392c0,.09-.33-.12-.26-.21h0v-.06h0s.07.17.1.16h0l-.17.05-.06-.19c-.59-2-1-3.58-1.25-4.72a5.17,5.17,0,0,1-.2-1.79,17.33,17.33,0,0,0,.41,1.74c.31,1.11.78,2.7,1.43,4.65l-.23-.14a.41.41,0,0,1,.22,0,.25.25,0,0,1,.17.24.33.33,0,0,1,0,.14h-.05l-.14-.06a.21.21,0,0,0-.06-.1l-.06-.06h0l.08-.08.37-.33.76-.68c.52-.47,1.06-1,1.63-1.46l3.65-3.25.21-.19.18.23,2.3,3c1.06,1.38,2.08,2.72,3,4h-.41a70.74,70.74,0,0,0,5.79-8.84l.14-.24.14.23c.64,1.07,1,2,1.41,2.51S411.71,249.19,411.68,249.22Z"
                                style="fill: rgb(69, 90, 100); transform-origin: 400.916px 250.46px;"
                                id="elcyis1sthd9s" class="animable"></path>
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
                            </svg>
                        </div>

                    </div>


                    <div class="row d-flex flex-column">

                        <form>

                            <%
                                PagoVO pagoVO = new PagoVO();
                                PagoDAO pagoDAO = new PagoDAO();
                                String usu = idusuario;
                                ArrayList<PagoVO> listarPagos = pagoDAO.listarPagos(usu);
                                for (int i = 0; i < listarPagos.size(); i++) {
                                    pagoVO = listarPagos.get(i);

                            %>

                            <div class="col-xl-12">
                                <div class="card mb-12">

                                    <%                                        String estado = pagoVO.getEstado_pago();
                                        int numEstado = Integer.parseInt(estado);

                                        if (numEstado == 1) {

                                    %>

                                    <div class="card-header">
                                        <h5 class="card-title"><%=pagoVO.getNombreCarga()%></h5>
                                    </div>
                                    <div class="card-body">
                                        <label for="" class="card-text">Tipo de pago: </label>
                                        <label for="" class="card-text"><%=pagoVO.getTipoPago()%></label>
                                        <br>
                                        <label for="" class="card-text">Fecha de realización: </label>
                                        <label for="" class="card-text"><%=pagoVO.getFecha_disponibilad()%></label>
                                        <br>
                                        <label for="" class="card-text text-black font-w500">Dirección: </label>
                                        <label for="" class="card-text text-black font-w500"><%=pagoVO.getDireccion()%> <%=pagoVO.getCiudad()%></label>
                                    </div>
                                    <div class="card-footer">
                                        <p class="card-text d-inline text-warning font-w600">$<%=pagoVO.getValor()%></p>
                                        <a href="./Pago?txtidpago=<%=pagoVO.getIdpago()%>&opcion=2" class="card-link float-right"> Pagar</a>
                                    </div>
                                    <%}%>
                                </div>
                            </div>
                            <%}%>
                        </form>


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
