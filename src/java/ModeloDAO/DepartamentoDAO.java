/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.DepartamentoVO;
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
public class DepartamentoDAO extends Conexion implements Crud{
    
    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private boolean operacion = false;
    private String sql;
    
    public DepartamentoDAO(){
        
    }
    
    private String iddepartamento = "", nombre = "";
    

    
    public ArrayList<DepartamentoVO> listar() {
        ArrayList<DepartamentoVO> listaDepartamento = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();
            sql = "select * from departamento";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                DepartamentoVO deptVO = new DepartamentoVO(mensajero.getString(1), mensajero.getString(2));

                listaDepartamento.add(deptVO);
            }

        } catch (Exception e) {
            Logger.getLogger(DepartamentoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(DepartamentoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        
        return listaDepartamento;
    }
    
    
    public DepartamentoVO consultarDepartamento(String iddepartamento) {
        DepartamentoVO deptVO = null;

        try {
            conexion = this.obtenerConexion();
            sql = "select * from departamento where iddepartamento = ?";
            puente = conexion.prepareStatement(sql);
            puente.setString(1, iddepartamento);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                deptVO = new DepartamentoVO(mensajero.getString(1), mensajero.getString(2));
            }

        } catch (Exception e) {
            Logger.getLogger(DepartamentoDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(DepartamentoDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }

        return deptVO;
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
