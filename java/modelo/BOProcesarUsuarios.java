/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;
import modelo.conectar1;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.math.BigInteger;
import java.sql.SQLException;
import modelo.Reserva;

/**
 *
 * @author Saúl-s
 */
public class BOProcesarUsuarios {
    
    static public ArrayList<Usuarios> generaListaUsuarios(String textoidlugar){
       
       ArrayList<Usuarios> miLista2 ;
       miLista2= new ArrayList<Usuarios>();
       Usuarios miUsuario= new Usuarios();
       conectar1 con=new conectar1(textoidlugar);
       Connection reg=null;
       ResultSet rs=null; 
       Statement s = null; 
       try{
              System.out.println("hi-----");
              reg=con.getConnection1();
              //String SQL= "select * from [192.168.1.10\CDMX].CDMX.dbo.Usuario";
              String SQL= "select * from dbo.Usuario";
              s = reg.createStatement();
              rs = s.executeQuery(SQL);
              System.out.println(SQL);  
              System.out.println("Listar: ");  
              while (rs.next()) {
                     miUsuario.setCorreo(rs.getString(1));
                     miUsuario.setNombre(rs.getString(2));
                     miUsuario.setApellido(rs.getString(3));
                     miUsuario.setTelefono(rs.getString(4));
                     miLista2.add(new Usuarios(miUsuario));
              }          
              System.out.println("Listar: FIN"); 
        }
        catch(Exception e){
         System.out.println("ERROR "+e.getMessage());
        }
        finally {  
        }
        return miLista2; 
   }
    
    static public ArrayList<Habitacion> generaListaHabitacion(String textoidlugar, String textodatatipo){    
       ArrayList<Habitacion> miLista2 ;
       miLista2= new ArrayList<Habitacion>();
       Habitacion miHabitacion= new Habitacion();
       conectar1 con=new conectar1(textoidlugar);
       Connection reg=null;
       ResultSet rs=null; 
       Statement s = null; 
       try{
              System.out.println("hi-----");
              reg=con.getConnection1();
              //String SQL= "select * from [192.168.1.10\CDMX].CDMX.dbo.Usuario";
              String SQL= "exec dbo.ver_H_libres '"+textodatatipo+"'";
              s = reg.createStatement();
              rs = s.executeQuery(SQL);
              System.out.println(SQL);  
              System.out.println("Listar: ");  
              while (rs.next()) {
                     miHabitacion.setNumhab(rs.getString(1));
                     miHabitacion.setNumper(rs.getString(2));
                     miHabitacion.setTipoh(rs.getString(3));
                     miHabitacion.setPrecio(rs.getString(4));
                     miHabitacion.setDisponible(rs.getString(5));
                     miLista2.add(new Habitacion(miHabitacion));
              }          
              System.out.println("Listar habitacion: FIN"); 
        }
        catch(Exception e){
         System.out.println("ERROR "+e.getMessage());
        }
        finally {  
        }
        return miLista2; 
   }
    
    static public ArrayList<Administradores> generaListaAdms(String textoidlugar){  
       ArrayList<Administradores> miLista3 ;
       miLista3= new ArrayList<Administradores>();
       Administradores miAdm= new Administradores();
       conectar1 con=new conectar1(textoidlugar);
       Connection reg=null;
       ResultSet rs=null; 
       Statement s = null; 
       try{
              System.out.println("hi-----");
              reg=con.getConnection1();
              String SQL= "select * from dbo.Administrador";
              s = reg.createStatement();
              rs = s.executeQuery(SQL);
              System.out.println(SQL);  
              System.out.println("Listar: ");  
              while (rs.next()) {
                     miAdm.setCuenta(rs.getString(1));
                     miAdm.setPassword(rs.getString(2));
                     miAdm.setNombrehotel(rs.getString(3));
                     miLista3.add(new Administradores(miAdm));
              }          
              System.out.println("Listar: FIN"); 
        }
        catch(Exception e){
         System.out.println("ERROR "+e.getMessage());
        }
        finally {  
        }
        return miLista3; 
   }
    
