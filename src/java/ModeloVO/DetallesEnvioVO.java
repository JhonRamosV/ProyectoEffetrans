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
public class DetallesEnvioVO {
    
    private String iddetalle_envio, idenvio, idcarga;

    public DetallesEnvioVO(String idcarga) {
        this.idcarga = idcarga;
    }

    public DetallesEnvioVO() {
    }

    public DetallesEnvioVO(String iddetalle_envio, String idenvio, String idcarga) {
        this.iddetalle_envio = iddetalle_envio;
        this.idenvio = idenvio;
        this.idcarga = idcarga;
    }

    public String getIddetalle_envio() {
        return iddetalle_envio;
    }

    public void setIddetalle_envio(String iddetalle_envio) {
        this.iddetalle_envio = iddetalle_envio;
    }

    public String getIdenvio() {
        return idenvio;
    }

    public void setIdenvio(String idenvio) {
        this.idenvio = idenvio;
    }

    public String getIdcarga() {
        return idcarga;
    }

    public void setIdcarga(String idcarga) {
        this.idcarga = idcarga;
    }
}
