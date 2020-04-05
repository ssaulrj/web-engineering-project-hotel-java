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
public class Busqueda {

    public Busqueda(Busqueda p) {
        this.dato0 = p.getDato0();
        this.dato1 = p.getDato1();
        this.dato2 = p.getDato2();
        this.dato3 = p.getDato3();
        this.dato4 = p.getDato4();
        this.dato5 = p.getDato5();
        this.dato6 = p.getDato6();
    }
    
    public Busqueda() {
    }

    public String getDato0() {
        return dato0;
    }

    public void setDato0(String dato0) {
        this.dato0 = dato0;
    }

    public String getDato1() {
        return dato1;
    }

    public void setDato1(String dato1) {
        this.dato1 = dato1;
    }

    public String getDato2() {
        return dato2;
    }

    public void setDato2(String dato2) {
        this.dato2 = dato2;
    }

    public String getDato3() {
        return dato3;
    }

    public void setDato3(String dato3) {
        this.dato3 = dato3;
    }

    public String getDato4() {
        return dato4;
    }

    public void setDato4(String dato4) {
        this.dato4 = dato4;
    }

    public String getDato5() {
        return dato5;
    }

    public void setDato5(String dato5) {
        this.dato5 = dato5;
    }

    public String getDato6() {
        return dato6;
    }

    public void setDato6(String dato6) {
        this.dato6 = dato6;
    }

    private String dato0;
    private String dato1;
    private String dato2;
    private String dato3;
    private String dato4;
    private String dato5;
    private String dato6;
    
}
