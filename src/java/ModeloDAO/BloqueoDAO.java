/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.BloqueoVO;
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
public class BloqueoDAO extends Conexion implements Crud{
    
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;
    
    public BloqueoDAO() {

    }
    
    private String idbloqueo = "", idusuario = "", fecha_inicio = "", 
            fecha_fin = "", descripcion = "", estado = "";
    
    
    public BloqueoDAO(BloqueoVO bloqVO) {
        super();

        try {

            //3. CONECTARSE
            conexion = this.obtenerConexion();
            //4. TRAER AL DAO LOS DATOS DEL VO PARA HACER LAS OPERACIONES
            idbloqueo = bloqVO.getIdbloqueo();
            idusuario = bloqVO.getIdusuario();
            fecha_inicio = bloqVO.getFecha_inicio();
            fecha_fin = bloqVO.getFecha_fin();
            descripcion = bloqVO.getDescripcion();
            estado = bloqVO.getEstado();
        } catch (Exception e) {
            Logger.getLogger(BloqueoDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    @Override
    public boolean agregarRegistro() {
        try {

            sql = "insert into bloqueo(idusuario, fecha_inicio, fecha_fin, descripcion, estado) values (?, ?, ?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idusuario);
            puente.setString(2, fecha_inicio);
            puente.setString(3, fecha_fin);
            puente.setString(4, descripcion);
            puente.setString(5, estado);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
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
        try {
            sql = "update bloqueo set estado = 0  where idusuario = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idusuario);
            puente.executeUpdate();
            operacion = true;

        } catch (SQLException e) {
            Logger.getLogger(BloqueoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(BloqueoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return operacion;
    }
    
    
    public BloqueoVO consultarBloqueo(String documento) {
        BloqueoVO bloqVO = null;

        try {
            conexion = this.obtenerConexion();
            sql = "select * from bloqueo where idusuario = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idusuario);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                bloqVO = new BloqueoVO(mensajero.getString(1), mensajero.getString(2), 
                        mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), 
                        mensajero.getString(6));
            }

        } catch (Exception e) {
            Logger.getLogger(BloqueoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(BloqueoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return bloqVO;
    }
    
    
    public ArrayList<BloqueoVO> listar() {
        ArrayList<BloqueoVO> listaBloqueo = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();
            sql = "select * from bloqueo";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                BloqueoVO bloqVO = new BloqueoVO(mensajero.getString(1), mensajero.getString(2), 
                        mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), 
                        mensajero.getString(6));

                listaBloqueo.add(bloqVO);
            }

        } catch (Exception e) {
            Logger.getLogger(BloqueoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(BloqueoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return listaBloqueo;
    }
    
    
}
