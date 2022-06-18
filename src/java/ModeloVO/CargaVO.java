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
public class CargaVO {
 
    private String  idcarga, idenvio, idtipo_carga, peso, cantidad, longitud, descripcion;

    public CargaVO() {
    }

    public CargaVO(String idcarga, String idenvio, String idtipo_carga, String peso, String cantidad, String longitud, String descripcion) {
        this.idcarga = idcarga;
        this.idenvio = idenvio;
        this.idtipo_carga = idtipo_carga;
        this.peso = peso;
        this.cantidad = cantidad;
        this.longitud = longitud;
        this.descripcion = descripcion;
    }

    public String getIdcarga() {
        return idcarga;
    }

    public void setIdcarga(String idcarga) {
        this.idcarga = idcarga;
    }

    public String getIdenvio() {
        return idenvio;
    }

    public void setIdenvio(String idenvio) {
        this.idenvio = idenvio;
    }

    public String getIdtipo_carga() {
        return idtipo_carga;
    }

    public void setIdtipo_carga(String idtipo_carga) {
        this.idtipo_carga = idtipo_carga;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    public String getCantidad() {
        return cantidad;
    }

    public void setCantidad(String cantidad) {
        this.cantidad = cantidad;
    }

    public String getLongitud() {
        return longitud;
    }

    public void setLongitud(String longitud) {
        this.longitud = longitud;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
