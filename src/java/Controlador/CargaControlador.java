/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.CargaDAO;
import ModeloVO.CargaVO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pablo
 */
@WebServlet(name = "CargaControlador", urlPatterns = {"/Carga"})
public class CargaControlador extends HttpServlet {

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
        
        String idcarga = request.getParameter("txtidcarga");
        String idenvio = request.getParameter("txtidenvio");
        String idtipo_carga = request.getParameter("txtidtipo_carga");
        String peso = request.getParameter("txtpeso");
        String cantidad = request.getParameter("txtcantidad");
        String longitud = request.getParameter("txtlongitud");
        String descripcion = request.getParameter("txtdescripcion");
        
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        
        CargaVO cargaVO = new CargaVO(idcarga, idenvio, idtipo_carga, peso, cantidad, longitud, descripcion);
        
        CargaDAO cargaDAO = new CargaDAO(cargaVO);
        
        switch(opcion){
            
            case 1://agregar registro

                if (cargaDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El envio se registro correctamente");
                } else {
                    request.setAttribute("mensajeError", "El envio no se registro correctamente");
                }
                request.getRequestDispatcher("registrarEnvio.jsp").forward(request, response);
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
