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
public class DepartamentoVO {
    
    private String iddepartamento, nombre;

    public DepartamentoVO() {
    }

    public DepartamentoVO(String iddepartamento, String nombre) {
        this.iddepartamento = iddepartamento;
        this.nombre = nombre;
    }

    public String getIddepartamento() {
        return iddepartamento;
    }

    public void setIddepartamento(String iddepartamento) {
        this.iddepartamento = iddepartamento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
}
