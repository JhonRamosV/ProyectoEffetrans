/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloVO;

/**
 *
 * @author Pablo
 */
public class TipoUsuarioVO {
    
    private String idtipo_usuario, nombre;
    
    public TipoUsuarioVO(String idtipo_usuario, String nombre) {
        this.idtipo_usuario = idtipo_usuario;
        this.nombre = nombre;
    }

    public TipoUsuarioVO() {
    }

    public String getIdtipo_usuario() {
        return idtipo_usuario;
    }

    public void setIdtipo_usuario(String idtipo_usuario) {
        this.idtipo_usuario = idtipo_usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
