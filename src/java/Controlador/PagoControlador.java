/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.PagoDAO;
import ModeloVO.PagoVO;
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
@WebServlet(name = "PagoControlador", urlPatterns = {"/Pago"})
public class PagoControlador extends HttpServlet {

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

        String idpago = request.getParameter("txtidpago");
        String idconfirmacion_envio = request.getParameter("txtidconfirmacion_envio");
        String fecha_confirmacion_pago = request.getParameter("txtfecha_confirmacion_pago");
        String estado_pago = request.getParameter("txtestado_pago");
        String valor = request.getParameter("txtvalor");

        int opcion = Integer.parseInt(request.getParameter("opcion"));

        PagoVO pagoVO = new PagoVO(idpago, idconfirmacion_envio, fecha_confirmacion_pago, estado_pago, valor);

        PagoDAO pagoDAO = new PagoDAO(pagoVO);

        switch (opcion) {

            case 1://agregar confirmacion
                if (pagoDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "El pago se registro correctamente");
                } else {
                    request.setAttribute("mensajeError", "El pago no se registro correctamente");
                }
                request.getRequestDispatcher("ConsultarPagos.jsp").forward(request, response);
                break;

            case 2://inactivar usuario

                if (pagoDAO.Pagar()) {
                    request.setAttribute("mensajeExito", "");
                    request.getRequestDispatcher("pagos.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "");
                    request.getRequestDispatcher("ConsultarPagos.jsp").forward(request, response);
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
