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
public class TipoVehiculoVO {
    
    private String idtipo_vehiculo, nombre;

    public TipoVehiculoVO() {
    }

    public TipoVehiculoVO(String idtipo_vehiculo, String nombre) {
        this.idtipo_vehiculo = idtipo_vehiculo;
        this.nombre = nombre;
    }

    public String getIdtipo_vehiculo() {
        return idtipo_vehiculo;
    }

    public void setIdtipo_vehiculo(String idtipo_vehiculo) {
        this.idtipo_vehiculo = idtipo_vehiculo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
}
