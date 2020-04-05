/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Saulp
 */
public class Administradores {

    public String getCuenta() {
        return cuenta;
    }

    public void setCuenta(String cuenta) {
        this.cuenta = cuenta;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNombrehotel() {
        return nombrehotel;
    }

    public void setNombrehotel(String nombrehotel) {
        this.nombrehotel = nombrehotel;
    }
    
    private String cuenta;
    private String password;
    private String nombrehotel;
    
    public Administradores() {}
    
    public Administradores(Administradores p) {
        this.cuenta = p.getCuenta();
        this.password = p.getPassword();
        this.nombrehotel = p.getNombrehotel();
    }     
    
}
