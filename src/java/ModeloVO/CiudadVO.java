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
public class CiudadVO {
    
    private String idciudad, nombre, iddepartamento;

    public CiudadVO() {
    }

    public CiudadVO(String idciudad, String nombre, String iddepartamento) {
        this.idciudad = idciudad;
        this.nombre = nombre;
        this.iddepartamento = iddepartamento;
    }

    public String getIdciudad() {
        return idciudad;
    }

    public void setIdciudad(String idciudad) {
        this.idciudad = idciudad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getIddepartamento() {
        return iddepartamento;
    }

    public void setIddepartamento(String iddepartamento) {
        this.iddepartamento = iddepartamento;
    }
    
    
}
