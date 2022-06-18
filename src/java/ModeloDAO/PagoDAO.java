/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.PagoVO;
import Util.Conexion;
import Util.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Pablo
 */
public class PagoDAO extends Conexion implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    public PagoDAO() {

    }

    private String idpago = "", idconfirmacion_envio = "", fecha_confirmacion_pago = "",
            estado_pago = "", valor = "";

    public PagoDAO(PagoVO pagoVO) {
        super();

        try {

            //3. CONECTARSE
            conexion = this.obtenerConexion();
            //4. TRAER AL DAO LOS DATOS DEL VO PARA HACER LAS OPERACIONES
            idpago = pagoVO.getIdpago();
            idconfirmacion_envio = pagoVO.getIdconfirmacion_envio();
            fecha_confirmacion_pago = pagoVO.getFecha_confirmacion_pago();
            estado_pago = pagoVO.getEstado_pago();
            valor = pagoVO.getValor();
        } catch (Exception e) {
            Logger.getLogger(PagoDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean agregarRegistro() {
        try {

            sql = "insert into pago(idconfirmacion_envio, estado_pago, valor) values (?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idconfirmacion_envio);
            puente.setString(2, estado_pago);
            puente.setString(3, valor);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(PagoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(PagoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return operacion;
    }

    @Override
    public boolean actualizarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public ArrayList<PagoVO> listarPagos(String usu) {
        ArrayList<PagoVO> listaPagos = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();
            sql = "SELECT pago.IdPago, envio.NombreCarga, tipo_pago.Nombre, oferta.Fecha_Disponibilidad, envio.Direccion, ciudad.Nombre, pago.Valor, pago.Estado_Pago, pago.IdConfirmacion_Envio\n"
                    + "FROM usuario\n"
                    + "    INNER JOIN envio ON usuario.IdUsuario = envio.IdUsuario\n"
                    + "    INNER JOIN oferta ON oferta.IdEnvio = envio.IdEnvio\n"
                    + "    INNER JOIN vehiculo ON oferta.IdVehiculo = vehiculo.IdVehiculo\n"
                    + "    INNER JOIN tipo_pago ON oferta.IdTipo_Pago = tipo_pago.IdTipo_Pago\n"
                    + "    INNER JOIN confirmacion_envio ON oferta.IdOferta = confirmacion_envio.IdOferta\n"
                    + "    INNER JOIN pago ON pago.IdConfirmacion_Envio = confirmacion_envio.IdConfirmacion_Envio\n"
                    + "    INNER JOIN ciudad ON envio.IdCiudad = ciudad.IdCiudad\n"
                    + "    WHERE usuario.IdUsuario = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, usu);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                PagoVO pagoVO = new PagoVO(mensajero.getString(1), mensajero.getString(2), 
                        mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), 
                        mensajero.getString(6), mensajero.getString(7), mensajero.getString(8),
                        mensajero.getString(9));

                listaPagos.add(pagoVO);
            }

        } catch (Exception e) {
            Logger.getLogger(PagoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(PagoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return listaPagos;
    }
    
    
    public boolean Pagar(){
        try {
            sql = "update pago set estado_pago = 0  where idpago = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idpago);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(PagoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(PagoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return operacion;
    }
}
