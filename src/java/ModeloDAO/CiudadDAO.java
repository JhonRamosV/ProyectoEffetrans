/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.CiudadVO;
import Util.Conexion;
import Util.Crud;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Pablo
 */
public class CiudadDAO extends Conexion implements Crud{
    
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;
    
    public CiudadDAO(){
        
    }
    
    private String idciudad = "", nombre = "", iddepartamento = "";
    
    public CiudadDAO(CiudadVO ciudVO) {
        super();

        try {

            //3. CONECTARSE
            conexion = this.obtenerConexion();
            //4. TRAER AL DAO LOS DATOS DEL VO PARA HACER LAS OPERACIONES
            idciudad = ciudVO.getIdciudad();
            nombre = ciudVO.getNombre();
            iddepartamento = ciudVO.getIddepartamento();
        } catch (Exception e) {
            Logger.getLogger(CiudadDAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    
    public ArrayList<CiudadVO> listar() {
        ArrayList<CiudadVO> listaCiudad = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();
            sql = "select * from ciudad";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                CiudadVO ciudadVO = new CiudadVO(mensajero.getString(1), mensajero.getString(2), mensajero.getString(3));

                listaCiudad.add(ciudadVO);
            }

        } catch (Exception e) {
            Logger.getLogger(CiudadDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(CiudadDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        
        return listaCiudad;
    }

    @Override
    public boolean agregarRegistro() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
