/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.math.BigDecimal;

/**
 *
 * @author SQL&MySQL
 */
public class Paquete {

    public int getIdpaquete() {
        return idpaquete;
    }

    public void setIdpaquete(int idpaquete) {
        this.idpaquete = idpaquete;
    }

    public String getProd1() {
        return prod1;
    }

    public void setProd1(String prod1) {
        this.prod1 = prod1;
    }

    public String getProd2() {
        return prod2;
    }

    public void setProd2(String prod2) {
        this.prod2 = prod2;
    }

    public String getProd3() {
        return prod3;
    }

    public void setProd3(String prod3) {
        this.prod3 = prod3;
    }

    public String getProd4() {
        return prod4;
    }

    public void setProd4(String prod4) {
        this.prod4 = prod4;
    }

    public String getProd5() {
        return prod5;
    }

    public void setProd5(String prod5) {
        this.prod5 = prod5;
    }

    public BigDecimal getValor() {
        return valor;
    }

    public void setValor(BigDecimal valor) {
        this.valor = valor;
    }

    public int getVigencia() {
        return vigencia;
    }

    public void setVigencia(int vigencia) {
        this.vigencia = vigencia;
    }

    public Paquete(Paquete r) {
        this.idpaquete = r.idpaquete;
        this.prod1 = r.prod1;
        this.prod2 = r.prod2;
        this.prod3 = r.prod3;
        this.prod4 = r.prod4;
        this.prod5 = r.prod5;
        this.valor = r.valor;
        this.vigencia = r.vigencia;
    }
    
    public Paquete() {
    }
    
    private int idpaquete;
    private String prod1;
    private String prod2;
    private String prod3;
    private String prod4;
    private String prod5;
    private BigDecimal valor;
    private int vigencia;
    
}
