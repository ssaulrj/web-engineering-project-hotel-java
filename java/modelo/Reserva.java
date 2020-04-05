/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.Date;

/**
 *
 * @author SQL&MySQL
 */
public class Reserva {
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

    public String getTipoR() {
        return tipoR;
    }

    public void setTipoR(String tipoR) {
        this.tipoR = tipoR;
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

    public void setEstadia(int Estadia) {
        this.estadia = Estadia;
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

    public Reserva(Reserva p) {
        this.idreserva = p.idreserva;
        this.correo = p.correo;
        this.tipoR = p.tipoR;
        this.llavetipo = p.llavetipo;
        this.inie = p.inie;
        this.estadia = p.estadia;
        this.valido = p.valido;
        this.nomr = p.nomr;
    }
    
    public Reserva() {}
    
    private int idreserva;
    private String correo;
    private String tipoR;
    private int llavetipo;
    private Date inie;
    private int estadia;
    private int valido;
    private String nomr;
}
