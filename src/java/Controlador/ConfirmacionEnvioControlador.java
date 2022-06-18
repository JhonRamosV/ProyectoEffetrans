/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.ConfirmacionEnvioDAO;
import ModeloDAO.OfertaDAO;
import ModeloDAO.PagoDAO;
import ModeloVO.ConfirmacionEnvioVO;
import ModeloVO.OfertaVO;
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
@WebServlet(name = "ConfirmacionEnvioControlador", urlPatterns = {"/ConfirmacionEnvio"})
public class ConfirmacionEnvioControlador extends HttpServlet {

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
        
        String idconfirmacion_envio = request.getParameter("txtidconfirmacion_envio");
        String idoferta = request.getParameter("txtidoferta");
        String nombre_destinatario = request.getParameter("txtnombre_destinatario");
        String apellido_destinatario = request.getParameter("txtapellido_destinatario");
        String telefono_destinatario = request.getParameter("txttelefono_destinatario");
        String fecha_llegada = request.getParameter("txtfecha_llegada");
        String fecha_recogido = request.getParameter("txtfecha_recogido");
        String estado = request.getParameter("txtestado");
        
        //Pago
        String idpago = request.getParameter("txtidpago");
        //confirmacion de envio se encuentra arriba
        String fecha_confirmacion_pago = request.getParameter("txtfecha_confirmacion_pago");
        String estado_pago = request.getParameter("txtestado_pago");
        String valor = request.getParameter("txtvalor");
        
        
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        
        ConfirmacionEnvioVO confEnvVO = new ConfirmacionEnvioVO(idconfirmacion_envio, idoferta, nombre_destinatario, apellido_destinatario, telefono_destinatario, fecha_llegada, fecha_recogido, estado);
        OfertaVO oftVO = new OfertaVO(idoferta);
        ConfirmacionEnvioVO confEnvVO1 = new ConfirmacionEnvioVO(idconfirmacion_envio, idoferta, nombre_destinatario, apellido_destinatario, telefono_destinatario, estado, valor);
        
        
        ConfirmacionEnvioDAO confEnvDAO = new ConfirmacionEnvioDAO(confEnvVO);
        ConfirmacionEnvioDAO confEnvDAO1 = new ConfirmacionEnvioDAO(confEnvVO1);
        OfertaDAO oftDAO = new OfertaDAO(oftVO);
        
        
        switch(opcion){
            
            case 1://agregar confirmacion
                if (confEnvDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "La confirmación se registro correctamente");
                } else {
                    request.setAttribute("mensajeError", "La confirmación no se registro correctamente");
                }
                
                
                confEnvVO1 = confEnvDAO1.consultarConfirmacion(idoferta);
                
                if (confEnvVO1 != null) {
                    request.setAttribute("ConfirmacionConsultada", confEnvVO1);
                    request.getRequestDispatcher("confirmarOferta.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "La confirmación no se registro correctamente");
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
