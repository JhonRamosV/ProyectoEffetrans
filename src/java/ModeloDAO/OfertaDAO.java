/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.OfertaVO;
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
public class OfertaDAO extends Conexion implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    public OfertaDAO() {

    }

    private String idoferta = "", usunombre = "", usuapellido = "", usutelefono = "", usucorreo = "",  marca = "", idvehiculo = "", 
            tipoveh = "", vehplaca = "", tipocarga = "", idenvio = "", envpeso = "", envcantidad = "", envlongitud = "", envdireccion = "", 
            deptnombre = "", ciudnombre = "", envcodpostal = "", envfechalimllegada = "", envcomentario,precio = "", fecha_disponibilidad = "", 
            idtipo_pago = "", estado = "", nombreusuario = "", idusuario = "";

    public OfertaDAO(OfertaVO oftVO) {
        super();

        try {

            //3. CONECTARSE
            conexion = this.obtenerConexion();
            //4. TRAER AL DAO LOS DATOS DEL VO PARA HACER LAS OPERACIONES
            idoferta = oftVO.getIdoferta();
            idenvio = oftVO.getIdenvio();
            idvehiculo = oftVO.getIdvehiculo();
            idtipo_pago = oftVO.getIdtipo_pago();
            precio = oftVO.getPrecio();
            fecha_disponibilidad = oftVO.getFecha_disponibilidad();
            estado = oftVO.getEstado();
        } catch (Exception e) {
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean agregarRegistro() {
        try {

            sql = "insert into oferta(idenvio, idvehiculo, idtipo_pago, precio, fecha_disponibilidad, estado) values (?, ?, ?, ?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idenvio);
            puente.setString(2, idvehiculo);
            puente.setString(3, idtipo_pago);
            puente.setString(4, precio);
            puente.setString(5, fecha_disponibilidad);
            puente.setString(6, estado);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, e);
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

    public ArrayList<OfertaVO> listarOferta(String idenvio) {
        OfertaVO oftVO = null;
        ArrayList<OfertaVO> listaOferta = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();
            sql = "SELECT oferta.IdOferta, envio.NombreCarga, CONCAT(usuario.Nombre, ' ', usuario.Apellido), tipo_vehiculo.Nombre, marca.Nombre, tipo_pago.Nombre, oferta.Precio, oferta.Fecha_Disponibilidad, usuario.IdUsuario, oferta.estado\n"
                    + "FROM oferta\n"
                    + "INNER JOIN envio ON oferta.IdEnvio = envio.IdEnvio\n"
                    + "INNER JOIN tipo_pago ON oferta.IdTipo_Pago = tipo_pago.IdTipo_Pago\n"
                    + "INNER JOIN vehiculo ON oferta.IdVehiculo = vehiculo.IdVehiculo\n"
                    + "INNER JOIN marca ON vehiculo.IdMarca = marca.IdMarca\n"
                    + "INNER JOIN tipo_vehiculo ON vehiculo.IdTipo_Vehiculo = tipo_vehiculo.IdTipo_Vehiculo\n"
                    + "INNER JOIN usuario ON vehiculo.IdUsuario = usuario.IdUsuario\n"
                    + "WHERE oferta.IdEnvio = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idenvio);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                oftVO = new OfertaVO(mensajero.getString(1), mensajero.getString(2), 
                        mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), 
                        mensajero.getString(6), mensajero.getString(7), mensajero.getString(8),
                        mensajero.getString(9), mensajero.getString(10));
                
                listaOferta.add(oftVO);
            }

        } catch (Exception e) {
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return listaOferta;
    }
    
    
    public OfertaVO consultarOferta(String idoferta) {
        OfertaVO oftVO = null;

        try {
            conexion = this.obtenerConexion();
            sql = "SELECT oferta.IdOferta, usuario.Nombre, usuario.Apellido,usuario.Telefono, usuario.Correo, marca.Nombre, "
                    + "vehiculo.Modelo, tipo_vehiculo.Nombre, vehiculo.Placa, tipo_carga.Nombre, envio.NombreCarga, envio.Peso, "
                    + "envio.Cantidad, envio.Longitud, envio.Direccion, departamento.Nombre, ciudad.Nombre, envio.Codigo_Postal, "
                    + "envio.Fecha_Limite_Llegada, envio.Comentario_Envio, oferta.Precio, oferta.Fecha_Disponibilidad, "
                    + "tipo_pago.Nombre, oferta.Estado \n" +
"                    FROM oferta\n" +
"                    INNER JOIN envio ON oferta.IdEnvio = envio.IdEnvio\n" +
"                    INNER JOIN tipo_pago ON oferta.IdTipo_Pago = tipo_pago.IdTipo_Pago\n" +
"                    INNER JOIN vehiculo ON oferta.IdVehiculo = vehiculo.IdVehiculo\n" +
"                    INNER JOIN marca ON vehiculo.IdMarca = marca.IdMarca\n" +
"                    INNER JOIN tipo_vehiculo ON vehiculo.IdTipo_Vehiculo = tipo_vehiculo.IdTipo_Vehiculo\n" +
"                    INNER JOIN usuario ON vehiculo.IdUsuario = usuario.IdUsuario\n" +
"                    INNER JOIN departamento ON envio.IdDepartamento = departamento.IdDepartamento\n" +
"                    INNER JOIN ciudad ON envio.IdCiudad = ciudad.IdCiudad\n" +
"                    INNER JOIN tipo_carga ON envio.IdTipo_Carga = tipo_carga.IdTipo_Carga\n" +
"                    WHERE idoferta = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idoferta);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                oftVO = new OfertaVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), 
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7), 
                        mensajero.getString(8), mensajero.getString(9), mensajero.getString(10), mensajero.getString(11), 
                        mensajero.getString(12), mensajero.getString(13), mensajero.getString(14), mensajero.getString(15), 
                        mensajero.getString(16), mensajero.getString(17), mensajero.getString(18), mensajero.getString(19), 
                        mensajero.getString(20), mensajero.getString(21), mensajero.getString(22), mensajero.getString(23), 
                        mensajero.getString(24));
            }

        } catch (Exception e) {
            Logger.getLogger(EnvioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(EnvioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return oftVO;
    }
    
    
    public ArrayList<OfertaVO> listar() {
        ArrayList<OfertaVO> listaOferta = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();
            sql = "SELECT oferta.IdOferta, envio.NombreCarga, CONCAT(usuario.Nombre, ' ', usuario.Apellido), tipo_vehiculo.Nombre, marca.Nombre, tipo_pago.Nombre, oferta.Precio, oferta.Fecha_Disponibilidad, usuario.IdUsuario, oferta.estado\n"
                    + "FROM oferta\n"
                    + "INNER JOIN envio ON oferta.IdEnvio = envio.IdEnvio\n"
                    + "INNER JOIN tipo_pago ON oferta.IdTipo_Pago = tipo_pago.IdTipo_Pago\n"
                    + "INNER JOIN vehiculo ON oferta.IdVehiculo = vehiculo.IdVehiculo\n"
                    + "INNER JOIN marca ON vehiculo.IdMarca = marca.IdMarca\n"
                    + "INNER JOIN tipo_vehiculo ON vehiculo.IdTipo_Vehiculo = tipo_vehiculo.IdTipo_Vehiculo\n"
                    + "INNER JOIN usuario ON vehiculo.IdUsuario = usuario.IdUsuario";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                OfertaVO oftVO = new OfertaVO(mensajero.getString(1), mensajero.getString(2), 
                        mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), 
                        mensajero.getString(6), mensajero.getString(7), mensajero.getString(8), 
                        mensajero.getString(9), mensajero.getString(10));

                listaOferta.add(oftVO);
            }

        } catch (Exception e) {
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return listaOferta;
    }
    
    
    public ArrayList<OfertaVO> listarConductor() {
        ArrayList<OfertaVO> listaOferta = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();
            sql = "SELECT oferta.IdOferta, usuario.Nombre, usuario.Apellido,usuario.Telefono, usuario.Correo, marca.Nombre, "
                    + "vehiculo.Modelo, tipo_vehiculo.Nombre, vehiculo.Placa, tipo_carga.Nombre, envio.idenvio, envio.Peso, "
                    + "envio.Cantidad, envio.Longitud, envio.Direccion, departamento.Nombre, ciudad.Nombre, envio.Codigo_Postal, "
                    + "envio.Fecha_Limite_Llegada, envio.Comentario_Envio, oferta.Precio, oferta.Fecha_Disponibilidad, "
                    + "tipo_pago.Nombre, oferta.Estado \n" +
"                    FROM oferta\n" +
"                    INNER JOIN envio ON oferta.IdEnvio = envio.IdEnvio\n" +
"                    INNER JOIN tipo_pago ON oferta.IdTipo_Pago = tipo_pago.IdTipo_Pago\n" +
"                    INNER JOIN vehiculo ON oferta.IdVehiculo = vehiculo.IdVehiculo\n" +
"                    INNER JOIN marca ON vehiculo.IdMarca = marca.IdMarca\n" +
"                    INNER JOIN tipo_vehiculo ON vehiculo.IdTipo_Vehiculo = tipo_vehiculo.IdTipo_Vehiculo\n" +
"                    INNER JOIN usuario ON vehiculo.IdUsuario = usuario.IdUsuario\n" +
"                    INNER JOIN departamento ON envio.IdDepartamento = departamento.IdDepartamento\n" +
"                    INNER JOIN ciudad ON envio.IdCiudad = ciudad.IdCiudad\n" +
"                    INNER JOIN tipo_carga ON envio.IdTipo_Carga = tipo_carga.IdTipo_Carga";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                OfertaVO oftVO = new OfertaVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3), 
                        mensajero.getString(4), mensajero.getString(5), mensajero.getString(6), mensajero.getString(7), 
                        mensajero.getString(8), mensajero.getString(9), mensajero.getString(10), mensajero.getString(11), 
                        mensajero.getString(12), mensajero.getString(13), mensajero.getString(14), mensajero.getString(15), 
                        mensajero.getString(16), mensajero.getString(17), mensajero.getString(18), mensajero.getString(19), 
                        mensajero.getString(20), mensajero.getString(21), mensajero.getString(22), mensajero.getString(23), 
                        mensajero.getString(24));

                listaOferta.add(oftVO);
            }

        } catch (Exception e) {
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return listaOferta;
    }
    
    
    
    public boolean InactivarOferta(){
        try {
            sql = "update oferta set estado = 0  where idoferta = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idoferta);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return operacion;
    }
    
    public boolean ActivarOferta(){
        try {
            sql = "update oferta set estado = 1  where idoferta = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idoferta);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(OfertaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return operacion;
    }
    
}
