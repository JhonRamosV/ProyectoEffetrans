/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.BloqueoDAO;
import ModeloVO.BloqueoVO;
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
@WebServlet(name = "BloqueoControlador", urlPatterns = {"/BloqueoControlador"})
public class BloqueoControlador extends HttpServlet {

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
        
        
        String idbloqueo = request.getParameter("txtidbloqueo");
        String idusuario = request.getParameter("txtidusuario");
        String fechainicio = request.getParameter("txtfechainicio");
        String fechafin = request.getParameter("txtfechafin");
        String descripcion = request.getParameter("txtdescripcion");
        String estadoBloqueo = request.getParameter("txtestadoBloqueo");
        
        
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        
        BloqueoVO bloqVO = new BloqueoVO(idbloqueo, idusuario, fechainicio, fechafin, descripcion, estadoBloqueo);
        
        BloqueoDAO bloqDAO = new BloqueoDAO(bloqVO);
        
        
        switch(opcion){
            
            case 1://listar bloqueos
                bloqVO = bloqDAO.consultarBloqueo(idusuario);
                
                if (bloqVO != null) {
                    request.setAttribute("UsuarioConsultado", bloqVO);
                    request.getRequestDispatcher("detallesUsuario.jsp").forward(request, response);
                }else{
                    request.setAttribute("mensajeError", "El Usuario no existe!");
                    request.getRequestDispatcher("ConsultarUsuario.jsp").forward(request, response);
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