    static public ArrayList<Reserva> generaListaReserva(String textoidlugar){  
       ArrayList<Reserva> miLista4 ;
       miLista4= new ArrayList<Reserva>();
       Reserva miReserva= new Reserva();
       conectar1 con=new conectar1(textoidlugar);
       Connection reg=null;
       ResultSet rs=null; 
       Statement s = null; 
       try{
              System.out.println("hi-----");
              reg=con.getConnection1();
              String SQL= "select * from dbo.Reserva";
              s = reg.createStatement();
              rs = s.executeQuery(SQL);
              System.out.println(SQL);  
              System.out.println("Listar: ");  
              while (rs.next()) {
                     miReserva.setIdreserva(rs.getInt(1));
                     miReserva.setCorreo(rs.getString(2));
                     miReserva.setTipoR(rs.getString(3));
                     miReserva.setLlavetipo(rs.getInt(4));
                     miReserva.setInie(rs.getDate(5));
                     miReserva.setEstadia(rs.getInt(6));
                     miReserva.setValido(rs.getInt(7));
                     miReserva.setNomr(rs.getString(8));
                     miLista4.add(new Reserva(miReserva));
              }          
              System.out.println("Listar: FIN"); 
        }
        catch(Exception e){
         System.out.println("ERROR "+e.getMessage());
        }
        finally {  
        }
        return miLista4; 
   }
    
    static public ArrayList<Servicio> generaListaServicio(String textoidlugar){  
       ArrayList<Servicio> miLista5 ;
       miLista5 = new ArrayList<Servicio>();
       Servicio miServicio = new Servicio();
       conectar1 con=new conectar1(textoidlugar);
       Connection reg=null;
       ResultSet rs=null; 
       Statement s = null; 
       try{
              System.out.println("hi-----");
              reg=con.getConnection1();
              String SQL= "select * from dbo.Servicio";
              s = reg.createStatement();
              rs = s.executeQuery(SQL);
              System.out.println(SQL);  
              System.out.println("Listar: ");  
              while (rs.next()) {
                     miServicio.setIdservicio(rs.getInt(1));
                     miServicio.setNombre_s(rs.getString(2));
                     miServicio.setHorario(rs.getString(3));
                     miServicio.setCosto(rs.getBigDecimal(4));
                     miServicio.setCapacidad(rs.getInt(5));
                     miLista5.add(new Servicio(miServicio));
              }          
              System.out.println("Listar: FIN"); 
        }
        catch(Exception e){
         System.out.println("ERROR "+e.getMessage());
        }
        finally {  
        }
        return miLista5; 
   }
    
    static public ArrayList<Paquete> generaListaPaquete(String textoidlugar){  
       ArrayList<Paquete> miLista6 ;
       miLista6 = new ArrayList<Paquete>();
       Paquete miPaquete = new Paquete();
       conectar1 con=new conectar1(textoidlugar);
       Connection reg=null;
       ResultSet rs=null; 
       Statement s = null; 
       try{
              System.out.println("hi-----");
              reg=con.getConnection1();
              String SQL= "select * from dbo.Paquete";
              s = reg.createStatement();
              rs = s.executeQuery(SQL);
              System.out.println(SQL);  
              System.out.println("Listar: ");  
              while (rs.next()) {
                     miPaquete.setIdpaquete(rs.getInt(1));
                     miPaquete.setProd1(rs.getString(2));
                     miPaquete.setProd2(rs.getString(3));
                     miPaquete.setProd3(rs.getString(4));
                     miPaquete.setProd4(rs.getString(5));
                     miPaquete.setProd5(rs.getString(6));
                     miPaquete.setValor(rs.getBigDecimal(7));
                     miPaquete.setVigencia(rs.getInt(8));
                     miLista6.add(new Paquete(miPaquete));
              }          
              System.out.println("Listar: FIN"); 
        }
        catch(Exception e){
         System.out.println("ERROR "+e.getMessage());
        }
        finally {  
        }
        return miLista6; 
   }
    
    /*
    static public ArrayList<Reserva> generaReserva(String idR){  
       ArrayList<Reserva> miLista4 ;
       miLista4= new ArrayList<Reserva>();
       Reserva miAdm= new Reserva();
       conectar1 con=new conectar1();
       Connection reg=null;
       ResultSet rs=null; 
       Statement s = null; 
       try{
              System.out.println("hi-----");
              reg=con.getConnection1();
              String SQL= "select h.Telefono, h.Correo, h.Nombre_U from dbo.Reserva as t\n" +
                        "inner join\n" +
                        "dbo.Usuario as h\n" +
                        "on h.Correo=t.Correo\n" +
                        "and t.Id_Reserva="+idR;
              s = reg.createStatement();
              rs = s.executeQuery(SQL);
              System.out.println(SQL);  
              System.out.println("Listar: ");  
              while (rs.next()) {
                     miAdm.setTelefonoreserva(rs.getString(1));
                     System.out.println(rs.getString(1));
                     miAdm.setCorreoreserva(rs.getString(2));
                     System.out.println(rs.getString(2));
                     miAdm.setNombrereserva(rs.getString(3));
                     System.out.println(rs.getString(3));
              }          
              System.out.println("Listar: FIN"); 
        }
        catch(Exception e){
         System.out.println("ERROR "+e.getMessage());
        }
        finally {  
        }
        return miLista4; 
   }*/
}
