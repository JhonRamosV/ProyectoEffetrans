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
public class TipoCargaVO {
    
    private String idtipo_carga, nombre;

    public TipoCargaVO() {
    }

    public TipoCargaVO(String idtipo_carga, String nombre) {
        this.idtipo_carga = idtipo_carga;
        this.nombre = nombre;
    }

    public String getIdtipo_carga() {
        return idtipo_carga;
    }

    public void setIdtipo_carga(String idtipo_carga) {
        this.idtipo_carga = idtipo_carga;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
}
