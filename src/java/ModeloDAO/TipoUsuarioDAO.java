/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import ModeloVO.TipoUsuarioVO;
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
public class TipoUsuarioDAO extends Conexion implements Crud {

    private Connection conexion;
    private PreparedStatement puente;
    private ResultSet mensajero;

    private String sql;

    public ArrayList<TipoUsuarioVO> listar() {
        ArrayList<TipoUsuarioVO> listaTipoUsuario = new ArrayList<>();

        try {
            conexion = this.obtenerConexion();
            sql = "select * from tipo_usuario";
            puente = conexion.prepareStatement(sql);
            mensajero = puente.executeQuery();

            while (mensajero.next()) {
                TipoUsuarioVO tipousuarioVO = new TipoUsuarioVO(mensajero.getString(1), mensajero.getString(2));

                listaTipoUsuario.add(tipousuarioVO);
            }

        } catch (Exception e) {
            Logger.getLogger(TipoUsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
        } finally {

            try {
                this.cerrarconexion();
            } catch (Exception e) {
                Logger.getLogger(TipoUsuarioDAO.class.getName()).log(Level.SEVERE, null, e);
            }
        }
        
        return listaTipoUsuario;
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
