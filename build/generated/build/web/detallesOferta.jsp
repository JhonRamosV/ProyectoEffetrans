<%-- 
    Document   : detallesOferta
    Created on : 11/06/2022, 07:03:19 PM
    Author     : Pablo
--%>

<%@page import="ModeloDAO.ConfirmacionEnvioDAO"%>
<%@page import="ModeloVO.ConfirmacionEnvioVO"%>
<%@page import="ModeloVO.CiudadVO"%>
<%@page import="ModeloDAO.CiudadDAO"%>
<%@page import="ModeloVO.DepartamentoVO"%>
<%@page import="ModeloDAO.DepartamentoDAO"%>
<%@page import="java.time.LocalDate"%>
<%@page import="ModeloVO.TipoCargaVO"%>
<%@page import="ModeloDAO.TipoCargaDAO"%>
<%@page import="ModeloVO.OfertaVO"%>
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




                    <div class="row">

                        <%
                            OfertaVO oftVO = (OfertaVO) request.getAttribute("ConsultaOferta");

                            if (oftVO != null) {

                        %>

                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="col-6">
                                        <h2>Conductor</h2>
                                    </div>
                                    <div class="col-6">
                                        <h2>Vehículo</h2>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-6 border-right">
                                            <div>
                                                <label class="text-black" for="">Nombre:</label>
                                                <label class="ml-2" for=""><%=oftVO.getUsunombre()%></label>
                                            </div>
                                            <div>
                                                <label class="text-black" for="">Apellido:</label>
                                                <label class="ml-2" for=""><%=oftVO.getUsuapellido()%></label>
                                            </div>
                                            <div>
                                                <label class="text-black" for="">Teléfono:</label>
                                                <label class="ml-2" for=""><%=oftVO.getUsutelefono()%></label>
                                            </div>
                                            <div>
                                                <label class="text-black" for="">Correo:</label>
                                                <label class="ml-2" for=""><%=oftVO.getUsucorreo()%></label>
                                            </div>

                                        </div>
                                        <div class="col-6 ">
                                            <div>
                                                <label class="text-black" for="">Marca:</label>
                                                <label class="ml-2" for=""><%=oftVO.getMarca()%></label>
                                            </div>
                                            <div>
                                                <label class="text-black" for="">Modelo:</label>
                                                <label class="ml-2" for=""><%=oftVO.getIdvehiculo()%></label>
                                            </div>
                                            <div>
                                                <label class="text-black" for="">Tipo de Vehículo:</label>
                                                <label class="ml-2" for=""><%=oftVO.getTipoveh()%></label>
                                            </div>
                                            <div>
                                                <label class="text-black" for="">Placa:</label>
                                                <label class="ml-2" for=""><%=oftVO.getVehplaca()%></label>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="col-12 mt-5">
                                        <div class="text-center border-bottom mb-4">
                                            <h2>Oferta</h2>
                                        </div>

                                        <div>
                                            <label class="text-black" for="">Precio:</label>
                                            <label class="ml-2" for="">$<%=oftVO.getPrecio()%></label>
                                        </div>
                                        <div>
                                            <label class="text-black" for="">Tipo de pago:</label>
                                            <label class="ml-2" for=""><%=oftVO.getIdtipo_pago()%></label>
                                        </div>
                                        <div>
                                            <label class="text-black" for="">Fecha de disponibilidad:</label>
                                            <label class="ml-2" for=""><%=oftVO.getFecha_disponibilidad()%></label>
                                        </div>


                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <div class="">
                            <div class="card-header">
                                <h2>Detalles del Envío</h2>
                            </div>

                            <div class="card-body d-flex">
                                <div class="col-6">
                                    <div>
                                        <label class="text-black" for="">Tipo de Carga:</label>
                                        <label class="ml-3" for=""><%=oftVO.getTipocarga()%></label>
                                    </div>

                                    <div>
                                        <label class="text-black" for="">Carga:</label>
                                        <label class="ml-3" for=""><%=oftVO.getIdenvio()%></label>
                                    </div>

                                    <div>
                                        <label class="text-black" for="">Peso(kg):</label>
                                        <label class="ml-3" for=""><%=oftVO.getEnvpeso()%></label>
                                    </div>

                                    <div>
                                        <label class="text-black" for="">Cantidad:</label>
                                        <label class="ml-3" for=""><%=oftVO.getEnvcantidad()%></label>
                                    </div>

                                    <div>
                                        <label class="text-black" for="">Longitud(m²):</label>
                                        <label class="ml-3" for=""><%=oftVO.getEnvlongitud()%></label>
                                    </div>

                                    <div>
                                        <label class="text-black" for="">Dirección:</label>
                                        <label class="ml-3" for=""><%=oftVO.getEnvdireccion()%></label>
                                    </div>

                                    <div>
                                        <label class="text-black" for="">Departamento:</label>
                                        <label class="ml-3" for=""><%=oftVO.getDeptnombre()%></label>
                                    </div>

                                    <div>
                                        <label class="text-black" for="">Ciudad:</label>
                                        <label class="ml-3" for=""><%=oftVO.getCiudnombre()%></label>
                                    </div>

                                    <div>
                                        <label class="text-black" for="">Código Postal:</label>
                                        <label class="ml-3" for=""><%=oftVO.getEnvcodpostal()%></label>
                                    </div>

                                    <div>
                                        <label class="text-black" for="">Fecha limite de llegada:</label>
                                        <label class="ml-3" for=""><%=oftVO.getEnvfechalimllegada()%></label>
                                    </div>

                                    <div>
                                        <label class="text-black" for="">Comentario:</label>
                                        <label class="ml-3" for=""><%=oftVO.getEnvcomentario()%></label>
                                    </div>

                                </div>


                                <div class="col-6">
                                    <img class="ml-3" src="images/cliente/detalles-env.png" width="380" height="380"
                                         alt="">
                                </div>
                            </div>
                        </div>
                    </div>                  

                    <form method="post" action="ConfirmacionEnvio">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h2>Aceptar Oferta</h2>
                                    </div>
                                    <div class="card-body">
                                        <div class="col-12">
                                            <div>
                                                <label class="text-black" for="">Nombre del destinatario:</label>
                                                <input class="form-control" type="text" name="txtnombre_destinatario" required>
                                            </div>

                                            <div>
                                                <label class="text-black" for="">Apellido del destinatario:</label>
                                                <input class="form-control" type="text" name="txtapellido_destinatario" required>
                                            </div>

                                            <div>
                                                <label class="text-black" for="">Teléfono del destinatario:</label>
                                                <input class="form-control" type="text" name="txttelefono_destinatario" required>
                                            </div>

                                            <input type="hidden" name="txtidoferta" value="<%=oftVO.getIdoferta()%>">
                                            <input type="hidden" name="txtestado" value="1">

                                            <div>
                                                <input type="hidden" value="1" name="opcion">
                                                <button type="submit" class="btn btn-warning w-100 mt-4 fs-14" id="toastr-success-top-right">Aceptar</button>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </form>  



                    <% } else {
                            request.getRequestDispatcher("ofertas.jsp").forward(request, response);
                        }
                    %>
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
