/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Date;

/**
 *
 * @author SQL&MySQL
 */
public class Reservaciones {

    public int getIdreserva() {
        return idreserva;
    }

    public void setIdreserva(int idreserva) {
        this.idreserva = idreserva;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getTipor() {
        return tipor;
    }

    public void setTipor(String tipor) {
        this.tipor = tipor;
    }

    public int getLlavetipo() {
        return llavetipo;
    }

    public void setLlavetipo(int llavetipo) {
        this.llavetipo = llavetipo;
    }

    public Date getInie() {
        return inie;
    }

    public void setInie(Date inie) {
        this.inie = inie;
    }

    public int getEstadia() {
        return estadia;
    }

    public void setEstadia(int estadia) {
        this.estadia = estadia;
    }

    public int getValido() {
        return valido;
    }

    public void setValido(int valido) {
        this.valido = valido;
    }

    public String getNomr() {
        return nomr;
    }

    public void setNomr(String nomr) {
        this.nomr = nomr;
    }
    
    private int idreserva;
    private String correo;
    private String tipor;
    private int llavetipo;
    private Date inie;
    private int estadia;
    private int valido;
    private String nomr;
  
    public Reservaciones(Reservaciones p) {
        this.idreserva = p.getIdreserva();
        this.correo = p.getCorreo();
        this.tipor = p.getTipor();
        this.llavetipo = p.getLlavetipo();
        this.inie = p.getInie();
        this.estadia = p.getEstadia();
        this.valido = p.getValido();
        this.nomr = p.getNomr();
    }
    
    public Reservaciones() {
    }
    
}
