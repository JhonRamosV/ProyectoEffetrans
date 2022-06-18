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
public class TipoPagoVO {
    
    private String idtipo_pago, nombre;

    public TipoPagoVO() {
    }

    public TipoPagoVO(String idtipo_pago, String nombre) {
        this.idtipo_pago = idtipo_pago;
        this.nombre = nombre;
    }

    public String getIdtipo_pago() {
        return idtipo_pago;
    }

    public void setIdtipo_pago(String idtipo_pago) {
        this.idtipo_pago = idtipo_pago;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
}
