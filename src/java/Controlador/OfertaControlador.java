/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import ModeloDAO.OfertaDAO;
import ModeloDAO.VehiculoDAO;
import ModeloVO.OfertaVO;
import ModeloVO.VehiculoVO;
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
 * @author Pablo
 */
@WebServlet(name = "OfertaControlador", urlPatterns = {"/Oferta"})
public class OfertaControlador extends HttpServlet {

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
        
        String idoferta = request.getParameter("txtidoferta");
        String idenvio = request.getParameter("txtidenvio");
        String idvehiculo = request.getParameter("txtidvehiculo");
        String idtipo_pago = request.getParameter("txtidtipo_pago");
        String precio = request.getParameter("txtprecio");
        String fecha_disponibilidad = request.getParameter("txtfecha_disponibilidad");
        String estado = request.getParameter("txtestado");
        String idusuario = request.getParameter("txtidusuario");
                
        
        int opcion = Integer.parseInt(request.getParameter("opcion"));
        
        OfertaVO oftVO = new OfertaVO(idoferta, idenvio, idvehiculo, idtipo_pago, precio, fecha_disponibilidad, estado);
        
        
        OfertaDAO oftDAO = new OfertaDAO(oftVO);

        
        switch (opcion) {
            
            case 1://agregar oferta
                if (oftDAO.agregarRegistro()) {
                    request.setAttribute("mensajeExito", "La oferta se registro correctamente");
                } else {
                    request.setAttribute("mensajeError", "La oferta no se registro correctamente");
                }
                request.getRequestDispatcher("ConsultarEnvios.jsp").forward(request, response);
                break;
                
            case 2:
                
                ArrayList<OfertaVO> ofert = oftDAO.listarOferta(idenvio);
                int tamLista = ofert.size();

                if (tamLista != 0) {
                    request.setAttribute("OfertaConsultada", ofert);
                    request.getRequestDispatcher("ofertas.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "Aún no hay ofertas");
                    request.getRequestDispatcher("ConsutarEnviosCliente.jsp").forward(request, response);
                }
                break;
                
            case 3:
                
                oftVO = oftDAO.consultarOferta(idoferta);

                if (oftVO != null) {
                    request.setAttribute("ConsultaOferta", oftVO);
                    request.getRequestDispatcher("detallesOferta.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "La oferta no existe!");
                    request.getRequestDispatcher("ofertas.jsp").forward(request, response);
                }
                break;
                
                
            case 4:
                
                if (oftDAO.InactivarOferta()) {
                    request.setAttribute("mensajeExito", "El usuario se inactivo correctamente");
                    request.getRequestDispatcher("administradorOferta.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "El usuario no se inactivo correctamente");
                }
                break;
                
            case 5:
                
                if (oftDAO.ActivarOferta()) {
                    request.setAttribute("mensajeExito", "El usuario se activo correctamente");
                    request.getRequestDispatcher("administradorOferta.jsp").forward(request, response);
                } else {
                    request.setAttribute("mensajeError", "El usuario no se inactivo correctamente");
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
