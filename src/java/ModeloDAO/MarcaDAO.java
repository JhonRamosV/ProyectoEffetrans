/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.MarcaVO;
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
public class MarcaDAO extends Conexion implements Crud{

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private String sql;
    
    
    public ArrayList<MarcaVO> listar() {
        ArrayList<MarcaVO> listaMarca = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();
            sql = "select * from marca";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                MarcaVO marcaVO = new MarcaVO(mensajero.getString(1), mensajero.getString(2));

                listaMarca.add(marcaVO);
            }

        } catch (Exception e) {
            Logger.getLogger(MarcaDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(MarcaDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        
        return listaMarca;
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
