/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.EnvioVO;
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
 * @author Sena
 */
public class EnvioDAO extends Conexion implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;

    public EnvioDAO() {

    }

    private String idenvio = "", idusuario = "", idtipo_carga = "", nombrecarga = "", peso = "", cantidad = "", longitud = "",
            fecha_registro = "", direccion = "", iddepartamento = "", idciudad = "", codigo_postal = "",
            fecha_limite_llegada = "", comentario_envio = "", estado = "";

    public EnvioDAO(EnvioVO envVO) {
        super();

        try {

            //3. CONECTARSE
            conexion = this.obtenerConexion();
            //4. TRAER AL DAO LOS DATOS DEL VO PARA HACER LAS OPERACIONES
            idenvio = envVO.getIdenvio();
            idusuario = envVO.getIdusuario();
            idtipo_carga = envVO.getIdtipo_carga();
            nombrecarga = envVO.getNombrecarga();
            peso = envVO.getPeso();
            cantidad = envVO.getCantidad();
            longitud = envVO.getLongitud();
            fecha_registro = envVO.getFecha_registro();
            direccion = envVO.getDireccion();
            iddepartamento = envVO.getIddepartamento();
            idciudad = envVO.getIdciudad();
            codigo_postal = envVO.getCodigo_postal();
            fecha_limite_llegada = envVO.getFecha_limite_llegada();
            comentario_envio = envVO.getComentario_envio();
            estado = envVO.getEstado();
        } catch (Exception e) {
            Logger.getLogger(EnvioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public ArrayList<EnvioVO> listar() {
        ArrayList<EnvioVO> listaEnvio = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();
            sql = "SELECT envio.IdEnvio, CONCAT(usuario.Nombre, ' ', usuario.Apellido), tipo_carga.Nombre, envio.NombreCarga, envio.Peso, envio.Cantidad, envio.Longitud, envio.Fecha_Registro, envio.Direccion, departamento.Nombre, ciudad.Nombre, envio.Codigo_Postal, envio.Fecha_Limite_Llegada, envio.Comentario_Envio, envio.Estado \n"
                    + "FROM envio \n"
                    + "INNER JOIN ciudad ON ciudad.IdCiudad = envio.IdCiudad \n"
                    + "INNER JOIN departamento ON envio.IdDepartamento = departamento.IdDepartamento\n"
                    + "INNER JOIN tipo_carga ON envio.IdTipo_Carga = tipo_carga.IdTipo_Carga\n"
                    + "INNER JOIN usuario ON envio.IdUsuario = usuario.IdUsuario";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                EnvioVO envVO = new EnvioVO(mensajero.getString(1), mensajero.getString(2),
                        mensajero.getString(3), mensajero.getString(4), mensajero.getString(5),
                        mensajero.getString(6), mensajero.getString(7), mensajero.getString(8),
                        mensajero.getString(9), mensajero.getString(10), mensajero.getString(11),
                        mensajero.getString(12), mensajero.getString(13), mensajero.getString(14),
                        mensajero.getString(15));

                listaEnvio.add(envVO);
            }

        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return listaEnvio;
    }

    public ArrayList<EnvioVO> listarEnviosPropios(String usu) {
        ArrayList<EnvioVO> listaEnvio = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();
            sql = "SELECT envio.IdEnvio, usuario.Nombre, tipo_carga.Nombre, envio.NombreCarga, envio.Peso, envio.Cantidad, envio.Longitud, envio.Fecha_Registro, envio.Direccion, departamento.Nombre, ciudad.Nombre, envio.Codigo_Postal, envio.Fecha_Limite_Llegada, envio.Comentario_Envio, envio.Estado \n"
                    + "                    FROM envio \n"
                    + "                    INNER JOIN ciudad ON ciudad.IdCiudad = envio.IdCiudad\n"
                    + "                    INNER JOIN departamento ON envio.IdDepartamento = departamento.IdDepartamento\n"
                    + "                    INNER JOIN tipo_carga ON envio.IdTipo_Carga = tipo_carga.IdTipo_Carga\n"
                    + "                    INNER JOIN usuario ON envio.IdUsuario = usuario.IdUsuario\n"
                    + "                    WHERE usuario.idusuario = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, usu);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                EnvioVO envVO = new EnvioVO(mensajero.getString(1), mensajero.getString(2),
                        mensajero.getString(3), mensajero.getString(4), mensajero.getString(5),
                        mensajero.getString(6), mensajero.getString(7), mensajero.getString(8),
                        mensajero.getString(9), mensajero.getString(10), mensajero.getString(11),
                        mensajero.getString(12), mensajero.getString(13), mensajero.getString(14),
                        mensajero.getString(15));

                listaEnvio.add(envVO);
            }

        } catch (Exception e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return listaEnvio;
    }

    @Override
    public boolean agregarRegistro() {
        try {

            sql = "insert into envio(idusuario, idtipo_carga, nombrecarga, peso, cantidad, longitud, fecha_registro, "
                    + "direccion, iddepartamento, idciudad, codigo_postal, fecha_limite_llegada, comentario_envio, estado) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idusuario);
            puente.setString(2, idtipo_carga);
            puente.setString(3, nombrecarga);
            puente.setString(4, peso);
            puente.setString(5, cantidad);
            puente.setString(6, longitud);
            puente.setString(7, fecha_registro);
            puente.setString(8, direccion);
            puente.setString(9, iddepartamento);
            puente.setString(10, idciudad);
            puente.setString(11, codigo_postal);
            puente.setString(12, fecha_limite_llegada);
            puente.setString(13, comentario_envio);
            puente.setString(14, estado);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(EnvioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(EnvioDAO.class.getName()).log(Level.SEVERE, null, e);
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
    
    public boolean InactivarEnvio(){
        try {
            sql = "update envio set estado = 0  where idenvio = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idenvio);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(EnvioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(EnvioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return operacion;
    }
    
    
    public boolean ActivarEnvio(){
        try {
            sql = "update envio set estado = 1  where idenvio = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idenvio);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(EnvioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(EnvioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return operacion;
    }

    public EnvioVO consultarEnvio(String idenvio) {
        EnvioVO envVO = null;

        try {
            conexion = this.obtenerConexion();
            sql = "SELECT envio.IdEnvio, usuario.Nombre, tipo_carga.Nombre, envio.NombreCarga, envio.Peso, envio.Cantidad, envio.Longitud, envio.Fecha_Registro, envio.Direccion, departamento.Nombre, ciudad.Nombre, envio.Codigo_Postal, envio.Fecha_Limite_Llegada, envio.Comentario_Envio, envio.Estado\n"
                    + "FROM envio\n"
                    + "INNER JOIN ciudad ON envio.IdCiudad = ciudad.IdCiudad\n"
                    + "INNER JOIN departamento ON envio.IdDepartamento = departamento.IdDepartamento\n"
                    + "INNER JOIN tipo_carga ON envio.IdTipo_Carga = tipo_carga.IdTipo_Carga\n"
                    + "INNER JOIN usuario ON envio.IdUsuario = usuario.IdUsuario\n"
                    + "WHERE IdEnvio = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idenvio);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                envVO = new EnvioVO(mensajero.getString(1), mensajero.getString(2),
                        mensajero.getString(3), mensajero.getString(4), mensajero.getString(5),
                        mensajero.getString(6), mensajero.getString(7), mensajero.getString(8),
                        mensajero.getString(9), mensajero.getString(10), mensajero.getString(11),
                        mensajero.getString(12), mensajero.getString(13), mensajero.getString(14),
                        mensajero.getString(15));
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

        return envVO;
    }

}
