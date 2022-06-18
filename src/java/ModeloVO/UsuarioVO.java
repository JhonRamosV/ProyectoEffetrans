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
public class UsuarioVO {
    
    private String idusuario, idtipo_usuario, correo, contrasena, nombre, apellido, documento, direccion, telefono, estado;

    public UsuarioVO(String idusuario, String correo, String contrasena) {
        this.idusuario = idusuario;
        this.correo = correo;
        this.contrasena = contrasena;
    }



    public UsuarioVO(String correo, String contrasena) {
        this.correo = correo;
        this.contrasena = contrasena;
    }

    public UsuarioVO() {
    }

    

    public UsuarioVO(String idusuario) {
        this.idusuario = idusuario;
    }

    
    
    public UsuarioVO(String idusuario, String idtipo_usuario, String correo, String contrasena, String nombre, String apellido, String documento, String direccion, String telefono, String estado) {
        this.idusuario = idusuario;
        this.idtipo_usuario = idtipo_usuario;
        this.correo = correo;
        this.contrasena = contrasena;
        this.nombre = nombre;
        this.apellido = apellido;
        this.documento = documento;
        this.direccion = direccion;
        this.telefono = telefono;
        this.estado = estado;
    }
    
    public String getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(String idusuario) {
        this.idusuario = idusuario;
    }

    public String getIdtipo_usuario() {
        return idtipo_usuario;
    }

    public void setIdtipo_usuario(String idtipo_usuario) {
        this.idtipo_usuario = idtipo_usuario;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
    

    

    
    
}
