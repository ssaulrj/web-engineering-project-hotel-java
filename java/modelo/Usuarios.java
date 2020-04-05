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
public class Usuarios {
    
    private String correo;
    private String nombre;
    private String apellido;
    private String telefono;

    
    public Usuarios() {}
    
    public Usuarios(Usuarios p) {
        this.correo = p.getCorreo();
        this.nombre = p.getNombre();
        this.apellido = p.getApellido();
        this.telefono = p.getTelefono();
    }     
   
    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    
    
}
