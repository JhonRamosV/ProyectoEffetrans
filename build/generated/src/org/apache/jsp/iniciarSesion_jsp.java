package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ModeloVO.TipoUsuarioVO;
import ModeloDAO.TipoUsuarioDAO;

public final class iniciarSesion_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"menu.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"inicioSesion.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <main>\n");
      out.write("            <div class=\"contenedor\">\n");
      out.write("                <div class=\"caja\">\n");
      out.write("                    <!-- Caja trasera login -->\n");
      out.write("                    <div class=\"caja_login\">\n");
      out.write("                        <img class=\"imglogois\" src=\"img/logo-final.png\" alt=\"\">\n");
      out.write("                        <h3>¿Ya tienes cuenta?</h3>\n");
      out.write("                        <p>Inicia sesión para entrar en la página</p>\n");
      out.write("                        <button id=\"iniciar_sesion\">Iniciar Sesión</button>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <!-- Caja trasera Registrarse -->\n");
      out.write("                    <div class=\"caja_registrarse\">\n");
      out.write("                        <img class=\"imglogois\" src=\"img/logo-final.png\" alt=\"\">\n");
      out.write("                        <h3>¿Aún no tienes cuenta?</h3>\n");
      out.write("                        <p>Registrate para que puedas iniciar sesión</p>\n");
      out.write("                        <button id=\"registrar\">Registrarse</button>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"formularios\">\n");
      out.write("                    <!-- Formulario de login -->\n");
      out.write("                    <form class=\"login\" action=\"Usuario\" method=\"post\">\n");
      out.write("                        <h2>Iniciar Sesión</h2>\n");
      out.write("                        <input class=\"input\" type=\"text\" name=\"txtcorreo\" placeholder=\"Correo Electrónico\" required>\n");
      out.write("                        <input class=\"input\" type=\"password\" name=\"txtcontrasena\" placeholder=\"Contraseña\" required>\n");
      out.write("                        <div class=\"aContraseña\">\n");
      out.write("                            <a href=\"\">¿Olvidó su contraseña?</a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"chboxTerminos\">\n");
      out.write("                            <input type=\"checkbox\" id=\"aceptTerminos\" required>\n");
      out.write("                            <label for=\"aceptTerminos\">Aceptar <a class=\"aChbox\">Términos y\n");
      out.write("                                    condiciones</a></label>\n");
      out.write("                        </div>\n");
      out.write("                        <button>Ingresar</button>\n");
      out.write("                        <input type=\"hidden\" value=\"3\" name=\"opcion\">\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <!-- Formulario Registrarse -->\n");
      out.write("                    <form class=\"registrarse\" action=\"Usuario\" method=\"post\">\n");
      out.write("\n");
      out.write("                        <h2>Registrarse</h2>\n");
      out.write("                        <select class=\"input selectin\" name=\"txtidtipo_usuario\">\n");
      out.write("                            <option>Seleccione el Tipo de Usuario</option>\n");
      out.write("                            ");

                                TipoUsuarioDAO tipousuarioDAO = new TipoUsuarioDAO();

                                for (TipoUsuarioVO tipousuarioVO : tipousuarioDAO.listar()) {
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(tipousuarioVO.getIdtipo_usuario());
      out.write('"');
      out.write('>');
      out.print(tipousuarioVO.getNombre());
      out.write("</option>\n");
      out.write("                            ");
}
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                        <input class=\"input\" type=\"text\" name=\"txtcorreo\" placeholder=\"Correo Electrónico\">\n");
      out.write("                        <input class=\"input\" type=\"password\" name=\"txtcontrasena\"  placeholder=\"Contraseña\">\n");
      out.write("                        <input class=\"input1\" type=\"text\" name=\"txtnombre\" placeholder=\"Nombre\">\n");
      out.write("                        <input class=\"input2\" type=\"text\" name=\"txtapellido\" placeholder=\"Apellido\">\n");
      out.write("                        <input class=\"input1\" type=\"text\" name=\"txtdocumento\" placeholder=\"Documento\">\n");
      out.write("                        <input class=\"input2\" type=\"text\" name=\"txttelefono\" placeholder=\"Teléfono\">\n");
      out.write("                        <input class=\"input\" type=\"text\" name=\"txtdireccion\" placeholder=\"Dirección\">\n");
      out.write("                        <input type=\"hidden\" value=\"1\" name=\"txtestado\"><br>\n");
      out.write("                        <button>Registrarse</button>\n");
      out.write("                        <input type=\"hidden\" value=\"1\" name=\"opcion\">\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </main>\n");
      out.write("\n");
      out.write("        <script src=\"JS1/inicioSesion.js\"></script>\n");
      out.write("\n");
      out.write("        <div style=\"color:red\">\n");
      out.write("\n");
      out.write("            ");


                if (request.getParameter("mensajeError") != null) {
      out.write("\n");
      out.write("            ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            ");
} else {
      out.write("\n");
      out.write("            ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeExito}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("\n");
      out.write("            ");
}
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
