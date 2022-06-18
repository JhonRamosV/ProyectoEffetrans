/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.CargaVO;
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
public class CargaDAO extends Conexion implements Crud {
    
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;
    
    public CargaDAO(){
        
    }
    
    private String idcarga = "", idenvio = "", idtipo_carga = "", peso = "", 
            cantidad = "", longitud = "", descripcion = "";
    
    
    public CargaDAO(CargaVO cargaVO) {
        super();

        try {

            //3. CONECTARSE
            conexion = this.obtenerConexion();
            //4. TRAER AL DAO LOS DATOS DEL VO PARA HACER LAS OPERACIONES
            idcarga = cargaVO.getIdcarga();
            idenvio = cargaVO.getIdenvio();
            idtipo_carga = cargaVO.getIdtipo_carga();
            peso = cargaVO.getPeso();
            cantidad = cargaVO.getCantidad();
            longitud = cargaVO.getLongitud();
            descripcion = cargaVO.getDescripcion();
        } catch (Exception e) {
            Logger.getLogger(CargaDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    
    public ArrayList<CargaVO> listar() {
        ArrayList<CargaVO> listaCarga = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();
            sql = "select * from carga";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                CargaVO cargaVO = new CargaVO(mensajero.getString(1), mensajero.getString(2), 
                        mensajero.getString(3), mensajero.getString(4), mensajero.getString(5), 
                        mensajero.getString(6), mensajero.getString(7));

                listaCarga.add(cargaVO);
            }

        } catch (Exception e) {
            Logger.getLogger(CargaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(CargaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        
        return listaCarga;
    }

    @Override
    public boolean agregarRegistro() {
        try {
            
            sql = "insert into carga(idenvio, idtipo_carga, peso, cantidad, longitud, descripcion) values (?, ?, ?, ?, ?, ?)";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, idenvio);
            puente.setString(2, idtipo_carga);
            puente.setString(3, peso);
            puente.setString(4, cantidad);
            puente.setString(5, longitud);
            puente.setString(6, descripcion);
            puente.executeUpdate();
            operacion = true;
            
        } catch (SQLException e) {
            Logger.getLogger(CargaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {
            
            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(CargaDAO.class.getName()).log(Level.SEVERE, null, e);
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
}
