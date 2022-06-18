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
public class BloqueoVO {
    
    
    private String idbloqueo, idusuario, fecha_inicio, fecha_fin, descripcion, estado;

    

    public BloqueoVO(String idbloqueo, String idusuario, String fecha_inicio, String fecha_fin, String descripcion, String estado) {
        this.idbloqueo = idbloqueo;
        this.idusuario = idusuario;
        this.fecha_inicio = fecha_inicio;
        this.fecha_fin = fecha_fin;
        this.descripcion = descripcion;
        this.estado = estado;
    }
    

    
    public BloqueoVO() {
    }
    
    public String getIdbloqueo() {
        return idbloqueo;
    }

    public void setIdbloqueo(String idbloqueo) {
        this.idbloqueo = idbloqueo;
    }

    public String getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(String idusuario) {
        this.idusuario = idusuario;
    }

    public String getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(String fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    public String getFecha_fin() {
        return fecha_fin;
    }

    public void setFecha_fin(String fecha_fin) {
        this.fecha_fin = fecha_fin;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }  
    
    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
}
