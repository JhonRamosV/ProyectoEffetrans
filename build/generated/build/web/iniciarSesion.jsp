<%-- 
    Document   : iniciarSesion
    Created on : 23/04/2022, 12:32:14 PM
    Author     : Pablo
--%>

<%@page import="ModeloVO.TipoUsuarioVO"%>
<%@page import="ModeloDAO.TipoUsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="menu.css" rel="stylesheet" type="text/css">
        <link href="inicioSesion.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>

        <main>
            <div class="contenedor">
                <div class="caja">
                    <!-- Caja trasera login -->
                    <div class="caja_login">
                        <img class="imglogois" src="img/logo-final.png" alt="">
                        <h3>¿Ya tienes cuenta?</h3>
                        <p>Inicia sesión para entrar en la página</p>
                        <button id="iniciar_sesion">Iniciar Sesión</button>
                    </div>

                    <!-- Caja trasera Registrarse -->
                    <div class="caja_registrarse">
                        <img class="imglogois" src="img/logo-final.png" alt="">
                        <h3>¿Aún no tienes cuenta?</h3>
                        <p>Registrate para que puedas iniciar sesión</p>
                        <button id="registrar">Registrarse</button>
                    </div>
                </div>

                <div class="formularios">
                    <!-- Formulario de login -->
                    <form class="login" action="Usuario" method="post">
                        <h2>Iniciar Sesión</h2>
                        <input class="input" type="text" name="txtcorreo" placeholder="Correo Electrónico" required>
                        <input class="input" type="password" name="txtcontrasena" placeholder="Contraseña" required>
                        <div class="aContraseña">
                            <a href="">¿Olvidó su contraseña?</a>
                        </div>
                        <div class="chboxTerminos">
                            <input type="checkbox" id="aceptTerminos" required>
                            <label for="aceptTerminos">Aceptar <a class="aChbox">Términos y
                                    condiciones</a></label>
                        </div>
                        <button>Ingresar</button>
                        <input type="hidden" value="3" name="opcion">
                    </form>


                    <!-- Formulario Registrarse -->
                    <form class="registrarse" action="Usuario" method="post">

                        <h2>Registrarse</h2>
                        <select class="input selectin" name="txtidtipo_usuario">
                            <option>Seleccione el Tipo de Usuario</option>
                            <%
                                TipoUsuarioDAO tipousuarioDAO = new TipoUsuarioDAO();

                                for (TipoUsuarioVO tipousuarioVO : tipousuarioDAO.listar()) {
                            %>
                            <option value="<%=tipousuarioVO.getIdtipo_usuario()%>"><%=tipousuarioVO.getNombre()%></option>
                            <%}%>
                        </select>
                        <input class="input" type="text" name="txtcorreo" placeholder="Correo Electrónico">
                        <input class="input" type="password" name="txtcontrasena"  placeholder="Contraseña">
                        <input class="input1" type="text" name="txtnombre" placeholder="Nombre">
                        <input class="input2" type="text" name="txtapellido" placeholder="Apellido">
                        <input class="input1" type="text" name="txtdocumento" placeholder="Documento">
                        <input class="input2" type="text" name="txttelefono" placeholder="Teléfono">
                        <input class="input" type="text" name="txtdireccion" placeholder="Dirección">
                        <input type="hidden" value="1" name="txtestado"><br>
                        <button>Registrarse</button>
                        <input type="hidden" value="1" name="opcion">
                    </form>
                </div>
            </div>


        </main>

        <script src="JS1/inicioSesion.js"></script>

        <div style="color:red">

            <%

                if (request.getParameter("mensajeError") != null) {%>
            ${mensajeError}


            <%} else {%>
            ${mensajeExito}

            <%}%>



        </div>
    </body>
</html>
