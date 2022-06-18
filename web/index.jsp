<%-- 
    Document   : index
    Created on : 23/04/2022, 10:49:48 AM
    Author     : Pablo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="index.css" rel="stylesheet" type="text/css">
        <link href="index2.css" rel="stylesheet" type="text/css">
        <link href="inicio.css" rel="stylesheet" type="text/css">
        <title>Effetrans</title>
    </head>
    <body>
        <div>

            <nav class="menunav">
                <ul>
                    <a href="index.jsp"><img class="logo" src="img/Logo.png" alt="Logo"></a>
                    <div class="divmenu">
                        <li class="linav"><a class="aMenu" href="index.jsp">Inicio</a></li>
                        <li class="linav"><a class="aMenu"
                                             href="http://localhost:8080/Effetrans/index.jsp#Modulo">Módulos</a>
                        </li>
                        <li class="linav"><a class="aMenu"
                                             href="http://localhost:8080/Effetrans/index.jsp#Funcionalidad">Funcionalidades</a>
                        </li>
                        <li class="linav"><a class="aMenu"
                                             href="http://localhost:8080/Effetrans/index.jsp#Ventajas">Ventajas</a>
                        </li>
                        <li class="linav"><a class="aMenu"
                                             href="http://localhost:8080/Effetrans/index.jsp#Contacto">Contáctenos</a>
                        </li>
                        <li class="linav"><a class="aMenu" href="iniciarSesion.jsp">Registrarse</a></li>
                        <button class="box btn btn-2 hover-slide-right">
                            <a href="iniciarSesion.jsp"><span>Iniciar Sesión</span></a>
                        </button>
                    </div>
                </ul>
            </nav>

            <div class="contenedorIndex">
                <h2 class="txtIndex">La plataforma de <span class="txtIndexSp">gestión de logística de transporte</span> que
                    estabas esperando</h2>
                <img class="imgIndex" src="img/index/imginicio.png" alt="img-inicio">
            </div>

            <div class="contenedorAcercaDe">
                <h1 class="titulosIndex">Acerca de Effetrans</h1>
                <p class="pIndex">Es una plataforma en la que podrá realizar envíos de cualquier tipo, de una manera
                    fácil, sencilla y sin salir del hogar. Buscamos facilitar la manera de hacer envíos, evitándo filas
                    y trayectos a una empresa de envíos convencional. Además de garantizar la seguridad de la carga
                    en el día a día.</p>
            </div>


            <div class="divModulo" id="Modulo">
                <h1 class="titulosModulos">Módulos de Effetrans</h1>
                <div class="divDisplay">
                    <div class="container">
                        <div class="card">
                            <div class="face face1">
                                <div class="content">
                                    <img src="img/index/modulo-1.png">
                                    <h3>Generación Ofertas</h3>
                                </div>
                            </div>
                            <div class="face face2">
                                <div class="content">
                                    <p>El cliente tiene la opción de difundir sus envíos en nuestra plataforma, y contratar a su preferencia el servicio que desee.</p>
                                    <a href="iniciarSesion.jsp">Regístrate</a>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="face face1">
                                <div class="content">
                                    <img src="img/index/modulo-2.png">
                                    <h3>Postulación Transportadores</h3>
                                </div>
                            </div>
                            <div class="face face2">
                                <div class="content">
                                    <p>Los conductores podrán postularse a ofertas de servicios de transporte con su respectiva documentación para la prestación del encargo.</p>
                                    <a href="iniciarSesion.jsp">Regístrate</a>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="face face1">
                                <div class="content">
                                    <img src="img/index/modulo-3.png">
                                    <h3>Seguimiento Envío</h3>
                                </div>
                            </div>
                            <div class="face face2">
                                <div class="content">
                                    <p>La plataforma brinda seguridad a los envíos por medio de un sistema de rastreo en tiempo real.</p>
                                    <a href="registrarse.html">Regístrate</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="contenedorFuncionalidad" id="Funcionalidad">
                <h1 class="titulo">Funcionalidades de Effetrans</h1>

                <img class="imagen-1" src="img/index/img-funcionalidad.png" alt="Funcionalidades">
                <p class="texto-1">Crear envíos de una manera fácil y segura.</p>

                <img class="imagen-2" src="img/index/img-funcionalidad.png" alt="Funcionalidades">
                <p class="texto-2">Seguimiento constante del envío.</p>

                <img class="imagen-3" src="img/index/img-funcionalidad.png" alt="Funcionalidades">
                <p class="texto-3">Protección de datos sensibles en la base de datos.</p>

                <img class="imagen-4" src="img/index/img-funcionalidad.png" alt="Funcionalidades">
                <p class="texto-4">El usuario puede escoger al conductor según sus necesidades y presupuesto</p>

                <img class="imagen-5" src="img/index/img-funcionalidad.png" alt="Funcionalidades">
                <p class="texto-5">Manejo de diferentes formas de pago</p>

                <img class="imagen-6" src="img/index/img-funcionalidad.png" alt="Funcionalidades">
                <p class="texto-6">Administra un alto nivel de seguridad de datos en la plataforma.</p>

                <img class="imagen-7" src="img/index/img-funcionalidad.png" alt="Funcionalidades">
                <p class="texto-7">Reportes mensuales del sistema</p>

                <img class="imagen-8" src="img/index/img-funcionalidad.png" alt="Funcionalidades">
                <p class="texto-8">No hay restricción de vehículos por modelos, ni marcas.</p>
            </div>


            <div class="contenedorVentajas" id="Ventajas">
                <h1 class="titulo">Ventajas de implementar Effetrans</h1>
                <div class="imgVentajas">
                    <svg class="animated" id="freepik_stories-mail-sent" xmlns="http://www.w3.org/2000/svg"
                         xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 500 500" version="1.1"
                         xmlns:svgjs="http://svgjs.com/svgjs">
                    <style>
                        svg#freepik_stories-mail-sent:not(.animated) .animable {
                            opacity: 0;
                        }

                        svg#freepik_stories-mail-sent.animated #freepik--Character--inject-1--inject-2 {
                            animation: 1s 1 forwards cubic-bezier(.36, -0.01, .5, 1.38) lightSpeedRight, 1.5s Infinite linear wind;
                            animation-delay: 0s, 1s;
                        }

                        svg#freepik_stories-mail-sent.animated #freepik--Floor--inject-1--inject-2 {
                            animation: 1s 1 forwards cubic-bezier(.36, -0.01, .5, 1.38) lightSpeedRight;
                            animation-delay: 0s;
                        }

                        @keyframes lightSpeedRight {
                            from {
                                transform: translate3d(50%, 0, 0) skewX(-20deg);
                                opacity: 0;
                            }

                            60% {
                                transform: skewX(10deg);
                                opacity: 1;
                            }

                            80% {
                                transform: skewX(-2deg);
                            }

                            to {
                                opacity: 1;
                                transform: translate3d(0, 0, 0);
                            }
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
                    </style>
                    <!--Mail sent-->
                    <g id="freepik--background-simple--inject-1--inject-2" class="animable"
                       style="transform-origin: 248.013px 243.39px;">
                    <path
                        d="M373.9,355.74s30.67-8,54.67-48c26.9-44.84,15.36-123.08-20.47-161.09C374.86,111.4,301.27,105.2,258.57,122.4c-40.35,16.26-71.34,55.34-96,60.67s-55.34-3.33-88.67,33.33-26,119.34,12,146.67,94-4.67,142.67-26.67S285.23,362.4,373.9,355.74Z"
                        style="fill: rgb(255, 193, 0); transform-origin: 248.013px 243.39px;" id="el3z1qijc6z97"
                        class="animable"></path>
                    <g id="el0bdzm0pxojjv">
                    <g style="opacity: 0.7; transform-origin: 248.013px 243.39px;" class="animable">
                    <path
                        d="M373.9,355.74s30.67-8,54.67-48c26.9-44.84,15.36-123.08-20.47-161.09C374.86,111.4,301.27,105.2,258.57,122.4c-40.35,16.26-71.34,55.34-96,60.67s-55.34-3.33-88.67,33.33-26,119.34,12,146.67,94-4.67,142.67-26.67S285.23,362.4,373.9,355.74Z"
                        style="fill: rgb(255, 255, 255); transform-origin: 248.013px 243.39px;"
                        id="elhgsxm7ol1i6" class="animable"></path>
                    </g>
                    </g>
                    </g>
                    <g id="freepik--Character--inject-1--inject-2" class="animable"
                       style="transform-origin: 265.749px 261.583px;">
                    <path
                        d="M363.74,275v-.06c-8.16-2.71-20.68-1.79-22.54-.68a18.2,18.2,0,0,0-5,5,59.31,59.31,0,0,0-9.28,20.69l-88.75,8.25c-3.27-7.06-8.2-13.39-13.15-17.21a14.32,14.32,0,0,0-4.8-2.65,7.59,7.59,0,0,0-2.32.08c-3.22-9.33-7.78-18.33-13.48-18.9-12-1.2-32.94,2.82-38.65,14.46s-7.5,40.7-7.5,40.7l-4,4a46.48,46.48,0,0,0-11.92-14.75,14,14,0,0,0-4.8-2.65c-1-.28-5,.34-9.19,1.71-.17-.16-.33-.32-.51-.47-4-3.35-12.2-5.18-16.78,3.36s.92,24.71,3.66,28.37a18.4,18.4,0,0,0,4.92,4.73c3.23,8,9,18.2,17.88,18.67a21.25,21.25,0,0,0,16.43-6.46c5.76-6,6.38-14.43,4.21-22.68l.93-1.36s2.07,2.95,10,1.76a11.85,11.85,0,0,0,6.27-2.6c3.72,9.49,9.73,19,19.28,20.42a28.87,28.87,0,0,0,23.11-6.58,25.62,25.62,0,0,0,4.75-5.45,21.2,21.2,0,0,0,14.1-6.46,19.76,19.76,0,0,0,5.34-13.05l11.81-1.38a51.69,51.69,0,0,0,23.61,4.42,33.55,33.55,0,0,0,20.79-9l26.91-2.3c.45,10.43,4.2,20,13,25.27a27.15,27.15,0,0,0,22.6,2.41c12.41-4.16,15.35-22.6,16.15-33.81C378.06,292.8,372.32,277.55,363.74,275Z"
                        style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 243.15px 318.499px;"
                        id="elit38bg2wvce" class="animable"></path>
                    <path d="M199.44,350.94a11.15,11.15,0,0,1-3.85,3.13"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 197.515px 352.505px;"
                          id="el0hde6t99p9q6" class="animable"></path>
                    <path d="M204.29,327.24s1.19,13-3.24,21.25"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 202.743px 337.865px;"
                          id="els467klnsays" class="animable"></path>
                    <path d="M207.8,341.6c-1.13,5-3.38,9.85-7.74,12"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 203.93px 347.6px;"
                          id="elggw3zhkfabn" class="animable"></path>
                    <path d="M213.23,326.25s2,21.61-8.69,26.83"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 208.959px 339.665px;"
                          id="el9yfzc6ouok" class="animable"></path>
                    <path d="M217.71,325.75s2,21.62-8.7,26.83"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 213.434px 339.165px;"
                          id="ela2frvkm2zek" class="animable"></path>
                    <path d="M352.62,340.9a13.89,13.89,0,0,1-4.2,3.55"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 350.52px 342.675px;"
                          id="elxn5nd9uspb" class="animable"></path>
                    <path d="M360.66,313.91s-.64,14.79-6.13,24.2"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 357.595px 326.01px;"
                          id="el6u3i1nynal6" class="animable"></path>
                    <path d="M362.09,330.29c-1.8,5.69-4.68,11.21-9.23,13.61"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 357.475px 337.095px;"
                          id="elpe73zpxojr" class="animable"></path>
                    <path d="M369.54,312.81s-1.07,24.64-12.24,30.54"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 363.42px 328.08px;"
                          id="elkiew6duqqkb" class="animable"></path>
                    <path d="M374,312.27s-1.07,24.63-12.24,30.54"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 367.88px 327.54px;"
                          id="el8xz1gi9cjcq" class="animable"></path>
                    <path d="M140.35,364.31a10.83,10.83,0,0,1-3.29,3.24"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 138.705px 365.93px;"
                          id="elre5usblwsbe" class="animable"></path>
                    <path d="M141.93,343.28s2.82,11-.36,18.69"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 142.327px 352.625px;"
                          id="el12rtvdsiduah" class="animable"></path>
                    <path d="M147.16,355.09c-.45,4.45-2,8.93-5.87,11.39"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 144.225px 360.785px;"
                          id="elfn52w4m2gjq" class="animable"></path>
                    <path d="M150.37,341.14s4.7,18.25-4.86,24.26"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 148.518px 353.27px;"
                          id="elgisi8ws2hv" class="animable"></path>
                    <path d="M154.59,340.06s4.71,18.25-4.86,24.27"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 152.739px 352.195px;"
                          id="elf981ia3h5vu" class="animable"></path>
                    <path
                        d="M189.06,319.83c2.38,13.61.89,25.25-3.31,26s-9.55-9.71-11.93-23.32-.89-25.25,3.32-26S186.68,306.21,189.06,319.83Z"
                        style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 181.44px 321.17px;"
                        id="elq65xx08ega" class="animable"></path>
                    <path
                        d="M186.94,320.12c.66,5.22.05,9.59-1.38,9.77s-3.11-3.9-3.77-9.12,0-9.6,1.38-9.78S186.28,314.9,186.94,320.12Z"
                        style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 184.369px 320.44px;"
                        id="elclwu0azdug5" class="animable"></path>
                    <path d="M176.91,307.64a34,34,0,0,1,.83-5.2"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 177.325px 305.04px;"
                          id="elpl0zyk0441c" class="animable"></path>
                    <path d="M183.54,340.92a66.46,66.46,0,0,1-5.88-17.53,63.32,63.32,0,0,1-.91-13.05"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 180.127px 325.63px;"
                          id="elsrxyw6g5l5" class="animable"></path>
                    <g id="elz6hfrbg3car">
                    <ellipse cx="125.29" cy="342.56" rx="5.68" ry="18.39"
                             style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 125.29px 342.56px; transform: rotate(-15.49deg);"
                             class="animable"></ellipse>
                    </g>
                    <path
                        d="M129.78,341.43c.95,3.72.9,6.94-.12,7.2s-2.6-2.55-3.55-6.26-.9-6.95.12-7.2S128.83,337.71,129.78,341.43Z"
                        style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 127.945px 341.901px;"
                        id="elnwl12c32l0e" class="animable"></path>
                    <path d="M121.4,333.3a24.86,24.86,0,0,1,.13-3.84"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 121.453px 331.38px;"
                          id="el9b5pxb47nhr" class="animable"></path>
                    <path d="M129.19,356.79a48.46,48.46,0,0,1-5.83-12.16,46.23,46.23,0,0,1-1.84-9.36"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 125.355px 346.03px;"
                          id="elchhjyvem208" class="animable"></path>
                    <path
                        d="M344.57,174c-10.54-21.75-15.09-23.64-22.1-24s-23.56-2.42-42,.53c0,0-51.44-.9-91.24,23.21-41.55,25.17-61.77,47.28-64.6,58.74s-12.49,41.32-17.07,58.44-7.7,32.2-1.86,46.06c3.53,8.38,7.29,10.9,12.12,10.86a34.79,34.79,0,0,1-1.95-4.11c-4.8-11.89-4.22-28.9,1.26-30s8.75,10.29,12.06,22.71a49.39,49.39,0,0,0,2.66,8c8.19-3.09,21.31-10,38.75-17.18a112.16,112.16,0,0,1-.11-32.92c2.58-17.07,13.49-20.84,18.24-10.45,3.93,8.56,5.39,27.72,5.78,34.18,7-2.41,12.86-4,16.47-4.22,0,0,59.68-13.48,103.67-14.56s66-2.13,66-2.13S355.11,195.71,344.57,174Z"
                        style="fill: rgb(255, 255, 255); transform-origin: 241.58px 248.403px;" id="elta3qrsq3mqk"
                        class="animable"></path>
                    <g style="clip-path: url(&quot;#freepik--clip-path--inject-1--inject-2&quot;); transform-origin: 242.385px 248.875px;"
                       id="elwcn7hb6mzd" class="animable">
                    <path
                        d="M203.93,278.94s-6.05,8.28-13.41,10.05c2.6,9.54,3.67,23.66,4,29,6.25-2.15,11.56-3.66,15.2-4.1.53-3.12.85-5.11.85-5.11Z"
                        style="fill: rgb(255, 193, 0); transform-origin: 200.545px 298.465px;" id="elcx3yy885ol"
                        class="animable"></path>
                    <g id="elzcobymeziad">
                    <path
                        d="M129.45,337.34c2.78.28,4.63,1.48,10.28.07,10-2.49,2.81-21.79,19.4-29.67a27.93,27.93,0,0,1,10.32-2.9,101.37,101.37,0,0,1,1-10.55,30.93,30.93,0,0,1,3-9.87c-4.53-1.39-5.35-2.72-13.07.95-16.6,7.88-14.11,28.21-24.06,30.7-7.94,2-8.38-1.19-14.41.29,2.82,4,5,11.79,7.2,20C129.28,336.73,129.36,337,129.45,337.34Z"
                        style="fill: rgb(255, 193, 0); opacity: 0.2; transform-origin: 147.68px 310.539px;"
                        class="animable"></path>
                    </g>
                    <g style="mix-blend-mode: multiply; transform-origin: 110.97px 334.055px;" id="elo1u98dn9xt"
                       class="animable">
                    <g id="elth3m548hnt">
                    <path
                        d="M113.12,320.25c-4.65,3.2-7.42,8-9,12.05A39.85,39.85,0,0,0,105.7,337c3.53,8.38,7.29,10.9,12.12,10.86a34.79,34.79,0,0,1-1.95-4.11C112.82,336.18,112,326.55,113.12,320.25Z"
                        style="fill: rgb(255, 193, 0); opacity: 0.2; transform-origin: 110.97px 334.055px;"
                        class="animable"></path>
                    </g>
                    </g>
                    <g id="elkijh4ow3l5b">
                    <path
                        d="M322.47,150l-1.81-.11c-72.93,18.66-102.6,106.56-112.81,148.92.55,4.21,1.15,8.34,1.8,12.36,1.24-.24.38,2.68,1.33,2.63,0,0,59.68-13.48,103.67-14.56s66-2.13,66-2.13S355.11,195.71,344.57,174,329.48,150.32,322.47,150Z"
                        style="fill: rgb(255, 193, 0); opacity: 0.2; mix-blend-mode: multiply; transform-origin: 294.25px 231.845px;"
                        class="animable"></path>
                    </g>
                    </g>
                    <path
                        d="M344.57,174c-10.54-21.75-15.09-23.64-22.1-24s-23.56-2.42-42,.53c0,0-51.44-.9-91.24,23.21-41.55,25.17-61.77,47.28-64.6,58.74s-12.49,41.32-17.07,58.44-7.7,32.2-1.86,46.06c3.53,8.38,7.29,10.9,12.12,10.86a34.79,34.79,0,0,1-1.95-4.11c-4.8-11.89-4.22-28.9,1.26-30s8.75,10.29,12.06,22.71a49.39,49.39,0,0,0,2.66,8c8.19-3.09,21.31-10,38.75-17.18a112.16,112.16,0,0,1-.11-32.92c2.58-17.07,13.49-20.84,18.24-10.45,3.93,8.56,5.39,27.72,5.78,34.18,7-2.41,12.86-4,16.47-4.22,0,0,59.68-13.48,103.67-14.56s66-2.13,66-2.13S355.11,195.71,344.57,174Z"
                        style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 241.58px 248.403px;"
                        id="eltwfikdl6g8e" class="animable"></path>
                    <g id="elj6m592osfy">
                    <path
                        d="M126.27,283.76a4.68,4.68,0,0,0,5,.63c3.15-1.26,3.47-6,3.47-6l4.72-.31.95-14.81-10.4,4.09S127.22,281.87,126.27,283.76Z"
                        style="fill: rgb(255, 193, 0); opacity: 0.2; transform-origin: 133.34px 274.056px;"
                        class="animable"></path>
                    </g>
                    <path
                        d="M112.63,327.07a51.8,51.8,0,0,0-8.43,5.6,38.63,38.63,0,0,0,1.5,4.31c3.53,8.38,7.29,10.9,12.12,10.86a34.79,34.79,0,0,1-1.95-4.11A48.54,48.54,0,0,1,112.63,327.07Z"
                        style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 111.01px 337.455px;"
                        id="elx0a23174fl" class="animable"></path>
                    <path
                        d="M128.56,318.81a1.51,1.51,0,0,1-1.32-.79,1.49,1.49,0,0,1,.6-2c.24-.13,19.7-12.19,35.82-20.76a1.5,1.5,0,1,1,1.41,2.65c-16.11,8.56-35.56,20.61-35.8,20.74A1.43,1.43,0,0,1,128.56,318.81Z"
                        style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; transform-origin: 146.467px 306.947px;"
                        id="elkho1gkauw8o" class="animable"></path>
                    <path
                        d="M154,218.57l-.69,17.17c-.15,2.34,1.21,3.47,3,2.46l27.65-18a7.31,7.31,0,0,0,3.12-6.36l-.17-19.15c-.2-1.74-1.38-2.45-2.83-1.7-5.2,2.69-15.24,11.79-27.24,20.26A7.56,7.56,0,0,0,154,218.57Z"
                        style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 170.194px 215.632px;"
                        id="elvfn8oqe1t9" class="animable"></path>
                    <line x1="172.68" y1="213.73" x2="186.19" y2="217.03"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 179.435px 215.38px;"
                          id="eleakhleb5ve" class="animable"></line>
                    <line x1="154.2" y1="238.28" x2="162.54" y2="219.86"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 158.37px 229.07px;"
                          id="elnbc8wueboqf" class="animable"></line>
                    <path d="M154.16,218l12.26,1.53c1.27.19,2.85-.86,4-2.68l16-22.91"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 170.29px 206.746px;"
                          id="el04t1ryuz9cr2" class="animable"></path>
                    <path
                        d="M222.61,186.67l2.84,43a9.15,9.15,0,0,0,10.17,8.55l95.52-12.4a9.15,9.15,0,0,0,7.76-11.57l-12.06-42.64a9.13,9.13,0,0,0-9.46-6.63c-15.48,1.14-52.61,4.47-87.66,12.28A9.15,9.15,0,0,0,222.61,186.67Z"
                        style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 280.92px 201.617px;"
                        id="elpqksthujkam" class="animable"></path>
                    <line x1="293.61" y1="200" x2="337.22" y2="220.66"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 315.415px 210.33px;"
                          id="el4rea1w9nkjx" class="animable"></line>
                    <line x1="229.07" y1="236.33" x2="265.9" y2="203.37"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 247.485px 219.85px;"
                          id="ely2ko73950yg" class="animable"></line>
                    <path d="M222.93,185.54l52.85,21.73A11.07,11.07,0,0,0,287.64,205l37.67-35.57"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 274.12px 188.761px;"
                          id="elpujyangqsuf" class="animable"></path>
                    <g id="elumrh9gadrt">
                    <ellipse cx="328.1" cy="215.91" rx="16.26" ry="15.98"
                             style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 328.1px 215.91px; transform: rotate(-1.41deg);"
                             class="animable"></ellipse>
                    </g>
                    <path
                        d="M326.33,223.56h-.05a2,2,0,0,1-1.62-.82l-6.39-8.82a2,2,0,0,1,3.24-2.35l4.77,6.58,11.4-15.75a2,2,0,0,1,3.24,2.35l-13,18A2,2,0,0,1,326.33,223.56Z"
                        style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 329.594px 212.568px;"
                        id="elu1pjifpjbz" class="animable"></path>
                    <path d="M265.93,266.66s34-6.52,57.3-6.06l1.4,5.6s-48.92,2.32-58.24,7Z"
                          style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 295.28px 266.888px;"
                          id="elrgdqb1zyocd" class="animable"></path>
                    <path
                        d="M266.39,273.18l1,5.6a2.42,2.42,0,0,0,2.73,2c8.53-1.22,38.47-5.33,54-4.95a2.43,2.43,0,0,0,2.41-3.1l-1.86-6.51"
                        style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 296.507px 273.512px;"
                        id="elacsgsjyqta7" class="animable"></path>
                    <path
                        d="M142.32,263.29l-.19-23.1,1.15-23.75a1.13,1.13,0,0,0-1.93-.84c-4.3,4.4-11.66,11.06-13.84,16.52-2.83,7.07-6.18,41.87-6.18,41.87Z"
                        style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 132.305px 244.629px;"
                        id="eliyrwn3bm2p" class="animable"></path>
                    <rect x="109.25" y="258.65" width="9.53" height="23.44" rx="3.09"
                          style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 114.015px 270.37px;"
                          id="elvlndyzwhq2" class="animable"></rect>
                    <path
                        d="M117.8,242.53a22.68,22.68,0,0,1,4.62,1.41,12.08,12.08,0,0,1,3.31,2.4l5-6.61s-7.33-3.07-8.72-4.94l-1.38-1.88Z"
                        style="fill: rgb(255, 255, 255); transform-origin: 124.265px 239.625px;" id="el4yxfss4wqsx"
                        class="animable"></path>
                    <g style="clip-path: url(&quot;#freepik--clip-path-2--inject-1--inject-2&quot;); transform-origin: 122.015px 237.89px;"
                       id="ela3s8ggguz0a" class="animable">
                    <g id="elsp4z3kgqqu">
                    <path
                        d="M122,234.79,120.71,233l-.15.1-2.76,9.4s.53.1,1.28.28l7.15-5.18A14.67,14.67,0,0,1,122,234.79Z"
                        style="fill: rgb(255, 193, 0); opacity: 0.5; mix-blend-mode: multiply; transform-origin: 122.015px 237.89px;"
                        class="animable"></path>
                    </g>
                    </g>
                    <path
                        d="M117.8,242.53a22.68,22.68,0,0,1,4.62,1.41,12.08,12.08,0,0,1,3.31,2.4l5-6.61s-7.33-3.07-8.72-4.94l-1.38-1.88Z"
                        style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 124.265px 239.625px;"
                        id="elc8qijcwpnbt" class="animable"></path>
                    <polygon points="128.36 236.92 122.25 244.71 123.08 247.36 132.39 237.69 128.36 236.92"
                             style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 127.32px 242.14px;"
                             id="el5uvieqnbu2w" class="animable"></polygon>
                    <path
                        d="M118.58,214.91c-4.13-3.2-14.89-1.16-17,6.42C100.28,226,101,233,101,233l12.26-2.6,1,1.51c2,3,6.33,1,7.45,0,.61-.53.57-2.09.41-3.38l.49-.11S122.7,218.12,118.58,214.91Z"
                        style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 111.706px 223.474px;"
                        id="eln5ugts3savi" class="animable"></path>
                    <path d="M114,229.48A39.35,39.35,0,0,0,98,231c-8,2.68-9.23,5-3.5,4.86S114,229.48,114,229.48Z"
                          style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 102.474px 232.552px;"
                          id="el7q10qyfuspj" class="animable"></path>
                    <ellipse cx="104.12" cy="224.26" rx="1.69" ry="2.31"
                             style="fill: rgb(255, 193, 0); transform-origin: 104.12px 224.26px;" id="elg19rl7hdhh4"
                             class="animable"></ellipse>
                    <path
                        d="M142.13,240.19s-10.95-2.78-14.32-.22-4.23,6.79-3.15,11.92,3.71,18.62,3.71,18.62l13.95-7.22Z"
                        style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 133.27px 254.698px;"
                        id="el87ssvm4fqo6" class="animable"></path>
                    <path
                        d="M124.75,268.36s-.59,5.18-1.28,5.91-18.89-14.56-20-16-.35-6.58,0-8.19-.24-2.49-2-1.38-1.29,5.73-1.29,5.73-5.37-1.29-6.44-1.44-2,1.18-1.84,2.24,1.57,1.15,1.57,1.15a8,8,0,0,0,.29,4.62c.94,1.94,2,3.16,4,3.64a33.33,33.33,0,0,0,6.24.38s9.3,8.86,12,12.17,8.39,7.81,11.22,7,5.53-14.94,5.53-14.94Z"
                        style="fill: rgb(255, 255, 255); transform-origin: 112.316px 266.245px;" id="elshnabhz91on"
                        class="animable"></path>
                    <g style="clip-path: url(&quot;#freepik--clip-path-3--inject-1--inject-2&quot;); transform-origin: 124.38px 276.308px;"
                       id="elu3174ntedt" class="animable">
                    <g id="el7h3gdm980xv">
                    <path
                        d="M123.47,274.27l5.32,1.77a4.73,4.73,0,0,1-3.26,5.22c-2.35.78-6.57-1.89-9.57-4.14l.09.11c2.75,3.32,8.39,7.81,11.22,7s5.53-14.94,5.53-14.94l-8.05-1S124.16,273.54,123.47,274.27Z"
                        style="fill: rgb(255, 193, 0); opacity: 0.5; mix-blend-mode: multiply; transform-origin: 124.38px 276.308px;"
                        class="animable"></path>
                    </g>
                    </g>
                    <path
                        d="M124.75,268.36s-.59,5.18-1.28,5.91-18.89-14.56-20-16-.35-6.58,0-8.19-.24-2.49-2-1.38-1.29,5.73-1.29,5.73-5.37-1.29-6.44-1.44-2,1.18-1.84,2.24,1.57,1.15,1.57,1.15a8,8,0,0,0,.29,4.62c.94,1.94,2,3.16,4,3.64a33.33,33.33,0,0,0,6.24.38s9.3,8.86,12,12.17,8.39,7.81,11.22,7,5.53-14.94,5.53-14.94Z"
                        style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 112.316px 266.245px;"
                        id="elehunb73ss5o" class="animable"></path>
                    <polygon points="106.56 261.08 104 265.06 105.31 265.95 107.93 262.2 106.56 261.08"
                             style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; transform-origin: 105.965px 263.515px;"
                             id="el7tg6a59z3gq" class="animable"></polygon>
                    <circle cx="105.68" cy="263.83" r="1"
                            style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 105.68px 263.83px;"
                            id="el9uw86eqijdo" class="animable"></circle>
                    <path
                        d="M103.23,234.28s.61,1.51,1.63,4.16,6.5,8.24,9.18,8.56,5.89-9.42,6.4-11.43c.17-.66.34-1.72.34-1.72s3.37-1.59,2.59-3.51-2.36-2.8-3.11-2.21-.88,3.08-2,3.1-1.73-.33-2.72-1.65S104.29,231,103.23,234.28Z"
                        style="fill: rgb(255, 255, 255); transform-origin: 113.359px 237.478px;" id="elstywdk5scvn"
                        class="animable"></path>
                    <g style="clip-path: url(&quot;#freepik--clip-path-4--inject-1--inject-2&quot;); transform-origin: 113.235px 231.855px;"
                       id="elaptkx735rw" class="animable">
                    <g id="el4jrdp6ng0z">
                    <path
                        d="M115.52,229.58c-1-1.31-11.23,1.43-12.29,4.7l.58,1.48a44.59,44.59,0,0,1,12.6-5.17A6.33,6.33,0,0,1,115.52,229.58Z"
                        style="fill: rgb(255, 193, 0); opacity: 0.5; transform-origin: 109.82px 232.503px;"
                        class="animable"></path>
                    </g>
                    <g style="mix-blend-mode: multiply; transform-origin: 121.24px 229.04px;" id="el6mf8k9cysb9"
                       class="animable">
                    <g id="elg8dzwxirr28">
                    <path
                        d="M123.24,230.07c-.82-1.72-2.27-2.5-3-1.94a5.91,5.91,0,0,0-1,2A20.75,20.75,0,0,1,123.24,230.07Z"
                        style="fill: rgb(255, 193, 0); opacity: 0.5; transform-origin: 121.24px 229.04px;"
                        class="animable"></path>
                    </g>
                    </g>
                    </g>
                    <path
                        d="M103.23,234.28s.61,1.51,1.63,4.16,6.5,8.24,9.18,8.56,5.89-9.42,6.4-11.43c.17-.66.34-1.72.34-1.72s3.37-1.59,2.59-3.51-2.36-2.8-3.11-2.21-.88,3.08-2,3.1-1.73-.33-2.72-1.65S104.29,231,103.23,234.28Z"
                        style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 113.359px 237.478px;"
                        id="el8ol8ebjropj" class="animable"></path>
                    <path
                        d="M106.86,235c.18.61.12,1.17-.12,1.24s-.59-.37-.77-1-.12-1.17.12-1.24S106.68,234.41,106.86,235Z"
                        style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-miterlimit: 10; transform-origin: 106.415px 235.12px;"
                        id="elcjjz2hnzxbl" class="animable"></path>
                    <path d="M105,233.3c1.4-.4,2,.65,2.17,1.62l.26,1.15.87,4.45,1.32-.56"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 107.31px 236.866px;"
                          id="elqr83jla2o79" class="animable"></path>
                    <path d="M110.7,233.64a2.87,2.87,0,0,1,2.43-.92"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 111.915px 233.172px;"
                          id="el8wxcoc8hiqe" class="animable"></path>
                    <path d="M111.86,230.87a3,3,0,0,0-2.32,2.31"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 110.7px 232.025px;"
                          id="elwn22wb8cyrk" class="animable"></path>
                    <path d="M110.81,241.4s2.9-.58,3.13-2.66"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 112.375px 240.07px;"
                          id="elkwzmiowxhn" class="animable"></path>
                    <path
                        d="M135.43,275.86l-14.64-4.08s1.29-25,3.55-29.23c3.52-6.57,11.59-3.61,13.11,4.65C138.87,255,135.43,275.86,135.43,275.86Z"
                        style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 129.292px 257.408px;"
                        id="eluw7528wpjtd" class="animable"></path>
                    <path d="M121.14,269s8,1.84,12.87,3.44"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 127.575px 270.72px;"
                          id="el9amvyg1qdui" class="animable"></path>
                    <path d="M133.81,238.18s4.76.37,7.87,2.93"
                          style="fill: none; stroke: rgb(255, 193, 0); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 137.745px 239.645px;"
                          id="elivnkhu6e86p" class="animable"></path>
                    <path
                        d="M217.69,302.13s-21.32,7.52-23.27,9.57-1.75,10.05,2.85,13.94,37.39-4.93,60.83-7.5S333,311.79,354,310.77s30.55,1.75,32.39-4.8S388,292.42,384,291,307.12,277.91,217.69,302.13Z"
                        style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 290.375px 306.783px;"
                        id="ela7gv1rictcm" class="animable"></path>
                    <path d="M192.9,316.07s1,8.67,6.33,10,68.67-10.67,106-12,70-2.33,70-2.33"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 284.065px 318.956px;"
                          id="elzqjstp4i3zm" class="animable"></path>
                    <path d="M223.84,320.47c24.76-6,75.69-14.48,161.39-12.07"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 304.535px 314.225px;"
                          id="elmjfb3n8eyz" class="animable"></path>
                    <path d="M203.54,325.75s5.69-1.38,14.34-3.74"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 210.71px 323.88px;"
                          id="ely52xinfgwla" class="animable"></path>
                    <path d="M208.76,326.74a56.33,56.33,0,0,1-.3,11.15"
                          style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.5px; transform-origin: 208.684px 332.315px;"
                          id="elcziezijgez7" class="animable"></path>
                    <path d="M207.85,166.83s-4.77,5.59-5.14,10.6"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 205.28px 172.13px;"
                          id="eliqhg5b6vuwm" class="animable"></path>
                    <path d="M202.21,181.47s-3.59,57.11,5.91,117.89"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 204.832px 240.415px;"
                          id="elo3thls1j2um" class="animable"></path>
                    <path
                        d="M203.34,247.46s-7.75,2.7-7.85,6.2c-.26,9.41.73,29.49,2.78,31.44s8.42-3.21,8.42-3.21,9,.78,10-1.24-2.75-30.45-3.31-32.93S203.34,247.46,203.34,247.46Z"
                        style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 206.154px 266.043px;"
                        id="elcwbvezckleb" class="animable"></path>
                    <path
                        d="M365.22,261a17.06,17.06,0,0,0,6.45,1.7c-2.48-9.32-5.29-19.7-8.19-30.06-2.62-.18-6-.18-5.93,1C357.6,235.66,362.69,259.54,365.22,261Z"
                        style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 364.609px 247.627px;"
                        id="elj518h43r6q" class="animable"></path>
                    <path d="M202.23,250.4s.34,18,1.67,25"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; stroke-width: 0.75px; transform-origin: 203.065px 262.9px;"
                          id="elq151iztluja" class="animable"></path>
                    <path d="M295.71,254.56s44.62-7.19,96.61,2"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 344.015px 254.222px;"
                          id="elth8ceoz1fy" class="animable"></path>
                    <path d="M431.55,282.75c3.07.92,6.09,1.89,9,2.93"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 436.05px 284.215px;"
                          id="el231wzjr1io3" class="animable"></path>
                    <path d="M351.44,269.17s35.38,2.15,69.26,10.62"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 386.07px 274.48px;"
                          id="elj3ozow1xjao" class="animable"></path>
                    <path d="M243.76,351.56a329.87,329.87,0,0,1,88-1.57"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 287.76px 349.667px;"
                          id="elzyh69lj9wd" class="animable"></path>
                    <path d="M240.1,346.85s20.94-2.62,27.75-3.14"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 253.975px 345.28px;"
                          id="elnc9beinue3" class="animable"></path>
                    <path d="M380.34,152.63c3,.43,6,1,8.72,1.65"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 384.7px 153.455px;"
                          id="el1d0g3whv1gj" class="animable"></path>
                    <path d="M337.23,151.64a239.64,239.64,0,0,1,37,.25"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 355.73px 151.467px;"
                          id="elelrk32nu1bc" class="animable"></path>
                    <path d="M175.89,272.78S205.77,258.63,249,254.7"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 212.445px 263.74px;"
                          id="elm094uk5hgl" class="animable"></path>
                    <path d="M226.21,246.83s18.09-4.71,45.61-6.29"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 249.015px 243.685px;"
                          id="elxeh4b5otoa" class="animable"></path>
                    <path d="M175.4,346.74a30.88,30.88,0,0,0,16.5,14"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 183.65px 353.74px;"
                          id="elm1j0b2wyhqm" class="animable"></path>
                    <path d="M174.4,351.24s4.5,7,10.5,10"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 179.65px 356.24px;"
                          id="elfvw6yeb4evd" class="animable"></path>
                    <path d="M321.9,326.24s3,14,15,20"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 329.4px 336.24px;"
                          id="el2wd358mpsw4" class="animable"></path>
                    <path d="M323.4,338.74a23.13,23.13,0,0,0,9.5,8"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 328.15px 342.74px;"
                          id="elgezvoty8oc" class="animable"></path>
                    <path d="M125.56,365.7s3,5,13.5,5"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 132.31px 368.2px;"
                          id="elp6zaiutw4e" class="animable"></path>
                    <path d="M123.56,368.7a24.13,24.13,0,0,0,13.5,5.5"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 130.31px 371.45px;"
                          id="elhzqpkens98b" class="animable"></path>
                    </g>
                    <g id="freepik--Floor--inject-1--inject-2" class="animable"
                       style="transform-origin: 266.925px 385.153px;">
                    <path
                        d="M258.74,356.36A423.4,423.4,0,0,0,180,368.14l.62.93s22-4.67,62.66,5.33,43.34,18,88,18,88-10.66,88-10.66l-5.42-3C373.76,361.77,318.8,353,258.74,356.36Z"
                        style="fill: rgb(255, 193, 0); transform-origin: 299.64px 374.026px;" id="elkc8i03bl1d"
                        class="animable"></path>
                    <g id="elkdj2x66xub">
                    <path
                        d="M258.74,356.36A423.4,423.4,0,0,0,180,368.14l.62.93s22-4.67,62.66,5.33,43.34,18,88,18,88-10.66,88-10.66l-5.42-3C373.76,361.77,318.8,353,258.74,356.36Z"
                        style="fill: rgb(255, 255, 255); opacity: 0.5; transform-origin: 299.64px 374.026px;"
                        class="animable"></path>
                    </g>
                    <path d="M160.9,379.24s52.5-8,98,22.5"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 209.9px 390.016px;"
                          id="el9hmd0csc3p4" class="animable"></path>
                    <path d="M215.9,390.74s21.5,6.5,34.5,20.5"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 233.15px 400.99px;"
                          id="elwsm4l0lb5q" class="animable"></path>
                    <path d="M342.9,365.24s30.5,3,58,19.5"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 371.9px 374.99px;"
                          id="elcw0y2hxanr" class="animable"></path>
                    <path d="M438,391.08a126.85,126.85,0,0,1,15.64,11.29"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 445.82px 396.725px;"
                          id="eloxxtjobyrvj" class="animable"></path>
                    <path d="M80.21,414.67c36.45-31,102.31-54,178.53-58.31,69.57-3.95,132.32,8.51,173,31"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 255.975px 385.153px;"
                          id="el35ilq7iphhc" class="animable"></path>
                    <path d="M302.4,364.74s31.5,1.5,52.5,8.5"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 328.65px 368.99px;"
                          id="elrc89yexyiuc" class="animable"></path>
                    </g>
                    <g id="freepik--Clouds--inject-1--inject-2" class="animable"
                       style="transform-origin: 152.855px 109.391px;">
                    <path
                        d="M159.58,127.34s-1-13.83-21.25-14.33-14.83,13.84-20.26,17.3-6.92-2-12.36,1.48-3,10.38-7.41,11.37-10.38-4.45-15.81-1-5.44,6.42-7.91,6.42-7.41-2-10.37,0S57.78,153,57.78,153h125s1.48-4.45-4-7.41-7.91-.5-9.88-3S174.4,133.77,159.58,127.34Z"
                        style="fill: rgb(255, 193, 0); transform-origin: 120.371px 132.999px;" id="elona222uc4ce"
                        class="animable"></path>
                    <path
                        d="M233.85,74.41s-.6-8.32-12.78-8.62-8.92,8.33-12.19,10.41-4.16-1.19-7.43.89-1.78,6.24-4.46,6.83-6.24-2.67-9.51-.59-3.27,3.86-4.76,3.86-4.46-1.18-6.24,0-3.86,2.68-3.86,2.68h75.2s.89-2.68-2.38-4.46-4.75-.3-5.94-1.78S242.77,78.28,233.85,74.41Z"
                        style="fill: rgb(255, 193, 0); transform-origin: 210.275px 77.8262px;" id="ela6ksgrrs50b"
                        class="animable"></path>
                    <g id="elevptdugsjji">
                    <path
                        d="M159.58,127.34s-1-13.83-21.25-14.33-14.83,13.84-20.26,17.3-6.92-2-12.36,1.48-3,10.38-7.41,11.37-10.38-4.45-15.81-1-5.44,6.42-7.91,6.42-7.41-2-10.37,0S57.78,153,57.78,153h125s1.48-4.45-4-7.41-7.91-.5-9.88-3S174.4,133.77,159.58,127.34Z"
                        style="fill: rgb(255, 255, 255); opacity: 0.7; transform-origin: 120.371px 132.999px;"
                        class="animable"></path>
                    </g>
                    <g id="elzye0mah5ag">
                    <path
                        d="M233.85,74.41s-.6-8.32-12.78-8.62-8.92,8.33-12.19,10.41-4.16-1.19-7.43.89-1.78,6.24-4.46,6.83-6.24-2.67-9.51-.59-3.27,3.86-4.76,3.86-4.46-1.18-6.24,0-3.86,2.68-3.86,2.68h75.2s.89-2.68-2.38-4.46-4.75-.3-5.94-1.78S242.77,78.28,233.85,74.41Z"
                        style="fill: rgb(255, 255, 255); opacity: 0.8; transform-origin: 210.275px 77.8262px;"
                        class="animable"></path>
                    </g>
                    </g>
                    <defs>
                    <filter id="active" height="200%">
                        <feMorphology in="SourceAlpha" result="DILATED" operator="dilate" radius="2"></feMorphology>
                        <feFlood flood-color="#32DFEC" flood-opacity="1" result="PINK"></feFlood>
                        <feComposite in="PINK" in2="DILATED" operator="in" result="OUTLINE"></feComposite>
                        <feMerge>
                            <feMergeNode in="OUTLINE"></feMergeNode>
                            <feMergeNode in="SourceGraphic"></feMergeNode>
                        </feMerge>
                    </filter>
                    <filter id="hover" height="200%">
                        <feMorphology in="SourceAlpha" result="DILATED" operator="dilate" radius="2"></feMorphology>
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
                    <clipPath id="freepik--clip-path--inject-1--inject-2">
                        <path
                            d="M344.57,174c-10.54-21.75-15.09-23.64-22.1-24s-23.56-2.42-42,.53c0,0-51.44-.9-91.24,23.21-41.55,25.17-61.77,47.28-64.6,58.74s-12.49,41.32-17.07,58.44-7.7,32.2-1.86,46.06c3.53,8.38,7.29,10.9,12.12,10.86a34.79,34.79,0,0,1-1.95-4.11c-4.8-11.89-4.22-28.9,1.26-30s8.75,10.29,12.06,22.71a49.39,49.39,0,0,0,2.66,8c8.19-3.09,21.31-10,38.75-17.18a112.16,112.16,0,0,1-.11-32.92c2.58-17.07,13.49-20.84,18.24-10.45,3.93,8.56,5.39,27.72,5.78,34.18,7-2.41,12.86-4,16.47-4.22,0,0,59.68-13.48,103.67-14.56s66-2.13,66-2.13S355.11,195.71,344.57,174Z"
                            style="fill:#fff;stroke:#263238;stroke-linecap:round;stroke-linejoin:round"></path>
                    </clipPath>
                    <clipPath id="freepik--clip-path-2--inject-1--inject-2">
                        <path
                            d="M117.8,242.53a22.68,22.68,0,0,1,4.62,1.41,12.08,12.08,0,0,1,3.31,2.4l5-6.61s-7.33-3.07-8.72-4.94l-1.38-1.88Z"
                            style="fill:#fff;stroke:#263238;stroke-linecap:round;stroke-linejoin:round;stroke-width:0.75px">
                        </path>
                    </clipPath>
                    <clipPath id="freepik--clip-path-3--inject-1--inject-2">
                        <path
                            d="M124.75,268.36s-.59,5.18-1.28,5.91-18.89-14.56-20-16-.35-6.58,0-8.19-.24-2.49-2-1.38-1.29,5.73-1.29,5.73-5.37-1.29-6.44-1.44-2,1.18-1.84,2.24,1.57,1.15,1.57,1.15a8,8,0,0,0,.29,4.62c.94,1.94,2,3.16,4,3.64a33.33,33.33,0,0,0,6.24.38s9.3,8.86,12,12.17,8.39,7.81,11.22,7,5.53-14.94,5.53-14.94Z"
                            style="fill:#fff;stroke:#263238;stroke-linecap:round;stroke-linejoin:round;stroke-width:0.75px">
                        </path>
                    </clipPath>
                    <clipPath id="freepik--clip-path-4--inject-1--inject-2">
                        <path
                            d="M103.23,234.28s.61,1.51,1.63,4.16,6.5,8.24,9.18,8.56,5.89-9.42,6.4-11.43c.17-.66.34-1.72.34-1.72s3.37-1.59,2.59-3.51-2.36-2.8-3.11-2.21-.88,3.08-2,3.1-1.73-.33-2.72-1.65S104.29,231,103.23,234.28Z"
                            style="fill:#fff;stroke:#263238;stroke-linecap:round;stroke-linejoin:round;stroke-width:0.75px">
                        </path>
                    </clipPath>
                    </defs>
                    </svg>
                </div>


                <img class="caja-1" src="img/index/VENTAJAS_1.png" alt="listVentaja">
                <p class="texto-1">Se podrá realizar el envío de cargas y/o paquetes sin salir de casa. </p>


                <img class="caja-2" src="img/index/VENTAJAS_1.png" alt="listVentaja">
                <p class="texto-2">Se encuentran mejores precios que en una empresa de logística convencional.</p>


                <img class="caja-3" src="img/index/VENTAJAS_1.png" alt="listVentaja">
                <p class="texto-3">Cuenta con un sistema de seguimiento de la carga en tiempo real.</p>


                <img class="caja-4" src="img/index/VENTAJAS_1.png" alt="listVentaja">
                <p class="texto-4">Se podrá escoger al conductor que va a llevar el envió en la oferta de preferencia.</p>


            </div>




            <div class="contenedorContacto" id="Contacto">

                <div class="contenedorFormulario">
                    <h1>Contáctenos</h1>
                    <form action="">
                        <div class="div-1">
                            <label class="labelIS" for="">Nombre Completo:</label><br>
                            <input class="inputIS" type="text">
                        </div>
                        <div class="div-2">
                            <label class="labelIS" for="">Correo Electrónico:</label><br>
                            <input class="inputIS" type="text">
                        </div>
                        <div class="div-3">
                            <label class="labelIS" for="">Teléfono:</label><br>
                            <input class="inputIS" type="tel">
                        </div>
                        <div class="div-4">
                            <label class="labelIS" for="">Comentario:</label><br>
                            <textarea class="textareaformContact" name="" id="" cols="30" rows="5"></textarea>
                        </div><br>
                        <div class="div-5">
                            <button class="btnE btn-1 hover-filled-slide-down">
                                <span>Envíar</span>
                            </button>
                        </div>
                    </form>
                </div>
                <svg class="animated" id="freepik_stories-contact-us" xmlns="http://www.w3.org/2000/svg"
                     xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 500 500" version="1.1"
                     xmlns:svgjs="http://svgjs.com/svgjs">
                <style>
                    svg#freepik_stories-contact-us:not(.animated) .animable {
                        opacity: 0;
                    }

                    svg#freepik_stories-contact-us.animated #freepik--Device--inject-21 {
                        animation: 1s 1 forwards cubic-bezier(.36, -0.01, .5, 1.38) lightSpeedRight, 1.5s Infinite linear shake;
                        animation-delay: 0s, 1s;
                    }

                    svg#freepik_stories-contact-us.animated #freepik--character-1--inject-21 {
                        animation: 1.5s Infinite linear wind;
                        animation-delay: 0s;
                    }

                    svg#freepik_stories-contact-us.animated #freepik--character-2--inject-21 {
                        animation: 1s 1 forwards cubic-bezier(.36, -0.01, .5, 1.38) lightSpeedRight, 1.5s Infinite linear shake;
                        animation-delay: 0s, 1s;
                    }

                    @keyframes lightSpeedRight {
                        from {
                            transform: translate3d(50%, 0, 0) skewX(-20deg);
                            opacity: 0;
                        }

                        60% {
                            transform: skewX(10deg);
                            opacity: 1;
                        }

                        80% {
                            transform: skewX(-2deg);
                        }

                        to {
                            opacity: 1;
                            transform: translate3d(0, 0, 0);
                        }
                    }

                    @keyframes shake {

                        10%,
                        90% {
                            transform: translate3d(-1px, 0, 0);
                        }

                        20%,
                        80% {
                            transform: translate3d(2px, 0, 0);
                        }

                        30%,
                        50%,
                        70% {
                            transform: translate3d(-4px, 0, 0);
                        }

                        40%,
                        60% {
                            transform: translate3d(4px, 0, 0);
                        }
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
                </style>
                <g id="freepik--background-simple--inject-21" class="animable"
                   style="transform-origin: 250.324px 243.415px;">
                <path
                    d="M92.16,138c70.07-79.73,190.37-93,244-67.39a235.56,235.56,0,0,1,57.21,38.23q3.36,3,6.53,6.17a223.63,223.63,0,0,1,18.53,20.67A217.54,217.54,0,0,1,437,163.22a202.64,202.64,0,0,1,18.53,43.47,153.78,153.78,0,0,1,5.78,30.51c1.53,19.41.2,39-2.41,58.25q-.36,2.76-.78,5.52c-.07.51-.14,1-.22,1.53-2.87,19.17-6.93,38.51-16,55.23C432,376,397.46,426.69,360,428c-19.43.69-36.59-12-54.2-21-28-14.28-59.69-17.08-90.59-17.91s-62.18.06-92.29-7.6S63.29,356.24,47.9,327c-5.23-9.94-9.2-24.26-9.21-35.72,0-33.81,5.52-63.38,15.16-89.07a209.81,209.81,0,0,1,10.69-23.93,203.54,203.54,0,0,1,20.92-32.17Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 250.324px 243.415px;" id="eldpk41fxd1e8"
                    class="animable"></path>
                <g id="elwbairu89d4">
                <g style="opacity: 0.7; transform-origin: 250.324px 243.415px;" class="animable">
                <path
                    d="M92.16,138c70.07-79.73,190.37-93,244-67.39a235.56,235.56,0,0,1,57.21,38.23q3.36,3,6.53,6.17a223.63,223.63,0,0,1,18.53,20.67A217.54,217.54,0,0,1,437,163.22a202.64,202.64,0,0,1,18.53,43.47,153.78,153.78,0,0,1,5.78,30.51c1.53,19.41.2,39-2.41,58.25q-.36,2.76-.78,5.52c-.07.51-.14,1-.22,1.53-2.87,19.17-6.93,38.51-16,55.23C432,376,397.46,426.69,360,428c-19.43.69-36.59-12-54.2-21-28-14.28-59.69-17.08-90.59-17.91s-62.18.06-92.29-7.6S63.29,356.24,47.9,327c-5.23-9.94-9.2-24.26-9.21-35.72,0-33.81,5.52-63.38,15.16-89.07a209.81,209.81,0,0,1,10.69-23.93,203.54,203.54,0,0,1,20.92-32.17Z"
                    style="fill: rgb(255, 255, 255); transform-origin: 250.324px 243.415px;"
                    id="elusg2bjzsk7f" class="animable"></path>
                </g>
                </g>
                </g>
                <g id="freepik--Floor--inject-21" class="animable" style="transform-origin: 253.715px 426.84px;">
                <line x1="38.69" y1="426.84" x2="468.74" y2="426.84"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 253.715px 426.84px;"
                      id="el9flvplyiezh" class="animable"></line>
                </g>
                <g id="freepik--Plants--inject-21" class="animable" style="transform-origin: 265.022px 304.845px;">
                <path
                    d="M369.65,281.77a0,0,0,0,0,0,0l0,.11q0,.27.12.57a65,65,0,0,1,1,6.63c.19,1.91.34,4.09.38,6.52A98.68,98.68,0,0,1,370,312.38c-.22,1.46-.48,3-.79,4.54-.49,2.54-1.09,5.2-1.83,7.95-.33,1.28-.71,2.59-1.11,3.91l-.47,1.61c-.18.65-.36,1.3-.53,2v0a132.49,132.49,0,0,0-2.75,13.48c-.85,5.65-1.38,11.26-1.67,16.57-.39,7.08-.37,13.62-.2,19a2.44,2.44,0,0,0,0,.27c.18,5.47.52,9.76.75,12.2.13,1.43.22,2.24.23,2.29"
                    style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 365.849px 338.985px;"
                    id="ela4eq1ggtuh" class="animable"></path>
                <path d="M369.68,281.91l0,0,0,0a12.1,12.1,0,0,0-5.25-2.73"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 367.055px 280.545px;"
                      id="el4vzj2p44t0w" class="animable"></path>
                <line x1="370.8" y1="289.11" x2="373.46" y2="286.7"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 372.13px 287.905px;"
                      id="eltmbktdkf7e" class="animable"></line>
                <path
                    d="M367.41,324.88h0a11,11,0,0,0-.62-2.05,10.6,10.6,0,0,0-1.59-2.69,10.43,10.43,0,0,0-1.67-1.65"
                    style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 365.47px 321.685px;"
                    id="elc3edyrztatl" class="animable"></path>
                <path d="M365.28,332.38a7.36,7.36,0,0,1,4.17-4.11"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 367.365px 330.325px;"
                      id="eloupt9v3qds" class="animable"></path>
                <path d="M360.66,369.58c.89-1.08,1.56-5.17,1.92-7.37.09-.52.16-1,.23-1.29"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 361.735px 365.25px;"
                      id="el5pe6laa6af" class="animable"></path>
                <path d="M353.81,377a4.42,4.42,0,0,1,.89,0,7.25,7.25,0,0,1,6,4.45"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 357.255px 379.214px;"
                      id="elmrw7wq27edg" class="animable"></path>
                <path d="M369.24,317s.47-16.23-8.44-22.12"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 365.022px 305.94px;"
                      id="eley2uawd5gm6" class="animable"></path>
                <path
                    d="M370,351.79c1.17,3.79-7,11-7,11s-10.79-1.35-12-5.13,1.56-10,6.8-11.6S368.87,348,370,351.79Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 360.417px 354.228px;" id="el27x4z4bgls"
                    class="animable"></path>
                <path
                    d="M379.09,305.86c-1,4-8.76,6.87-8.76,6.87S365,306.5,366,302.48s5.31-8.44,8.93-7.51S380.13,301.84,379.09,305.86Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 372.64px 303.787px;" id="elqbhsybxu30s"
                    class="animable"></path>
                <path
                    d="M348.1,365.93c4.85,1.88,7.82,10.46,7.82,10.46s-8,4.31-12.84,2.42-10-7.21-8.6-10.76S343.25,364,348.1,365.93Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 345.083px 372.053px;" id="elfqchm77cnse"
                    class="animable"></path>
                <path
                    d="M358.73,318.73a10.43,10.43,0,0,0,3.32,1.88,3.49,3.49,0,0,0,3.53-.84c1-1.19.76-3,.11-4.49-1.3-2.85-6.08-7.7-9.75-6.31C350.64,311,356.37,317,358.73,318.73Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 360.007px 314.752px;" id="elg2wsc9ajfe"
                    class="animable"></path>
                <path
                    d="M369.58,326c-.7.86-1.44,1.95-1.05,3a2.23,2.23,0,0,0,2.44,1.2,6.56,6.56,0,0,0,2.62-1.29c1.87-1.3,5.71-4,3.26-6.57S371,324.19,369.58,326Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 373.032px 325.9px;" id="el3wf92dolkok"
                    class="animable"></path>
                <path
                    d="M353.93,289.73a1.93,1.93,0,0,0-1.75,1.42c-.16.93.61,1.74,1.35,2.31,1.86,1.44,7.45,5.3,8.69,1.57C363.4,291.51,356.39,289.46,353.93,289.73Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 357.256px 293.158px;" id="el9rlkksa9t6k"
                    class="animable"></path>
                <path
                    d="M364.22,277.47c-1.15.11-2.3-.31-3.46-.24s-2.43,1-2.18,2.14,1.54,1.39,2.6,1.45a20.77,20.77,0,0,0,5.45-.37,1.68,1.68,0,0,0,1.1-.56c.47-.69-.27-1.61-1.07-1.85a11.94,11.94,0,0,1-2.41-.58Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 363.213px 279.042px;" id="elhs13djejwm8"
                    class="animable"></path>
                <path
                    d="M375.48,285.4c1.15,0,2.27-.46,3.43-.47s2.5.84,2.31,2-1.43,1.49-2.49,1.62a20.79,20.79,0,0,1-5.46,0,1.66,1.66,0,0,1-1.14-.49c-.51-.65.17-1.62.94-1.92a10.88,10.88,0,0,0,2.37-.73Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 376.596px 286.83px;" id="elc58nm1b8lxw"
                    class="animable"></path>
                <path
                    d="M374.34,370.62a1.62,1.62,0,0,1,1-.49,1.11,1.11,0,0,1,1,1,3.17,3.17,0,0,1-.18,1.46c-.79,2.63-9.59,21.62-11.62,18.21-1.19-2,1.75-8.69,2.62-10.58A27.57,27.57,0,0,1,374.34,370.62Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 370.31px 380.669px;" id="eluc2gi8vxpi"
                    class="animable"></path>
                <path d="M370.05,283s-.53-4.61.58-5"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 370.277px 280.5px;"
                      id="ele8vn2gin5m5" class="animable"></path>
                <path
                    d="M369.07,278.19a10,10,0,0,1,2.84-4.22c1.39-1,3.62-1.08,4.63.31,1.13,1.55,0,3.9-1.73,4.73s-3.77.58-5.67.31c0-.28,0-.56,0-.84Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 373.032px 276.402px;" id="elj90qnili02n"
                    class="animable"></path>
                <path d="M373.81,426.61h0a85.62,85.62,0,0,1-28.48,0h0l-11.08-32.69h50.64Z"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 359.57px 410.861px;"
                      id="el4bpas9s1cdw" class="animable"></path>
                <path
                    d="M180.55,190.43a0,0,0,0,0,0,0l0,.11q.06.27.12.57a61.83,61.83,0,0,1,1,6.63c.19,1.91.33,4.09.38,6.52A98.68,98.68,0,0,1,180.93,221c-.22,1.46-.48,3-.79,4.54-.49,2.54-1.1,5.2-1.83,7.95-.34,1.28-.71,2.59-1.11,3.91-.16.54-.32,1.07-.47,1.61s-.37,1.3-.54,2a0,0,0,0,1,0,0,133,133,0,0,0-2.75,13.48c-.85,5.65-1.37,11.26-1.66,16.57-.39,7.08-.38,13.62-.2,19v.27c.19,5.47.52,9.76.76,12.21.12,1.42.22,2.23.22,2.28"
                    style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 176.763px 247.625px;"
                    id="el2b4572vi37q" class="animable"></path>
                <path d="M180.57,190.57l0,0s0,0,0,0a12.91,12.91,0,0,0-2.34-1.63,12.54,12.54,0,0,0-2.92-1.1"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 177.94px 189.205px;"
                      id="elfgg5gctmqti" class="animable"></path>
                <line x1="181.69" y1="197.77" x2="184.36" y2="195.36"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 183.025px 196.565px;"
                      id="eln8jmkk9qcm9" class="animable"></line>
                <path
                    d="M178.31,233.54h0a11,11,0,0,0-.63-2.05,10.6,10.6,0,0,0-1.59-2.69,10.43,10.43,0,0,0-1.67-1.65"
                    style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 176.365px 230.345px;"
                    id="elgggvdk0os3k" class="animable"></path>
                <path d="M176.18,241a7.31,7.31,0,0,1,4.16-4.11"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 178.26px 238.945px;"
                      id="elzclvu9wbxu" class="animable"></path>
                <path d="M171.55,278.24c.89-1.08,1.57-5.17,1.93-7.37.08-.52.16-1,.22-1.29"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 172.625px 273.91px;"
                      id="el4iatrxjef9y" class="animable"></path>
                <path d="M164.7,285.62a4.52,4.52,0,0,1,.9,0,7.28,7.28,0,0,1,6,4.45"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 168.15px 287.834px;"
                      id="elmwx7c8e90t" class="animable"></path>
                <path d="M180.13,225.62s.48-16.23-8.44-22.12"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 175.912px 214.56px;"
                      id="elopdp3ohppds" class="animable"></path>
                <path
                    d="M180.94,260.45c1.16,3.79-7,11-7,11s-10.8-1.35-12-5.13,1.57-10,6.8-11.6S179.77,256.67,180.94,260.45Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 171.358px 262.888px;" id="elrkytt0ppon"
                    class="animable"></path>
                <path
                    d="M190,214.52c-1,4-8.76,6.87-8.76,6.87s-5.39-6.23-4.35-10.25,5.3-8.44,8.92-7.51S191,210.5,190,214.52Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 183.526px 212.447px;" id="elwn4umpdh1gp"
                    class="animable"></path>
                <path
                    d="M159,274.59c4.85,1.89,7.83,10.46,7.83,10.46s-8,4.31-12.85,2.42-10-7.21-8.59-10.76S154.14,272.7,159,274.59Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 155.992px 280.722px;" id="elrjub6vk35j"
                    class="animable"></path>
                <path
                    d="M169.63,227.39a10.39,10.39,0,0,0,3.31,1.88,3.49,3.49,0,0,0,3.53-.84c1-1.19.76-3,.11-4.49-1.3-2.85-6.07-7.7-9.75-6.31C161.54,219.64,167.26,225.64,169.63,227.39Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 170.899px 223.412px;" id="ellrrwlrryr0h"
                    class="animable"></path>
                <path
                    d="M180.47,234.67c-.69.86-1.43,2-1.05,3a2.23,2.23,0,0,0,2.44,1.2,6.5,6.5,0,0,0,2.62-1.29c1.87-1.29,5.71-4,3.26-6.57S181.94,232.85,180.47,234.67Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 183.925px 234.569px;" id="elrjshnf6gwea"
                    class="animable"></path>
                <path
                    d="M164.82,198.39a1.94,1.94,0,0,0-1.75,1.42c-.16.93.61,1.74,1.36,2.31,1.86,1.44,7.44,5.3,8.69,1.57C174.29,200.17,167.29,198.12,164.82,198.39Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 168.15px 201.818px;" id="el10aiitcdbkug"
                    class="animable"></path>
                <path
                    d="M175.11,186.13c-1.15.11-2.3-.31-3.45-.24s-2.44,1-2.18,2.14,1.53,1.39,2.6,1.45a20.7,20.7,0,0,0,5.44-.37,1.7,1.7,0,0,0,1.11-.56c.46-.69-.28-1.61-1.07-1.85a12,12,0,0,1-2.42-.58Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 174.109px 187.702px;" id="elte39ghq487"
                    class="animable"></path>
                <path
                    d="M186.37,194.06c1.16,0,2.28-.46,3.43-.47s2.5.84,2.32,2-1.44,1.49-2.5,1.62a20.79,20.79,0,0,1-5.46,0,1.66,1.66,0,0,1-1.14-.49c-.51-.65.17-1.62.95-1.92a11.23,11.23,0,0,0,2.37-.73Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 187.49px 195.49px;" id="eltjx6yus1crq"
                    class="animable"></path>
                <path
                    d="M185.23,279.28a1.64,1.64,0,0,1,1-.49,1.14,1.14,0,0,1,1,1,3.18,3.18,0,0,1-.19,1.46c-.78,2.63-9.59,21.62-11.61,18.21-1.2-2,1.74-8.69,2.61-10.58A27.57,27.57,0,0,1,185.23,279.28Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 181.197px 289.329px;" id="elfn9t8i3ut4a"
                    class="animable"></path>
                <path d="M180.94,191.68s-.53-4.61.59-5"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 181.172px 189.18px;"
                      id="el0lze2t3u4a6" class="animable"></path>
                <path
                    d="M180,186.85a9.82,9.82,0,0,1,2.84-4.22c1.39-1,3.61-1.08,4.62.31,1.13,1.55,0,3.9-1.73,4.73s-3.76.58-5.66.31c0-.28,0-.56,0-.84Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 183.957px 185.062px;" id="elbflxpftghgr"
                    class="animable"></path>
                </g>
                <g id="freepik--Building--inject-21" class="animable" style="transform-origin: 256.365px 186.675px;">
                <line x1="53.85" y1="300.97" x2="53.85" y2="202.16"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 53.85px 251.565px;"
                      id="elh1xl1d03hbo" class="animable"></line>
                <line x1="362.35" y1="300.97" x2="350.14" y2="300.97"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 356.245px 300.97px;"
                      id="elralgvdyto2t" class="animable"></line>
                <line x1="458.1" y1="300.97" x2="433.23" y2="300.97"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 445.665px 300.97px;"
                      id="elbng73r6xbgr" class="animable"></line>
                <polyline points="349.02 150.86 393.09 150.86 393.09 108.88"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 371.055px 129.87px;"
                          id="el55n0w8oahfv" class="animable"></polyline>
                <polyline points="92.16 138.04 138.98 138.04 138.98 172.19 190.3 172.19"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 141.23px 155.115px;"
                          id="elwmns5pj12dc" class="animable"></polyline>
                <line x1="64.54" y1="253.69" x2="64.54" y2="178.23"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 64.54px 215.96px;"
                      id="el0h5j1avvn08" class="animable"></line>
                <line x1="85.46" y1="145.48" x2="85.46" y2="204.62"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 85.46px 175.05px;"
                      id="ellb8seejyh8i" class="animable"></line>
                <line x1="106.37" y1="145.48" x2="106.37" y2="197.76"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 106.37px 171.62px;"
                      id="elhzhrud8z0r9" class="animable"></line>
                <line x1="127.28" y1="145.48" x2="127.28" y2="236.93"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 127.28px 191.205px;"
                      id="el1eu4hifmzbr" class="animable"></line>
                <polyline points="227.45 132.51 227.45 72.38 312.58 72.38 312.58 132.51"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 270.015px 102.445px;"
                          id="elk82tnccmp9e" class="animable"></polyline>
                <polyline points="233.69 102.25 233.69 79.52 249.43 79.52"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 241.56px 90.885px;"
                          id="elm2ccxmafsgd" class="animable"></polyline>
                <polyline points="252.89 102.25 252.89 79.52 268.63 79.52"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 260.76px 90.885px;"
                          id="el3d3ieygubid" class="animable"></polyline>
                <polyline points="272.09 102.25 272.09 79.52 287.83 79.52"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 279.96px 90.885px;"
                          id="elkzpjnyy6qw" class="animable"></polyline>
                <polyline points="291.29 102.25 291.29 79.52 307.03 79.52"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 299.16px 90.885px;"
                          id="elduekwpcnwh9" class="animable"></polyline>
                <polyline points="233.69 132.51 233.69 109.78 249.43 109.78"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 241.56px 121.145px;"
                          id="el3qsitcoh5nt" class="animable"></polyline>
                <polyline points="252.89 132.51 252.89 109.78 268.63 109.78"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 260.76px 121.145px;"
                          id="elzgu4aip616" class="animable"></polyline>
                <polyline points="272.09 132.51 272.09 109.78 287.83 109.78"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 279.96px 121.145px;"
                          id="elqs893zhjy1f" class="animable"></polyline>
                <polyline points="291.29 132.51 291.29 109.78 307.03 109.78"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 299.16px 121.145px;"
                          id="el155kexuyluy" class="animable"></polyline>
                <line x1="399.91" y1="114.08" x2="399.91" y2="189.43"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 399.91px 151.755px;"
                      id="eliz1wh4mqm6" class="animable"></line>
                <line x1="430.82" y1="295.45" x2="433.23" y2="295.45"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 432.025px 295.45px;"
                      id="elexdo2y9uh5r" class="animable"></line>
                <line x1="418.44" y1="135.72" x2="418.44" y2="220.08"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 418.44px 177.9px;"
                      id="elyy1749z20pi" class="animable"></line>
                <polyline points="436.98 273.91 436.98 295.45 451.77 295.45"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 444.375px 284.68px;"
                          id="el8xxdazc7oha" class="animable"></polyline>
                <line x1="436.98" y1="163.22" x2="436.98" y2="220.51"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 436.98px 191.865px;"
                      id="elsgpnnu7gdk" class="animable"></line>
                <polyline points="455.51 206.69 455.51 295.45 458.88 295.45"
                          style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 457.195px 251.07px;"
                          id="el4yqn8jilbrs" class="animable"></polyline>
                </g>
                <g id="freepik--Mail--inject-21" class="animable" style="transform-origin: 134.45px 364.81px;">
                <rect x="38.69" y="302.78" width="191" height="124.06"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 134.19px 364.81px;"
                      id="elqgk08siyk2s" class="animable"></rect>
                <polygon points="38.69 302.78 134.19 364.81 229.69 302.78 38.69 302.78"
                         style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 134.19px 333.795px;"
                         id="elid5b8p42g8g" class="animable"></polygon>
                <line x1="105.48" y1="346.16" x2="38.69" y2="426.84"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 72.085px 386.5px;"
                      id="elyjgdr2z98f" class="animable"></line>
                <line x1="163.42" y1="346.16" x2="230.21" y2="426.84"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 196.815px 386.5px;"
                      id="elxrbokvjsb9" class="animable"></line>
                </g>
                <g id="freepik--Device--inject-21" class="animable" style="transform-origin: 270.225px 282.42px;">
                <path
                    d="M331.9,144.48H287.5a7.16,7.16,0,0,0-6.26,3.7l0,0a12.61,12.61,0,0,1-22.06,0h0a7.15,7.15,0,0,0-6.29-3.75H208.54a9.27,9.27,0,0,0-9.39,9.15V404a9.28,9.28,0,0,0,9.39,9.15H331.9a9.29,9.29,0,0,0,9.4-9.15V153.63A9.28,9.28,0,0,0,331.9,144.48Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 270.225px 278.79px;" id="elg6dyzhmma6s"
                    class="animable"></path>
                <path
                    d="M345.63,150.86A12.82,12.82,0,0,0,332.81,138H207.64a12.81,12.81,0,0,0-12.82,12.81h0V414a12.81,12.81,0,0,0,12.81,12.81H332.81A12.82,12.82,0,0,0,345.63,414h0ZM341.3,404a9.29,9.29,0,0,1-9.4,9.15H208.54a9.28,9.28,0,0,1-9.39-9.15V153.63a9.27,9.27,0,0,1,9.39-9.15h44.37a7.13,7.13,0,0,1,6.28,3.75h0a12.61,12.61,0,0,0,22.06,0l0,0a7.14,7.14,0,0,1,6.26-3.7h44.4a9.27,9.27,0,0,1,9.39,9.15Z"
                    style="fill: rgb(38, 50, 56); transform-origin: 270.225px 282.405px;" id="eldpd8jo8s94q"
                    class="animable"></path>
                <g id="elb7gw1a5i6dj">
                <polygon points="303.1 138.04 219.95 426.83 252.97 426.8 333.04 138.04 303.1 138.04"
                         style="fill: rgb(255, 255, 255); opacity: 0.2; transform-origin: 276.495px 282.435px;"
                         class="animable"></polygon>
                </g>
                <g id="el7rdje49qpgo">
                <polygon points="290.7 138.04 202.79 426.84 207.6 426.81 293.86 138.04 290.7 138.04"
                         style="fill: rgb(255, 255, 255); opacity: 0.2; transform-origin: 248.325px 282.44px;"
                         class="animable"></polygon>
                </g>
                <path
                    d="M292.65,352.73a21.46,21.46,0,0,1-21.53,21.92,22.39,22.39,0,0,1-22.3-21.92,21.46,21.46,0,0,1,21.53-21.91A22.38,22.38,0,0,1,292.65,352.73Z"
                    style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 270.735px 352.735px;"
                    id="elcalk734lt5h" class="animable"></path>
                <path
                    d="M263.55,369.09a16.42,16.42,0,0,1-5.49-3.38,15,15,0,0,1-3.63-5.49,19.54,19.54,0,0,1-1.31-7.3,17.46,17.46,0,0,1,1.11-6.23,15.67,15.67,0,0,1,3-5,20,20,0,0,1,9.57-5.82,21.18,21.18,0,0,1,5.54-.73,18.88,18.88,0,0,1,4.61.55,14.78,14.78,0,0,1,4.13,1.71,13.76,13.76,0,0,1,3.37,2.85,12.58,12.58,0,0,1,2.26,4.1,16.43,16.43,0,0,1,.82,5.29A14.68,14.68,0,0,1,284,359.1a13.09,13.09,0,0,1-3.4,2.75,7.55,7.55,0,0,1-3.62,1,4,4,0,0,1-2.44-.79,2.84,2.84,0,0,1-1.15-2.26,7,7,0,0,1-6.05,3.15,6.3,6.3,0,0,1-5-2.12,7.66,7.66,0,0,1-1.85-5.23,14,14,0,0,1,.81-4.62,16,16,0,0,1,2.21-4.18,11,11,0,0,1,3.5-3.05,9.06,9.06,0,0,1,4.49-1.17,6.59,6.59,0,0,1,3.14.76,5.16,5.16,0,0,1,2.18,2.23l.2-.67a1.87,1.87,0,0,1,2.37-1.17,2,2,0,0,1,.51.26,1.2,1.2,0,0,1,.45,1,1.71,1.71,0,0,1-.09.55l-3.24,10.78a10.72,10.72,0,0,0-.55,2.54,1,1,0,0,0,1.19,1.16,4.47,4.47,0,0,0,3-1.43,10.27,10.27,0,0,0,2.43-3.79,13.26,13.26,0,0,0,.94-4.9,14.3,14.3,0,0,0-.64-4.36,10.65,10.65,0,0,0-1.72-3.37,10.19,10.19,0,0,0-2.61-2.33,11.34,11.34,0,0,0-3.22-1.39,14,14,0,0,0-3.58-.46,16.52,16.52,0,0,0-4.53.64,16.09,16.09,0,0,0-4.29,1.93,16.74,16.74,0,0,0-3.6,3.06,13.4,13.4,0,0,0-2.48,4.24,14.89,14.89,0,0,0-.93,5.29,16.33,16.33,0,0,0,1.14,6.25,11.94,11.94,0,0,0,3.12,4.5,14,14,0,0,0,4.52,2.63,16.08,16.08,0,0,0,5.45.92,19.67,19.67,0,0,0,5.85-.89,1.7,1.7,0,0,1,.59-.1,1.33,1.33,0,0,1,1,.43,1.4,1.4,0,0,1,.39,1,1.21,1.21,0,0,1-.94,1.28,25.65,25.65,0,0,1-7.28,1.12A19.56,19.56,0,0,1,263.55,369.09Zm8.26-10.37a5.65,5.65,0,0,0,2.09-2.88l2.09-7.35-.14-.3a3.51,3.51,0,0,0-.47-.67,6.88,6.88,0,0,0-.82-.8,4.24,4.24,0,0,0-1.25-.69,5,5,0,0,0-3.63.13,5.85,5.85,0,0,0-1.71,1.11,9.31,9.31,0,0,0-1.38,1.62,11.05,11.05,0,0,0-1,1.95,12,12,0,0,0-.65,2.11,9.84,9.84,0,0,0-.23,2.09,8.59,8.59,0,0,0,.08,1.35,5.82,5.82,0,0,0,.26,1.17,4,4,0,0,0,.47,1,2.74,2.74,0,0,0,.68.72,2.86,2.86,0,0,0,.95.45,4,4,0,0,0,1.23.16,5.64,5.64,0,0,0,3.47-1.14Z"
                    style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 270.325px 352.715px;"
                    id="elr04a3kbipcp" class="animable"></path>
                <path
                    d="M292.16,277.6a21.46,21.46,0,0,1-21.53,21.91,22.38,22.38,0,0,1-22.3-21.91,21.45,21.45,0,0,1,21.53-21.92A22.39,22.39,0,0,1,292.16,277.6Z"
                    style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 270.245px 277.595px;"
                    id="elghinxtrl3km" class="animable"></path>
                <path
                    d="M284,275.6c-6.87-4.5-20.34-4.5-26.89,0a5.08,5.08,0,0,0-4.14,5.19c.1,2.91,12.19,2.91,12.09,0a5.45,5.45,0,0,0-1.32-3.3,32.57,32.57,0,0,1,13.76,0,5.06,5.06,0,0,0-1.08,3.3c.1,2.91,12.19,2.91,12.08,0A5.54,5.54,0,0,0,284,275.6Z"
                    style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 270.733px 277.599px;"
                    id="elonc59lzdeyp" class="animable"></path>
                <path
                    d="M292.16,204.62c.12,5.39-2.82,10.21-7.54,13.42v13.09l-9.39-9.4a25.64,25.64,0,0,1-4.6.4c-12.1,0-22.09-7.84-22.3-17.51s9.42-17.5,21.53-17.5S292,195,292.16,204.62Z"
                    style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 270.245px 209.125px;"
                    id="elenqfqroob6p" class="animable"></path>
                <path d="M260.91,204.62a2.84,2.84,0,1,1-2.84-2.83A2.84,2.84,0,0,1,260.91,204.62Z"
                      style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 258.07px 204.63px;"
                      id="el2bm9zvsdng6" class="animable"></path>
                <path d="M273.06,204.62a2.84,2.84,0,1,1-2.84-2.83A2.84,2.84,0,0,1,273.06,204.62Z"
                      style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 270.22px 204.63px;"
                      id="elt4tgmpu635p" class="animable"></path>
                <path d="M285.21,204.62a2.84,2.84,0,1,1-2.84-2.83A2.84,2.84,0,0,1,285.21,204.62Z"
                      style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 282.37px 204.63px;"
                      id="el9j3e8duouws" class="animable"></path>
                </g>
                <g id="freepik--character-1--inject-21" class="animable" style="transform-origin: 109.966px 248.405px;">
                <path
                    d="M147.8,244.53a4.58,4.58,0,0,1-1.49,1.64q-6.92,5.52-14.16,10.59c-1.77,1.24-3.61,2.52-5.32,3.91-10.28,6.88-4,8.56-10.28,23.12v0c-1.48,3.48-1.21,20.53-1.21,20.53h-.51A39.23,39.23,0,0,0,111,301h0a5.38,5.38,0,0,0-.58-.34h0a1.87,1.87,0,0,0-.6-.19c-1-.06-4.81.4-8.66.15l-1-.08c-.56-.06-1.11-.13-1.66-.23s-1.08-.21-1.59-.35a99.3,99.3,0,0,1-10.73-4.14h0l-1.74-.75-.86-.37-.78-.34-.56-.24-.54-.23h0c-.91-.38-1.76-.73-2.54-1a11.3,11.3,0,0,0-1.09-.33c0,.82-.13,1.66-.24,2.48-.48,3.91-1.55,7.52-3.46,8a.24.24,0,0,1-.12,0,2.94,2.94,0,0,1-.51.05h-.15a3.88,3.88,0,0,1-1.24-.23h0a8,8,0,0,1-4-3.75,5.26,5.26,0,0,1-.62-2.3c0-2.91-.81-20.08-.81-25.08s1-13.75,3.49-17a13.16,13.16,0,0,1,3.62-3.47,19.07,19.07,0,0,1,6.17-3.44c2.66-.87,8.61-3.09,12.76-4.66v0l-6.27,2.42c1.59,2.72,5,7,11.15,7.55,5.78.49,9.36-4.74,11.19-8.56.16.06,10.22-1.85,12.55-1.74,7.59.33,13.78-3.78,16.58-5.41a6.53,6.53,0,0,1,9.57,3.62l0,.09A4.8,4.8,0,0,1,147.8,244.53Z"
                    style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 107.499px 270.408px;"
                    id="elvxx45olu1dl" class="animable"></path>
                <path d="M108.92,244.63h0l-.46-.16Z"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 108.69px 244.55px;"
                      id="elhw1hl6ki8f4" class="animable"></path>
                <path
                    d="M117.45,308.72a.5.5,0,0,1,0,.12.7.7,0,0,1-1.05.3c-.46-.26-1.17-1.93-1.17-1.93l-.79-.82-.52-.55h0c.08.2.71,1.73.38,2.44a.35.35,0,0,1-.08.13,2.37,2.37,0,0,1-1.9.95h0c-.43,0-1.69.15-2.79.22h-.12a9,9,0,0,1-1,0,6.78,6.78,0,0,1-2.52-.85,30.54,30.54,0,0,1-5.18-1.23l-.3-.16-.27-.16a2.67,2.67,0,0,1-.49-.38A6.92,6.92,0,0,1,98.12,305l0,0h0s-4.06-.17-9.51-.59c-2-.15-4.16-.34-6.4-.56-3.44-.35-6.28-.33-8.51-.64l-.16,0c-.44-.06-.85-.14-1.24-.23h0a5.16,5.16,0,0,1-4-3.75,12.83,12.83,0,0,1-.32-1.35l1.74-3a11.57,11.57,0,0,1,3-1.74,8.9,8.9,0,0,1,5.31-.49,11.3,11.3,0,0,1,1.09.33c.78.3,1.63.65,2.54,1l.55.23.56.24.78.34C88,296.63,93.31,299,96.86,300a20.78,20.78,0,0,0,3.25.58l1,.08c3.85.25,7.65-.21,8.66-.15s3.48,2.41,5.06,3.86c.43.4.81.73,1.07.93l.12.1.09.08a4.5,4.5,0,0,1,1.16,2.12s0,0,0,0a4.49,4.49,0,0,1,.16.82A1.31,1.31,0,0,1,117.45,308.72Z"
                    style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 92.7168px 301.022px;"
                    id="elkw53u0iuyp" class="animable"></path>
                <path
                    d="M117.45,308.72a.5.5,0,0,1,0,.12.7.7,0,0,1-1.05.29,6.82,6.82,0,0,1-1.17-1.93l-.79-.81-.52-.54h0c.07.16.72,1.72.39,2.44a.35.35,0,0,1-.08.13,2.4,2.4,0,0,1-.38.4,2.45,2.45,0,0,1-1.52.54h0c-.44,0-1.69.14-2.78.22h-.14a9,9,0,0,1-1,0,7,7,0,0,1-2.51-.84,30.89,30.89,0,0,1-5.18-1.24l-.29-.14-.27-.16a4,4,0,0,1-.49-.38A6.92,6.92,0,0,1,98.12,305l0,0h0s-3.94-.17-9.28-.58c-2-.15-4.31-.35-6.63-.58-3.16-.31-5.77-.4-7.88-.73l-.65-.12-.75-.17a7.65,7.65,0,0,1,.37-3.64A7.14,7.14,0,0,1,77.76,295h0a28.41,28.41,0,0,1,3.83-1.11h0l.54.23.56.24.78.34c4.53,1.95,9.78,4.31,13.34,5.28a19.68,19.68,0,0,0,3.25.57l1,.08c3.85.26,7.65-.2,8.66-.14s3.47,2.4,5,3.85a14.12,14.12,0,0,0,1.09.94l.12.09.09.08a4.25,4.25,0,0,1,1.16,2.12s0,0,0,0a4.49,4.49,0,0,1,.16.82A1.31,1.31,0,0,1,117.45,308.72Z"
                    style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 95.1543px 301.742px;"
                    id="elkyrdcq7bapa" class="animable"></path>
                <path d="M105.48,306.06s2.27,1.18,3.17,1.59.82,2.06.82,2.06"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 107.476px 307.885px;"
                      id="els4ggw57b1pi" class="animable"></path>
                <path d="M107.91,304.46a51.57,51.57,0,0,1,4.12,3.27,1.59,1.59,0,0,1,.25,1.66"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 110.16px 306.925px;"
                      id="elz1d63wj2ez" class="animable"></path>
                <path d="M113.89,305.83a47.38,47.38,0,0,0-3.75-3.6"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 112.015px 304.03px;"
                      id="eljtn4ag54vh" class="animable"></path>
                <path
                    d="M108.91,244.65c-1.81,3.81-5.4,9-11.18,8.55-6.12-.52-9.56-4.83-11.15-7.56,2.2-.84,4.43-1.7,6.26-2.42v0c0-1.86-.06-4.09-.26-6.3,0-.48-.1-1-.15-1.45s-.11-.77-.17-1.14h11.63s-.07.46-.16,1.23a0,0,0,0,1,0,0c-.07.69-.16,1.61-.23,2.65-.09,1.38-.15,3-.11,4.53.56.19,1.13.4,1.7.62l1.1.38c.44.16.87.3,1.33.45l1,.3A3.34,3.34,0,0,1,108.91,244.65Z"
                    style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 97.745px 243.779px;"
                    id="el3v0boh4ezod" class="animable"></path>
                <path d="M92.43,235.43s2.17,5.64,5.32,6.6,6-6.47,6-6.47-4.44,4.74-6.09,4-5.21-4.09-5.21-4.09"
                      style="fill: rgb(38, 50, 56); transform-origin: 98.09px 238.773px;" id="eld11zznps24"
                      class="animable"></path>
                <path
                    d="M90.56,204.28a27.35,27.35,0,0,0-6.83,9.53c-1.43,3-2.64,6.45-1.54,9.59a14.22,14.22,0,0,0,2.75,4.22c2.16,2.59,5.19,9.82,7.35,12.41.14-4.61-3.72-12.06-3.31-15.93a27.75,27.75,0,0,1,2.91-8.55,43.93,43.93,0,0,1,5.66-9.82c1.31-1.58,5.52-4.39,1.27-4.73C96,200.77,92.69,202.53,90.56,204.28Z"
                    style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 91.2182px 220.505px;"
                    id="el4pmj8676xm5" class="animable"></path>
                <path d="M87.84,220s-1.49-2.89-3.06-.15c-1.13,2,.5,5.15,1.2,6.32a2.35,2.35,0,0,0,2.09,1Z"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 86.2311px 222.923px;"
                      id="ele0yyr65385g" class="animable"></path>
                <path
                    d="M107.42,230.44a20.3,20.3,0,0,1-3.69,5.12l-.9.93c-1.86,1.84-3.87,3.3-5.19,3-1.15-.23-2.65-1.41-4.12-2.92-.37-.37-.73-.77-1.09-1.17h0a28.31,28.31,0,0,1-4.09-5.79,9.06,9.06,0,0,1-.59-2.45,57.26,57.26,0,0,1-.26-7.54c0-.89,0-1.6,0-2,0-1.74,6.52-7.79,6.52-7.79a1.15,1.15,0,0,1,.55-.06,10.52,10.52,0,0,1,3.2,1.14c3.95,1.92,9.46,5.73,9.86,7.18C108.23,220.2,108,228.56,107.42,230.44Z"
                    style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 97.7211px 224.644px;"
                    id="el4fjiburwjd" class="animable"></path>
                <path
                    d="M94.47,222.42c0,.7-.26,1.27-.55,1.27s-.58-.55-.58-1.27.26-1.29.58-1.29S94.47,221.72,94.47,222.42Z"
                    style="fill: rgb(38, 50, 56); transform-origin: 93.905px 222.41px;" id="el5snjig1y07x"
                    class="animable"></path>
                <path
                    d="M101.92,221.14c.32,0,.58.57.58,1.28s-.26,1.27-.58,1.27-.58-.57-.58-1.27S101.6,221.14,101.92,221.14Z"
                    style="fill: rgb(38, 50, 56); transform-origin: 101.92px 222.415px;" id="eldpr1ebxn66c"
                    class="animable"></path>
                <path d="M90.75,219.27s1-2,4.54-1.39"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 93.02px 218.517px;"
                      id="elfs4makbkk3" class="animable"></path>
                <path d="M105.21,219.27s-1-2-4.54-1.39"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 102.94px 218.517px;"
                      id="elby8n5c51uq4" class="animable"></path>
                <path d="M98.66,227.31a1.68,1.68,0,0,0,1.53-1.29s-1.94-3-1.35-5.94"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 99.425px 223.695px;"
                      id="el3rdiqbis99a" class="animable"></path>
                <path d="M86.58,213a11.69,11.69,0,0,0-1.8,3.62"
                      style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; transform-origin: 85.68px 214.81px;"
                      id="el2upesqqsy8c" class="animable"></path>
                <path d="M94.94,205s-1.11,1.84-6,5.59a9.32,9.32,0,0,0-.9.74"
                      style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; transform-origin: 91.49px 208.165px;"
                      id="el1b7jm36b0gj" class="animable"></path>
                <path d="M79.26,263.63q-1,14.26-2,28.54v-.73"
                      style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 78.26px 277.9px;"
                      id="el9rf2qxali6" class="animable"></path>
                <path
                    d="M142.43,232.24a5.94,5.94,0,0,1,5.53.64,8.57,8.57,0,0,1,3.29,4.65,8.16,8.16,0,0,1-.18,5.74,5.42,5.42,0,0,1-4.53,3.25,6.47,6.47,0,0,1-4-1.45C138.8,242.27,136.93,234.61,142.43,232.24Z"
                    style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 145.333px 239.176px;"
                    id="elvjlmh2vtn0e" class="animable"></path>
                <path
                    d="M150.71,200.31c0,.12,0,.91.07,1.05.35,1.54,1.09,5.39-.78,6.17.71,2.53,2.45,19.06,2.22,27.49-.06,2.52-.5,5.51-2.76,6.59-3.81,1.81-7.43-2.6-7-6.05.67-4.71.44-9.51,1-14.27.61-4.94,1.73-10,.5-14.83-.3-.33-2.22-4.14-2.85-5.19a6,6,0,0,1-.66-1.44,35.94,35.94,0,0,1-.36-5.21c.57-1.08,1.31-.08,1.7.63a5.87,5.87,0,0,1,.32,2.71,1.13,1.13,0,0,0,.09.66.82.82,0,0,0,.75.34c1.23-.18,1.18-1.21,1.16-2,0-2.65,0-5.3,0-7.93,0-.44.14-1.63.56-1.67s1.05.3,1.11,1.71c.07,1.59.07,6.49.07,6.49a.33.33,0,0,0,.31.09c.1,0,.14-.18.18-.28.59-2.46,1.19-4.92,1.78-7.38.07-.29.5-.89.81-.89.74,0,.76.86.8,1.11.26,1.32-1.59,6.76-1.9,8,0,.22,0,.55.23.49l2.9-5.85a2.38,2.38,0,0,1,1.57-1.42.25.25,0,0,1,.15,0,.3.3,0,0,1,.12.13c.28.5,0,1.19-.16,1.74s-2.33,4.59-3.1,6.22c-.11.23-.29.75-.07,1s.62-.23.78-.56c.49-1,.95-1.94,1.4-2.92.14-.29.35-.7.68-.63C154.28,194.83,151.51,198.92,150.71,200.31Z"
                    style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 146.551px 214.565px;"
                    id="el13cng56fg09d" class="animable"></path>
                <path d="M145.33,199.45a12.17,12.17,0,0,1,2.59,2.82,4.63,4.63,0,0,1,.6,3.68,2.72,2.72,0,0,1-.19.47"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 146.999px 202.935px;"
                      id="elip43l55h7tr" class="animable"></path>
                <path d="M117.16,261.92a22.47,22.47,0,0,1,2.11,6.78c.29,2.36.38,4.21-1.23,10.84"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 118.299px 270.73px;"
                      id="el3x6vavfcq3g" class="animable"></path>
                <path
                    d="M94.59,208.33a2.63,2.63,0,0,0-.1,1.27,2.78,2.78,0,0,0,1,1.33,45.21,45.21,0,0,0,10.62,6.94,2,2,0,0,1,1.47,2.26l0,7.73a7.55,7.55,0,0,1-.23,2.37c-.56,1.8-1.8,3.25-2.7,4.91a9.91,9.91,0,0,0-1.34,5.19c-.25-1.91,6.43-5.61,8.24-13.13.25-1.06,5.45-7.37,2.33-14.78-3-7.11-7.72-10.17-9.31-10.54a7.08,7.08,0,0,0-6.35,1.22A10,10,0,0,0,94.59,208.33Z"
                    style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 104.664px 220.963px;"
                    id="elfn08r0pu9lj" class="animable"></path>
                <path
                    d="M101.14,230c-.57.12-1.15.23-1.73.3-2,.25-4.14-.06-5.45-1.52.1,1.31,1,6.26,3.69,6.4S101.14,230,101.14,230Z"
                    style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 97.55px 231.981px;"
                    id="elfj1hl5dt3as" class="animable"></path>
                <path
                    d="M98.54,205.31a15.92,15.92,0,0,0,5.32,6.54c1.69,1.21,3.62,2.08,5.17,3.46,2,1.83,3.31,4.73,2.54,7.36"
                    style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; transform-origin: 105.167px 213.99px;"
                    id="ellgoydypc8e" class="animable"></path>
                <path d="M119.44,245.71a9.76,9.76,0,0,0-3.55,6.21,11.34,11.34,0,0,0,.75,6.25"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 117.591px 251.94px;"
                      id="elz29i3knkof8" class="animable"></path>
                <path d="M82.19,262.21c-.16,2.62-1.79,4.89-3.37,7"
                      style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 80.505px 265.71px;"
                      id="el36ubyml5ky6" class="animable"></path>
                <path d="M78.29,282.24a11.13,11.13,0,0,0,7.34,5.2"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 81.96px 284.84px;"
                      id="eld7hbd2p2rek" class="animable"></path>
                <path d="M116.55,283.8s-2.69,4-11.83,4.84"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 110.635px 286.22px;"
                      id="elczvkiz55hji" class="animable"></path>
                </g>
                <g id="freepik--character-2--inject-21" class="animable" style="transform-origin: 402.6px 308.528px;">
                <path
                    d="M384.3,248.75s-34.85,10.8-41.41,2.27l.89-43.51h5.29l6.22,30.65,28.56-5.23S387.51,244.27,384.3,248.75Z"
                    style="fill: rgb(255, 255, 255); transform-origin: 364.254px 230.905px;" id="elrx6bg5zuku"
                    class="animable"></path>
                <g style="clip-path: url(&quot;#freepik--clip-path--inject-21&quot;); transform-origin: 372.312px 249.345px;"
                   id="elf1tvspfe8f" class="animable">
                <path
                    d="M369.62,250.27a30.17,30.17,0,0,0-5.69,3c2.36.75,4.88-.2,7.24-.95a73.39,73.39,0,0,1,9.51-2.24c.15-.89-1-2.92-1.45-3.71-.82-1.38-1-1.5-2.38-.82C374.34,246.81,372.2,249,369.62,250.27Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 372.312px 249.345px;" id="elfnkqy4bbp1g"
                    class="animable"></path>
                </g>
                <path
                    d="M384.3,248.75s-34.85,10.8-41.41,2.27l.89-43.51h5.29l6.22,30.65,28.56-5.23S387.51,244.27,384.3,248.75Z"
                    style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 364.254px 230.905px;"
                    id="el5f7lrtvcxen" class="animable"></path>
                <path
                    d="M380.88,249.89,387,287.57c-.16,24.42,11.49,20.75,19.58,20.68,9.35-.08,23.54-9.35,16.58-23.78l2.68-52.23L409.55,231c-5.37-.42-27.37.27-29.12,3.08C375.89,241.37,380.88,249.89,380.88,249.89Z"
                    style="fill: rgb(255, 255, 255); transform-origin: 402.181px 269.686px;" id="eldndchd9k0ee"
                    class="animable"></path>
                <g style="clip-path: url(&quot;#freepik--clip-path-2--inject-21&quot;); transform-origin: 403.094px 275.786px;"
                   id="elxxpryjxot5n" class="animable">
                <path
                    d="M381.84,253a56.15,56.15,0,0,0,24.39,33.18,16.05,16.05,0,0,1-3.79-1.09,5.6,5.6,0,0,0-3.86-.21,2.48,2.48,0,0,0-1.49,3.18,3.54,3.54,0,0,0,1.16,1.15,26,26,0,0,0,6.45,3.3,16.92,16.92,0,0,0-6,.46c-.36,1.74,1.58,3,3.11,3.85a19.11,19.11,0,0,1,6.12,5.75,146.3,146.3,0,0,0-16.07.92,3.4,3.4,0,0,1-2.1-.2,3.34,3.34,0,0,1-1.3-2.13,54.73,54.73,0,0,1-2.06-12.77c-.1-2.43,0-4.88-.32-7.29a56.78,56.78,0,0,0-1.06-5.65q-2.33-10.82-3.57-21.81C381.08,253.67,381.84,253,381.84,253Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 394.639px 278.286px;" id="elyfvxuuqzcfp"
                    class="animable"></path>
                <path
                    d="M423.15,250a11.52,11.52,0,0,1-3.71-2c.31,1.5,2.55,4.09,3.86,4.89.27.17.66.31.9.08s.4-.82.64-1Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 422.14px 250.545px;" id="ela9dv01a0x6t"
                    class="animable"></path>
                </g>
                <path
                    d="M380.88,249.89,387,287.57c-.16,24.42,11.49,20.75,19.58,20.68,9.35-.08,23.54-9.35,16.58-23.78l2.68-52.23L409.55,231c-5.37-.42-27.37.27-29.12,3.08C375.89,241.37,380.88,249.89,380.88,249.89Z"
                    style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 402.181px 269.686px;"
                    id="el0su6wdk31pn" class="animable"></path>
                <path
                    d="M392.79,230.23a20.09,20.09,0,0,0-2.44,10.49,2.41,2.41,0,0,0,.18.93c.45.89,1.68.89,2.67,1,3.85.49,6.24,4.55,9.87,5.91a1.11,1.11,0,0,0,1.55-.4c1.58-2,2.14-4.81,4.3-6.1.94-.56,2.13-.79,2.78-1.67.74-1,.41-2.44.05-3.66-.59-2-1.25-4.08-2.78-5.47a9.45,9.45,0,0,0-5.7-2,26,26,0,0,0-9,.84C394.31,230.48,392.79,230.23,392.79,230.23Z"
                    style="fill: rgb(255, 193, 0); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 401.238px 238.949px;"
                    id="el6fg1sbizsbx" class="animable"></path>
                <path
                    d="M441.19,255.8a36.9,36.9,0,0,1-5.32-11.7,30.51,30.51,0,0,0-1.82-6.11,11,11,0,0,0-7.89-5.85,4.16,4.16,0,0,0-2.16.1c-1.45.55-2.09,2.22-2.38,3.74a20.26,20.26,0,0,0,.54,9.81c.67,2.16,8.72,17.82,14,23.89C435.7,266.62,439.22,256.39,441.19,255.8Z"
                    style="fill: rgb(255, 255, 255); transform-origin: 431.223px 250.861px;" id="eleg60sz0r5h"
                    class="animable"></path>
                <g style="clip-path: url(&quot;#freepik--clip-path-3--inject-21&quot;); transform-origin: 427.594px 255.04px;"
                   id="ell8f4y5b37" class="animable">
                <path
                    d="M425.4,252.73l4.94,9.31c.71,1.33,1.51,2.75,2.89,3.33a39.69,39.69,0,0,1-1.47-9.44,16.16,16.16,0,0,0-.55-4.76c-.2.17-.41-.55-.41-.55-.22.41-.8.42-1.25.33-3.23-.68-5.45-3.56-7.37-6.24a6.07,6.07,0,0,0,1,5.28S425.24,252.42,425.4,252.73Z"
                    style="fill: rgb(255, 193, 0); transform-origin: 427.594px 255.04px;" id="elljuh5q29af"
                    class="animable"></path>
                </g>
                <path
                    d="M441.19,255.8a36.9,36.9,0,0,1-5.32-11.7,30.51,30.51,0,0,0-1.82-6.11,11,11,0,0,0-7.89-5.85,4.16,4.16,0,0,0-2.16.1c-1.45.55-2.09,2.22-2.38,3.74a20.26,20.26,0,0,0,.54,9.81c.67,2.16,8.72,17.82,14,23.89C435.7,266.62,439.22,256.39,441.19,255.8Z"
                    style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 431.223px 250.861px;"
                    id="ele2onbi13qz" class="animable"></path>
                <path
                    d="M434.25,267c-5.38-10.31-2.78-34.07-2.94-37.89l7.1-.38c.71,0,4,20.26,6.24,28.67,2,7.66.08,15.41-3.46,15.41C438.25,272.81,435.38,269.17,434.25,267Z"
                    style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 438.139px 250.77px;"
                    id="el1tkv8xyzcqy" class="animable"></path>
                <path d="M370.14,240.23c5-7.3,14.81-7.88,14.81-7.88"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 377.545px 236.29px;"
                      id="el5ecp5hc53rv" class="animable"></path>
                <path d="M350.85,244.32a13.88,13.88,0,0,0,3.47-5"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 352.585px 241.82px;"
                      id="eln22yv1q5crp" class="animable"></path>
                <path d="M388,278.82c2.85,4.67,21.31,9.66,28.67,8.59"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 402.335px 283.188px;"
                      id="elvz7ofwbuvsl" class="animable"></path>
                <path d="M393.22,292a38.68,38.68,0,0,0,16-.61"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 401.22px 291.975px;"
                      id="el8qbgqw8htud" class="animable"></path>
                <path d="M417.71,246.69l3.52,4.77c.48.65,1.15,1.38,1.94,1.2"
                      style="fill: none; stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 420.44px 249.689px;"
                      id="elrco153cba7" class="animable"></path>
                <path
                    d="M443.87,427.63c-.31,1.27-.41,2.78.5,3.73s2.23.93,3.46.91l4.23-.08a11.9,11.9,0,0,0,4.79-.75,4,4,0,0,0,2.55-3.81,6.18,6.18,0,0,0-.6-1.82c-.38-.82-.76-1.65-1.13-2.47C453,413.05,445.87,419.31,443.87,427.63Z"
                    style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 451.525px 425.128px;"
                    id="elcagh350s5mq" class="animable"></path>
                <path
                    d="M437.91,415.5a61.61,61.61,0,0,1-1.18,14.08c-.22,1.05,0,2.64,1,2.54a1.61,1.61,0,0,0,1-.57,28.69,28.69,0,0,0,7.61-13.17,4.19,4.19,0,0,0-.11-3.23,4.54,4.54,0,0,0-1-1.06C441.84,411.38,437.6,408.69,437.91,415.5Z"
                    style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 441.632px 421.667px;"
                    id="elcemhlrv2yl7" class="animable"></path>
                <path
                    d="M426.3,294.63s5.27,9.16,6.4,11.29,25,33.5,29.58,56.34c.86,4.34-16.75,52.88-16.75,52.88l-4-2.26s2.78-44.27,2.1-47.95-18.25-30.84-18.25-30.84-9.81-7.21-13.85-15.59Z"
                    style="fill: rgb(38, 50, 56); transform-origin: 436.92px 354.885px;" id="el2trbrk0maoh"
                    class="animable"></path>
                <path
                    d="M426.87,317.58s-3,6.68-3,7.64,16.5,53.1,21.35,65.16q4.6,11.65,8.11,23.84s1.88,2.47.46,5-7.07,4.19-8.23,1.93-12.59-14-17.41-25.68S416.55,364.27,412.69,357a261.79,261.79,0,0,1-13.44-28.71c-4.85-12.41-9.81-25.79-9.81-25.79a49.07,49.07,0,0,0,6.06.17,50.5,50.5,0,0,0,14-2.48c10.54-3.54,15.1-10.32,15.1-10.32s2.61,7.07,3.29,8.44Z"
                    style="fill: rgb(38, 50, 56); transform-origin: 421.88px 356.043px;" id="elsi45enfwjt"
                    class="animable"></path>
                <path d="M460.52,366.73a14.79,14.79,0,0,1-4.08,4.51"
                      style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; transform-origin: 458.48px 368.985px;"
                      id="el9714lp4xopi" class="animable"></path>
                <path d="M461.81,363.82a12.34,12.34,0,0,1-.54,1.43"
                      style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; transform-origin: 461.54px 364.535px;"
                      id="el2d22nhdoe49" class="animable"></path>
                <path d="M417.34,302c2.66,4.58,5.15,11.17,4.75,16.45a11.53,11.53,0,0,1-1,2.76"
                      style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; transform-origin: 419.736px 311.605px;"
                      id="elcwqs4y85clw" class="animable"></path>
                <path d="M401.24,307.09c.29,2.55.68,6.79.12,9.29a9.83,9.83,0,0,1-4.08,6.3"
                      style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; transform-origin: 399.462px 314.885px;"
                      id="eljfzbbzmlto" class="animable"></path>
                <path d="M423.92,297.44a9.5,9.5,0,0,1,1.4,2.39,10,10,0,0,0,6.52,4.94"
                      style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; transform-origin: 427.88px 301.105px;"
                      id="eljmetup2mpn8" class="animable"></path>
                <path d="M415.43,307.66c3.53,7.72,6.23,15.46,11.71,28.58"
                      style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; transform-origin: 421.285px 321.95px;"
                      id="elkls879quqcm" class="animable"></path>
                <path d="M413.55,303.71c.3.6.59,1.2.88,1.8"
                      style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; transform-origin: 413.99px 304.61px;"
                      id="el9xug5bw41u" class="animable"></path>
                <path d="M442.93,362.77a36.67,36.67,0,0,0,6.11,8.52"
                      style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; transform-origin: 445.985px 367.03px;"
                      id="el1iag4qcl4h9" class="animable"></path>
                <path d="M444.6,365.65a41.58,41.58,0,0,0,5.71,13.76"
                      style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; transform-origin: 447.455px 372.53px;"
                      id="el2pk6hc1brpc" class="animable"></path>
                <path d="M419.74,365.9c-7.79-16.62-16.1-33.11-26.31-58.24"
                      style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; transform-origin: 406.585px 336.78px;"
                      id="elxdecicbrrvj" class="animable"></path>
                <path d="M421.5,370.73c-.19-.58-.39-1.16-.6-1.75"
                      style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; transform-origin: 421.2px 369.855px;"
                      id="elwe8vr6e610p" class="animable"></path>
                <path d="M448.43,421.83c-2-2.61-16.58-23-20.2-32.24-2.41-6.16-4.23-10.51-6-16.65"
                      style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; transform-origin: 435.33px 397.385px;"
                      id="ellrfg9vyaytc" class="animable"></path>
                <line x1="442.93" y1="382.59" x2="449.86" y2="402.96"
                      style="fill: none; stroke: rgb(255, 255, 255); stroke-linecap: round; stroke-linejoin: round; transform-origin: 446.395px 392.775px;"
                      id="elvs1q0d71gqk" class="animable"></line>
                <path
                    d="M438.26,228.74l-2.1.17a18.18,18.18,0,0,1-8-.37c-1.67-.41-5.54-1.61-6-1.69a34.51,34.51,0,0,0-3.48-.56c-3.53-.21-1.74-1.53-.27-1.47,1.94.09,2.59.05,4.08.16-.18-.1-.73-.21-.74-.64,0-1.05,1.38-1,1.38-1s-1.51-.64-1.3-1.43,1.22-1,1.86-.94c0,0-.85-.41-.81-.85.18-1.7,3.67-1.82,3.67-1.82a10.44,10.44,0,0,1-2.35-1.45,2.19,2.19,0,0,1-.53-1,1,1,0,0,1,1.44-1,31.45,31.45,0,0,1,2.61,1.94c1.08.77,2.33,1.26,3.47,1.95a10.33,10.33,0,0,1,2.63,3.45C434,222.47,438.26,228.74,438.26,228.74Z"
                    style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 427.444px 221.968px;"
                    id="elc3l65a8auxu" class="animable"></path>
                <path
                    d="M343.78,207.51V202a27.47,27.47,0,0,1,1.2-8.16c.46-1.46,1-2.73,1.49-2.92.91-.33,1.31,3.36,1.31,3.36a55.07,55.07,0,0,1-1.31-9c0-3.21,4.32,10.12,4.32,10.12l-1.72,12.11Z"
                    style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 347.285px 196.146px;"
                    id="eljiw6aclgkdj" class="animable"></path>
                <path d="M349,198.55a3.31,3.31,0,0,0,1.12-1.58"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 349.56px 197.76px;"
                      id="el4qzpcaainv" class="animable"></path>
                <path
                    d="M390.88,219a21.45,21.45,0,0,1,3,10.37c.18,6.08,7.22,14.59,9.23,15s3.87-9.6,3.78-12.63-1.21-11.4-1.21-11.4S396.05,213.06,390.88,219Z"
                    style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 398.887px 230.525px;"
                    id="el3863r8op5ri" class="animable"></path>
                <path d="M393.71,227.05s9.23,12.59,12.85-.21S396.41,230.34,393.71,227.05Z"
                      style="fill: rgb(38, 50, 56); transform-origin: 400.436px 227.221px;" id="el8ldz8zi5tfu"
                      class="animable"></path>
                <path
                    d="M409.29,218c-.49,7.47-3.9,11.67-7.83,12.41-3.59.66-8.84-3-11.46-8.43h0c-.2-.13-3.39-2.34-4.15-2.88a3,3,0,0,1-1.28-2.47,2.33,2.33,0,0,1,1.58-2.08l.09,0a2.38,2.38,0,0,1,1.35.1c-.66-2.55-1.2-5.14-1.61-7.75.19-6,2.18-10.9,8.58-11.38s11.75,3.1,12,5.68c.18,2,.83,7.29,1.41,12.76C408.13,215.38,409.4,216.32,409.29,218Z"
                    style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 396.933px 212.982px;"
                    id="elbupgtvsxny4" class="animable"></path>
                <path d="M406.56,209.36s-4.12-1.89-3.42,4.25c.14,1.21,2.39,3,2.39,3s-.58,1.81-1.65,1.81"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 404.81px 213.753px;"
                      id="elc1jmdf204rt" class="animable"></path>
                <path d="M398.6,211.46s-2.1-1.28-3.54-.49a4.21,4.21,0,0,0-1.84,1.55"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 395.91px 211.616px;"
                      id="ela9wmkjf0kbj" class="animable"></path>
                <path d="M397.4,215c.16.74,0,1.4-.43,1.49s-.85-.45-1-1.19,0-1.4.44-1.49S397.25,214.25,397.4,215Z"
                      style="fill: rgb(38, 50, 56); transform-origin: 396.687px 215.15px;" id="elwj29pmikdld"
                      class="animable"></path>
                <path
                    d="M405.52,212.84c.16.74,0,1.4-.43,1.49s-.85-.45-1-1.18,0-1.41.43-1.49S405.37,212.11,405.52,212.84Z"
                    style="fill: rgb(38, 50, 56); transform-origin: 404.807px 212.996px;" id="eliy0hcm13doa"
                    class="animable"></path>
                <path
                    d="M385.5,199.15a5.28,5.28,0,0,0-1.46,2.63,16.6,16.6,0,0,0,1.53,12.71,6.2,6.2,0,0,1,2,.08c.7.18,1.6,1.38,1.93,2a5.92,5.92,0,0,1,.49,2.09c-.16-1.9-.31-3.79-.47-5.69a6.23,6.23,0,0,1,.1-2.28v0c.49-1.56-.05-5.24.09-8.53,4.15,5.07,10.18,4.17,12.18,4,3-.25,5.56-3.32,5.4-5.51s-.75-7.83-10.64-8.41a10.46,10.46,0,0,0-6.28,1.31,5.12,5.12,0,0,0-2.25,3.54c-.14.92.21,1-.49,1.45S386.19,198.56,385.5,199.15Z"
                    style="fill: rgb(38, 50, 56); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 395.354px 205.421px;"
                    id="ellq52o9rpjv" class="animable"></path>
                <path d="M398.6,221.94s1.47,1.62,4.54.55"
                      style="fill: rgb(255, 255, 255); stroke: rgb(38, 50, 56); stroke-linecap: round; stroke-linejoin: round; transform-origin: 400.87px 222.398px;"
                      id="elqi966q5xn9f" class="animable"></path>
                </g>
                <defs>
                <filter id="active" height="200%">
                    <feMorphology in="SourceAlpha" result="DILATED" operator="dilate" radius="2"></feMorphology>
                    <feFlood flood-color="#32DFEC" flood-opacity="1" result="PINK"></feFlood>
                    <feComposite in="PINK" in2="DILATED" operator="in" result="OUTLINE"></feComposite>
                    <feMerge>
                        <feMergeNode in="OUTLINE"></feMergeNode>
                        <feMergeNode in="SourceGraphic"></feMergeNode>
                    </feMerge>
                </filter>
                <filter id="hover" height="200%">
                    <feMorphology in="SourceAlpha" result="DILATED" operator="dilate" radius="2"></feMorphology>
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
                <clipPath id="freepik--clip-path--inject-21">
                    <path
                        d="M384.3,248.75s-34.85,10.8-41.41,2.27l.89-43.51h5.29l6.22,30.65,28.56-5.23S387.51,244.27,384.3,248.75Z"
                        style="fill:#fff;stroke:#263238;stroke-linecap:round;stroke-linejoin:round"></path>
                </clipPath>
                <clipPath id="freepik--clip-path-2--inject-21">
                    <path
                        d="M380.88,249.89,387,287.57c-.16,24.42,11.49,20.75,19.58,20.68,9.35-.08,23.54-9.35,16.58-23.78l2.68-52.23L409.55,231c-5.37-.42-27.37.27-29.12,3.08C375.89,241.37,380.88,249.89,380.88,249.89Z"
                        style="fill:#fff;stroke:#263238;stroke-linecap:round;stroke-linejoin:round"></path>
                </clipPath>
                <clipPath id="freepik--clip-path-3--inject-21">
                    <path
                        d="M441.19,255.8a36.9,36.9,0,0,1-5.32-11.7,30.51,30.51,0,0,0-1.82-6.11,11,11,0,0,0-7.89-5.85,4.16,4.16,0,0,0-2.16.1c-1.45.55-2.09,2.22-2.38,3.74a20.26,20.26,0,0,0,.54,9.81c.67,2.16,8.72,17.82,14,23.89C435.7,266.62,439.22,256.39,441.19,255.8Z"
                        style="fill:#fff;stroke:#263238;stroke-linecap:round;stroke-linejoin:round"></path>
                </clipPath>
                </defs>
                </svg>
            </div>


            <footer>
                <div class="footerDetalles">
                    <img class="imgFooter" src="img/logo-footer.png" alt="logo-footer">
                    <p class="textFooter">Todos Los Derechos Reservados. Effetrans 2021</p>
                </div>
            </footer>
        </div>

    </body>
</html>
