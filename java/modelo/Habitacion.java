/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author PATY
 */
public class Habitacion {
    String numhab;
    String numper;
    String tipoh;
    String precio;
    String disponible;

    public Habitacion(Habitacion p) {
        this.numhab = p.getNumhab();
        this.numper = p.getNumper();
        this.tipoh = p.getTipoh();
        this.precio = p.getPrecio();
        this.disponible = p.getDisponible();
    }

    public Habitacion() {
    }
    
    public String getNumhab() {
        return numhab;
    }

    public void setNumhab(String numhab) {
        this.numhab = numhab;
    }

    public String getNumper() {
        return numper;
    }

    public void setNumper(String numper) {
        this.numper = numper;
    }

    public String getTipoh() {
        return tipoh;
    }

    public void setTipoh(String tipoh) {
        this.tipoh = tipoh;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public String getDisponible() {
        return disponible;
    }

    public void setDisponible(String disponible) {
        this.disponible = disponible;
    }
}
