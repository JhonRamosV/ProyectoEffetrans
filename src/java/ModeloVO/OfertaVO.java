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
public class OfertaVO {
    
    private String idoferta, usunombre, usuapellido, usutelefono, usucorreo,  marca, idvehiculo, tipoveh, vehplaca, tipocarga,
            idenvio, envpeso, envcantidad, envlongitud, envdireccion, deptnombre, ciudnombre, envcodpostal, envfechalimllegada,
            envcomentario,precio, fecha_disponibilidad, idtipo_pago, estado, nombreusuario, idusuario;

    public OfertaVO(String idoferta) {
        this.idoferta = idoferta;
    }

    public OfertaVO(String idoferta, String usunombre, String usuapellido, String usutelefono, String usucorreo, String marca, String idvehiculo, String tipoveh, String vehplaca, String tipocarga, String idenvio, String envpeso, String envcantidad, String envlongitud, String envdireccion, String deptnombre, String ciudnombre, String envcodpostal, String envfechalimllegada, String envcomentario, String precio, String fecha_disponibilidad, String idtipo_pago, String estado) {
        this.idoferta = idoferta;
        this.usunombre = usunombre;
        this.usuapellido = usuapellido;
        this.usutelefono = usutelefono;
        this.usucorreo = usucorreo;
        this.marca = marca;
        this.idvehiculo = idvehiculo;
        this.tipoveh = tipoveh;
        this.vehplaca = vehplaca;
        this.tipocarga = tipocarga;
        this.idenvio = idenvio;
        this.envpeso = envpeso;
        this.envcantidad = envcantidad;
        this.envlongitud = envlongitud;
        this.envdireccion = envdireccion;
        this.deptnombre = deptnombre;
        this.ciudnombre = ciudnombre;
        this.envcodpostal = envcodpostal;
        this.envfechalimllegada = envfechalimllegada;
        this.envcomentario = envcomentario;
        this.precio = precio;
        this.fecha_disponibilidad = fecha_disponibilidad;
        this.idtipo_pago = idtipo_pago;
        this.estado = estado;
    }
  

    public OfertaVO(String idoferta, String idenvio, String nombreusuario, String idvehiculo, String marca, String idtipo_pago, String precio, String fecha_disponibilidad, String idusuario, String estado) {
        this.idoferta = idoferta;
        this.idenvio = idenvio;
        this.nombreusuario = nombreusuario;
        this.idvehiculo = idvehiculo;
        this.marca = marca;
        this.idtipo_pago = idtipo_pago;
        this.precio = precio;
        this.fecha_disponibilidad = fecha_disponibilidad;
        this.idusuario = idusuario;
        this.estado = estado;
    }

    public OfertaVO() {
    }

    public OfertaVO(String idoferta, String idenvio, String idvehiculo, String idtipo_pago, String precio, String fecha_disponibilidad, String estado) {
        this.idoferta = idoferta;
        this.idenvio = idenvio;
        this.idvehiculo = idvehiculo;
        this.idtipo_pago = idtipo_pago;
        this.precio = precio;
        this.fecha_disponibilidad = fecha_disponibilidad;
        this.estado = estado;
    }

    public String getIdoferta() {
        return idoferta;
    }

    public void setIdoferta(String idoferta) {
        this.idoferta = idoferta;
    }

    public String getIdenvio() {
        return idenvio;
    }

    public void setIdenvio(String idenvio) {
        this.idenvio = idenvio;
    }

    public String getIdvehiculo() {
        return idvehiculo;
    }

    public void setIdvehiculo(String idvehiculo) {
        this.idvehiculo = idvehiculo;
    }

    public String getIdtipo_pago() {
        return idtipo_pago;
    }

    public void setIdtipo_pago(String idtipo_pago) {
        this.idtipo_pago = idtipo_pago;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getFecha_disponibilidad() {
        return fecha_disponibilidad;
    }

    public void setFecha_disponibilidad(String fecha_disponibilidad) {
        this.fecha_disponibilidad = fecha_disponibilidad;
    }
    
    public String getNombreusuario() {
        return nombreusuario;
    }

    public void setNombreusuario(String nombreusuario) {
        this.nombreusuario = nombreusuario;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }
    
    public String getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(String idusuario) {
        this.idusuario = idusuario;
    }
    
    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    public String getUsunombre() {
        return usunombre;
    }

    public void setUsunombre(String usunombre) {
        this.usunombre = usunombre;
    }

    public String getUsuapellido() {
        return usuapellido;
    }

    public void setUsuapellido(String usuapellido) {
        this.usuapellido = usuapellido;
    }

    public String getUsutelefono() {
        return usutelefono;
    }

    public void setUsutelefono(String usutelefono) {
        this.usutelefono = usutelefono;
    }

    public String getUsucorreo() {
        return usucorreo;
    }

    public void setUsucorreo(String usucorreo) {
        this.usucorreo = usucorreo;
    }

    public String getTipoveh() {
        return tipoveh;
    }

    public void setTipoveh(String tipoveh) {
        this.tipoveh = tipoveh;
    }

    public String getVehplaca() {
        return vehplaca;
    }

    public void setVehplaca(String vehplaca) {
        this.vehplaca = vehplaca;
    }

    public String getTipocarga() {
        return tipocarga;
    }

    public void setTipocarga(String tipocarga) {
        this.tipocarga = tipocarga;
    }

    public String getEnvpeso() {
        return envpeso;
    }

    public void setEnvpeso(String envpeso) {
        this.envpeso = envpeso;
    }

    public String getEnvcantidad() {
        return envcantidad;
    }

    public void setEnvcantidad(String envcantidad) {
        this.envcantidad = envcantidad;
    }

    public String getEnvlongitud() {
        return envlongitud;
    }

    public void setEnvlongitud(String envlongitud) {
        this.envlongitud = envlongitud;
    }

    public String getEnvdireccion() {
        return envdireccion;
    }

    public void setEnvdireccion(String envdireccion) {
        this.envdireccion = envdireccion;
    }

    public String getDeptnombre() {
        return deptnombre;
    }

    public void setDeptnombre(String deptnombre) {
        this.deptnombre = deptnombre;
    }

    public String getCiudnombre() {
        return ciudnombre;
    }

    public void setCiudnombre(String ciudnombre) {
        this.ciudnombre = ciudnombre;
    }

    public String getEnvcodpostal() {
        return envcodpostal;
    }

    public void setEnvcodpostal(String envcodpostal) {
        this.envcodpostal = envcodpostal;
    }

    public String getEnvfechalimllegada() {
        return envfechalimllegada;
    }

    public void setEnvfechalimllegada(String envfechalimllegada) {
        this.envfechalimllegada = envfechalimllegada;
    }

    public String getEnvcomentario() {
        return envcomentario;
    }

    public void setEnvcomentario(String envcomentario) {
        this.envcomentario = envcomentario;
    }

}
