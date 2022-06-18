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
public class PagoVO {
    
    private String idpago, idconfirmacion_envio, fecha_confirmacion_pago, nombreCarga, tipoPago, 
            fecha_disponibilad, direccion, ciudad, valor, estado_pago;

    public PagoVO(String idpago, String nombreCarga, String tipoPago, String fecha_disponibilad, String direccion, String ciudad, String valor, String estado_pago, String idconfirmacion_envio) {
        this.idpago = idpago;
        this.nombreCarga = nombreCarga;
        this.tipoPago = tipoPago;
        this.fecha_disponibilad = fecha_disponibilad;
        this.direccion = direccion;
        this.ciudad = ciudad;
        this.valor = valor;
        this.estado_pago = estado_pago;
        this.idconfirmacion_envio = idconfirmacion_envio;
    }

    

    public PagoVO() {
    }

    public PagoVO(String idpago, String idconfirmacion_envio, String fecha_confirmacion_pago, String estado_pago, String valor) {
        this.idpago = idpago;
        this.idconfirmacion_envio = idconfirmacion_envio;
        this.fecha_confirmacion_pago = fecha_confirmacion_pago;
        this.estado_pago = estado_pago;
        this.valor = valor;
    }

    public String getIdpago() {
        return idpago;
    }

    public void setIdpago(String idpago) {
        this.idpago = idpago;
    }

    public String getIdconfirmacion_envio() {
        return idconfirmacion_envio;
    }

    public void setIdconfirmacion_envio(String idconfirmacion_envio) {
        this.idconfirmacion_envio = idconfirmacion_envio;
    }

    public String getFecha_confirmacion_pago() {
        return fecha_confirmacion_pago;
    }

    public void setFecha_confirmacion_pago(String fecha_confirmacion_pago) {
        this.fecha_confirmacion_pago = fecha_confirmacion_pago;
    }

    public String getEstado_pago() {
        return estado_pago;
    }

    public void setEstado_pago(String estado_pago) {
        this.estado_pago = estado_pago;
    }

    public String getValor() {
        return valor;
    }

    public void setValor(String valor) {
        this.valor = valor;
    }
    
    public String getNombreCarga() {
        return nombreCarga;
    }

    public void setNombreCarga(String nombreCarga) {
        this.nombreCarga = nombreCarga;
    }

    public String getTipoPago() {
        return tipoPago;
    }

    public void setTipoPago(String tipoPago) {
        this.tipoPago = tipoPago;
    }

    public String getFecha_disponibilad() {
        return fecha_disponibilad;
    }

    public void setFecha_disponibilad(String fecha_disponibilad) {
        this.fecha_disponibilad = fecha_disponibilad;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }
    
    
}
