/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.ConfirmacionEnvioVO;
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
public class ConfirmacionEnvioDAO extends Conexion implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;
    private String sql1;

    public ConfirmacionEnvioDAO() {

    }

    private String idconfirmacion_envio = "", idoferta = "", nombre_destinatario = "",
            apellido_destinatario = "", telefono_destinatario = "", fecha_llegada = "",
            fecha_recogido = "", estado = "";

    public ConfirmacionEnvioDAO(ConfirmacionEnvioVO confEnvVO) {
        super();

        try {

            //3. CONECTARSE
            conexion = this.obtenerConexion();
            //4. TRAER AL DAO LOS DATOS DEL VO PARA HACER LAS OPERACIONES
            idconfirmacion_envio = confEnvVO.getIdconfirmacion_envio();
            idoferta = confEnvVO.getIdoferta();
            nombre_destinatario = confEnvVO.getNombre_destinatario();
            apellido_destinatario = confEnvVO.getApellido_destinatario();
            telefono_destinatario = confEnvVO.getTelefono_destinatario();
            fecha_llegada = confEnvVO.getFecha_llegada();
            fecha_recogido = confEnvVO.getFecha_recogido();
            estado = confEnvVO.getEstado();
        } catch (Exception e) {
            Logger.getLogger(ConfirmacionEnvioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean agregarRegistro() {
        try {

            sql = "insert into confirmacion_envio(idoferta, nombre_destinatario, apellido_destinatario, telefono_destinatario, estado) values (?, ?, ?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idoferta);
            puente.setString(2, nombre_destinatario);
            puente.setString(3, apellido_destinatario);
            puente.setString(4, telefono_destinatario);
            puente.setString(5, estado);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(ConfirmacionEnvioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(ConfirmacionEnvioDAO.class.getName()).log(Level.SEVERE, null, e);
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

    public ConfirmacionEnvioVO consultarConfirmacion(String idoferta) {

        ConfirmacionEnvioVO confEnvVO = null;

        try {
            conexion = this.obtenerConexion();
            sql1 = "SELECT IdConfirmacion_Envio, confirmacion_envio.IdOferta, Nombre_Destinatario, Apellido_Destinatario, Telefono_Destinatario, confirmacion_envio.Estado, oferta.Precio\n"
                    + "FROM confirmacion_envio\n"
                    + "INNER JOIN oferta ON confirmacion_envio.IdOferta = oferta.IdOferta\n"
                    + "WHERE confirmacion_envio.IdOferta = ?";
            puente = conexion.prepareStatement(sql1);
            puente.setString(1, idoferta);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                confEnvVO = new ConfirmacionEnvioVO(mensajero.getString(1), mensajero.getString(2),
                        mensajero.getString(3), mensajero.getString(4), mensajero.getString(5),
                        mensajero.getString(6), mensajero.getString(7));
            }

        } catch (Exception e) {
            Logger.getLogger(ConfirmacionEnvioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(ConfirmacionEnvioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return confEnvVO;
    }

    public ConfirmacionEnvioVO consultar() {

        ConfirmacionEnvioVO confEnvVO = null;

        try {
            conexion = this.obtenerConexion();
            sql1 = "select * from confirmacion_envio where idconfirmacion_envio = ?";
            puente = conexion.prepareStatement(sql1);
            puente.setString(1, idconfirmacion_envio);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                confEnvVO = new ConfirmacionEnvioVO(mensajero.getString(1), mensajero.getString(2),
                        mensajero.getString(3), mensajero.getString(4), mensajero.getString(5),
                        mensajero.getString(6), mensajero.getString(7), mensajero.getString(8));
            }

        } catch (Exception e) {
            Logger.getLogger(ConfirmacionEnvioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(ConfirmacionEnvioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return confEnvVO;
    }

    public ArrayList<ConfirmacionEnvioVO> consultarOfertasAceptadas(String usu) {
        ArrayList<ConfirmacionEnvioVO> listaoferta = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();
            sql = "SELECT confirmacion_envio.IdConfirmacion_Envio, oferta.IdOferta, envio.NombreCarga, envio.Comentario_Envio\n"
                    + "FROM confirmacion_envio\n"
                    + "INNER JOIN oferta ON oferta.IdOferta = confirmacion_envio.IdOferta\n"
                    + "INNER JOIN envio ON envio.IdEnvio = oferta.IdEnvio\n"
                    + "INNER JOIN vehiculo ON vehiculo.IdVehiculo = oferta.IdVehiculo\n"
                    + "INNER JOIN usuario ON usuario.IdUsuario = vehiculo.IdUsuario\n"
                    + "WHERE usuario.IdUsuario = 11";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, usu);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                ConfirmacionEnvioVO confEnvVO = new ConfirmacionEnvioVO(mensajero.getString(1), mensajero.getString(2),
                        mensajero.getString(3), mensajero.getString(4));

                listaoferta.add(confEnvVO);
            }

        } catch (Exception e) {
            Logger.getLogger(ConfirmacionEnvioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(ConfirmacionEnvioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return listaoferta;
    }

}
