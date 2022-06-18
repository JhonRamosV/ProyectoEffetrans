/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.VehiculoDAO;
import ModeloVO.VehiculoVO;
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
@WebServlet(name = "VehiculoControlador", urlPatterns = {"/Vehiculo"})
public class VehiculoControlador extends HttpServlet {

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
        
        String idvehiculo = request.getParameter("txtidvehiculo");
        String idusuario = request.getParameter("txtidusuario");
        String licensia = request.getParameter("txtlicensia");
        String idtipo_vehiculo = request.getParameter("txtidtipo_vehiculo");
        String idmarca = request.getParameter("txtidmarca");
        String placa = request.getParameter("txtplaca");
        String modelo = request.getParameter("txtmodelo");
        String estado = request.getParameter("txtestado");
        
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        
        VehiculoVO vehVo = new VehiculoVO(idvehiculo, idusuario, licensia, idtipo_vehiculo, idmarca, placa, modelo, estado);
        VehiculoDAO vehDAO = new VehiculoDAO(vehVo);
        
        
        switch(opcion){
            
            case 1: //Agregar Registro
                if (vehDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El vehiculo se registro correctamente");
                } else {
                    request.setAttribute("mensajeError", "El vehiculo no se registro correctamente");
                }
                request.getRequestDispatcher("indexConductor.jsp").forward(request, response);
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
