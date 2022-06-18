/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.EnvioDAO;
import ModeloVO.EnvioVO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sena
 */
@WebServlet(name = "EnvioControlador", urlPatterns = {"/Envio"})
public class EnvioControlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String idenvio = request.getParameter("txtidenvio");
        String idusuario = request.getParameter("txtidusuario");
        String idtipo_carga = request.getParameter("txtidtipo_carga");
        String nombrecarga = request.getParameter("txtnombrecarga");
        String peso = request.getParameter("txtpeso");
        String cantidad = request.getParameter("txtcantidad");
        String longitud = request.getParameter("txtlongitud");
        String fecha_registro = request.getParameter("txtfecha_registro");
        String direccion = request.getParameter("txtdireccion");
        String iddepartamento = request.getParameter("txtiddepartamento");
        String idciudad = request.getParameter("txtidciudad");
        String codigo_postal = request.getParameter("txtcodigo_postal");
        String fecha_limite_llegada = request.getParameter("txtfecha_limite_llegada");
        String comentario_envio = request.getParameter("txtcomentario_envio");
        String estado = request.getParameter("txtestado");

        int opcion = Integer.parseInt(request.getParameter("opcion"));

        EnvioVO envVO = new EnvioVO(idenvio, idusuario, idtipo_carga, nombrecarga, peso,
                cantidad, longitud, fecha_registro, direccion, iddepartamento, idciudad,
                codigo_postal, fecha_limite_llegada, comentario_envio, estado);

        EnvioDAO envDAO = new EnvioDAO(envVO);

        switch (opcion) {

            case 1://agregar envio
                if (envDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El envío se registro correctamente");
                } else {
                    request.setAttribute("mensajeError", "El envío no se registro correctamente");
                }
                request.getRequestDispatcher("indexCliente.jsp").forward(request, response);
                break;

            case 2://Consultar envios activos por id

                envVO = envDAO.consultarEnvio(idenvio);

                if (envVO != null) {
                    request.setAttribute("EnvioConsultado", envVO);
                    request.getRequestDispatcher("detallesEnvio.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "El Usuario no existe!");
                    request.getRequestDispatcher("ConsultarEnvio.jsp").forward(request, response);
                }
                break;
                
                
            case 3:
                
                if (envDAO.InactivarEnvio()) {
                    request.setAttribute("mensajeExito", "El usuario se inactivo correctamente");
                    request.getRequestDispatcher("Envios.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "El usuario no se inactivo correctamente");
                }
                
            
            case 4:
                
                if (envDAO.ActivarEnvio()) {
                    request.setAttribute("mensajeExito", "El usuario se inactivo correctamente");
                    request.getRequestDispatcher("Envios.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "El usuario no se inactivo correctamente");
                }
                
                
            case 5://Consultar envios activos por id

                envVO = envDAO.consultarEnvio(idenvio);

                if (envVO != null) {
                    request.setAttribute("EnvioConsultado1", envVO);
                    request.getRequestDispatcher("detalleEnvioConductor.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "El Usuario no existe!");
                    request.getRequestDispatcher("ConsultarEnvio.jsp").forward(request, response);
                }
                break;
                

        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
