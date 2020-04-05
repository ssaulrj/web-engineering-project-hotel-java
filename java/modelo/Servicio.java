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
public class Servicio {

    public int getIdservicio() {
        return idservicio;
    }

    public void setIdservicio(int idservicio) {
        this.idservicio = idservicio;
    }

    public String getNombre_s() {
        return Nombre_s;
    }

    public void setNombre_s(String Nombre_s) {
        this.Nombre_s = Nombre_s;
    }

    public String getHorario() {
        return Horario;
    }

    public void setHorario(String Horario) {
        this.Horario = Horario;
    }

    public BigDecimal getCosto() {
        return costo;
    }

    public void setCosto(BigDecimal costo) {
        this.costo = costo;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public Servicio(Servicio s) {
        this.idservicio = s.idservicio;
        this.Nombre_s = s.Nombre_s;
        this.Horario = s.Horario;
        this.costo = s.costo;
        this.capacidad = s.capacidad;
    }
    
    public Servicio() {
    }
    
    private int idservicio;
    private String Nombre_s;
    private String Horario;
    private BigDecimal costo;
    private int capacidad;
    
}
