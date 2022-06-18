package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ModeloVO.MarcaVO;
import ModeloDAO.MarcaDAO;
import ModeloVO.TipoVehiculoVO;
import ModeloDAO.TipoVehiculoDAO;
import ModeloVO.UsuarioVO;

public final class registrarVehiculo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Sesiones.jsp");
  }

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");


    HttpSession buscarSesion = (HttpSession) request.getSession();
    String usuario = "";
    String idusuario = "";
    String doc = "";

    if (buscarSesion.getAttribute("DatosUsuario") == null) {
        request.getRequestDispatcher("iniciarSesion.jsp").forward(request, response);
    } else {
        UsuarioVO usuarioVO = (UsuarioVO) buscarSesion.getAttribute("DatosUsuario");
        usuario = usuarioVO.getNombre();
        idusuario = usuarioVO.getIdusuario();
        doc = usuarioVO.getDocumento();
    }


      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">\n");
      out.write("        <title>Effetrans</title>\n");
      out.write("        <!-- Favicon icon -->\n");
      out.write("        <link rel=\"icon\" type=\"image/png\" sizes=\"16x16\" href=\"./images/logo-effetrans.png\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"./vendor/chartist/css/chartist.min.css\">\n");
      out.write("        <link href=\"./vendor/bootstrap-select/dist/css/bootstrap-select.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"./vendor/owl-carousel/owl.carousel.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"./css/style.css\" rel=\"stylesheet\">\n");
      out.write("        <link\n");
      out.write("            href=\"https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto:wght@100;300;400;500;700;900&display=swap\"\n");
      out.write("            rel=\"stylesheet\">\n");
      out.write("        <!-- Datatable -->\n");
      out.write("        <link href=\"./vendor/datatables/css/jquery.dataTables.min.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Registrar Vehiculo</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <center>\n");
      out.write("        <h1>Registrar Vehiculo</h1>\n");
      out.write("        <form  method=\"post\"  action=\"Vehiculo\">   \n");
      out.write("            <table>\n");
      out.write("                <tr>\n");
      out.write("                <input type=\"hidden\" value=\"");
      out.print(idusuario);
      out.write("\" name=\"txtidusuario\">\n");
      out.write("                 Licensia<br>\n");
      out.write("                 <input type=\"text\" name=\"txtlicensia\"><br>\n");
      out.write("                 TipoVehiculo<br>\n");
      out.write("                   <select name=\"txtidtipo_vehiculo\">\n");
      out.write("                    <option>Seleccione...</option>\n");
      out.write("                    ");

                       TipoVehiculoDAO tipovehiculoDAO = new TipoVehiculoDAO();

                        for (TipoVehiculoVO tipovehiculoVO : tipovehiculoDAO.listar()) {

                    
      out.write("\n");
      out.write("                    <option value=\"");
      out.print(tipovehiculoVO.getIdtipo_vehiculo());
      out.write('"');
      out.write('>');
      out.print(tipovehiculoVO.getNombre());
      out.write("</option>\n");
      out.write("                    ");
}
      out.write("        \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </select>\n");
      out.write("                    <br>\n");
      out.write("                  Marca<br>\n");
      out.write("                   <select name=\"txtidmarca\">\n");
      out.write("                    <option>Seleccione...</option>\n");
      out.write("                    ");

                       MarcaDAO marcaDAO = new MarcaDAO();

                        for (MarcaVO marcaVO : marcaDAO.listar()) {

                    
      out.write("\n");
      out.write("                    <option value=\"");
      out.print(marcaVO.getIdmarca());
      out.write('"');
      out.write('>');
      out.print(marcaVO.getNombre());
      out.write("</option>\n");
      out.write("                    ");
}
      out.write("        \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </select>\n");
      out.write("                    <br>\n");
      out.write("                  Placa<br>\n");
      out.write("                  <input type=\"text\" name=\"txtplaca\"><br>\n");
      out.write("                  Modelo<br>\n");
      out.write("                  <input type=\"text\" name=\"txtmodelo\"><br>\n");
      out.write("                  <br>\n");
      out.write("                 <input type=\"hidden\" value =\"1\" name=\"txtestado\">\n");
      out.write("                 \n");
      out.write("                </tr>\n");
      out.write("            </table><br>\n");
      out.write("            \n");
      out.write("            <button>Registrar</button>\n");
      out.write("            <input type=\"hidden\" value=\"1\" name=\"opcion\">\n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("        <div style=\"color:red\">\n");
      out.write("\n");
      out.write("            ");

                if (request.getAttribute("mensajeError") != null) {
      out.write("\n");
      out.write("            ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${mensajeError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
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
      out.write("        \n");
      out.write("    </center>\n");
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
