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
public class VehiculoVO {
    
    private String idvehiculo, idusuario, licensia, idtipo_vehiculo, idmarca, placa, modelo, estado; 

    public VehiculoVO(String idusuario) {
        this.idusuario = idusuario;
    }

    public VehiculoVO() {
    }
    
    public VehiculoVO(String idvehiculo, String idusuario, String licensia, String idtipo_vehiculo, String idmarca, String placa, String modelo, String estado) {
        this.idvehiculo = idvehiculo;
        this.idusuario = idusuario;
        this.licensia = licensia;
        this.idtipo_vehiculo = idtipo_vehiculo;
        this.idmarca = idmarca;
        this.placa = placa;
        this.modelo = modelo;
        this.estado = estado;
    }
    
    public String getIdvehiculo() {
        return idvehiculo;
    }

    public void setIdvehiculo(String idvehiculo) {
        this.idvehiculo = idvehiculo;
    }

    public String getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(String idusuario) {
        this.idusuario = idusuario;
    }

    public String getLicensia() {
        return licensia;
    }

    public void setLicensia(String licensia) {
        this.licensia = licensia;
    }

    public String getIdtipo_vehiculo() {
        return idtipo_vehiculo;
    }

    public void setIdtipo_vehiculo(String idtipo_vehiculo) {
        this.idtipo_vehiculo = idtipo_vehiculo;
    }

    public String getIdmarca() {
        return idmarca;
    }

    public void setIdmarca(String idmarca) {
        this.idmarca = idmarca;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
   
    
}
