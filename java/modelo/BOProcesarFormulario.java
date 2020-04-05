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
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Saúl-s
 */
public class BOProcesarFormulario {
    /*
    static public ArrayList<Producto> generaListaDatos(){
       
       ArrayList<Producto> miLista1 ;
       miLista1= new ArrayList<Producto>();
       Producto miProducto= new Producto();
       conectar1 con=new conectar1();
       Connection reg=null;
       ResultSet rs=null; 
       Statement s = null; 
       try{
              System.out.println("hi-----");
              reg=con.getConnection1();
              String SQL= "SELECT *FROM PRODUCTO";
              s = reg.createStatement();
              rs = s.executeQuery(SQL);
              System.out.println(SQL);  
              System.out.println("Listar: ");  
              while (rs.next()) {     
                     miProducto.setIdproducto(rs.getInt(1));
                     miProducto.setFoto(rs.getString(2));
                     miProducto.setCosto(rs.getFloat(3));
                     miProducto.setStock(rs.getInt(4));
                     miProducto.setTamanio(rs.getString(5));
                     miProducto.setColor(rs.getString(6));
                     miLista1.add(new Producto(miProducto));
              }          
              System.out.println("Listar: FIN"); 
        }
        catch(Exception e){
         System.out.println("ERROR "+e.getMessage());
        }
        finally {  
        }
        return miLista1; 
   }
    
   static public void restaDatos(int intresta,int id) throws SQLException{
       conectar1 con=new conectar1();
       Connection reg=null;
       reg=con.getConnection1();
       try{
            System.out.println("hi-modificar");
            PreparedStatement pst= reg.prepareStatement("UPDATE PRODUCTO SET STOCK=STOCK-? WHERE ID_PRODUCTO=?");
            pst.setString(1,Integer.toString(intresta));
            pst.setString(2,Integer.toString(id));
            int n=pst.executeUpdate();
            if (n == 1) {
                System.out.println("Modificacion yey!");
            } else {
                System.out.println("Modificacion pff!");
            }
        }
        catch(Exception e){
         System.out.println("ERROR "+e.getMessage());
        }
        finally {  
        } 
   }
*/
}
