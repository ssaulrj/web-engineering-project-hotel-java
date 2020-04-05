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

/**
 *
 * @author Saúl-s
 */
public class BOProcesarFormulario2 {
    
    static public ArrayList <Busqueda> generaListaDatosBusqueda(String textovalor,String textovalor2, String textolugar, String textofun){
       ArrayList <Busqueda> miLista2 ;
       miLista2= new ArrayList <Busqueda>();
       Busqueda miBusqueda= new Busqueda();
       System.out.println(textovalor+"-"+textovalor2+"-"+ textolugar+"-"+ textofun);
       conectar1 con=new conectar1(textolugar);
       Connection reg=null;
       ResultSet rs=null; 
       Statement s = null; 
            try{
                   System.out.println("hi-----");
                   reg=con.getConnection1();
                   String SQL="";
                   if (textofun.equals("0")){ SQL= "exec dbo.consultar_precio "+textovalor; }
                   else if (textofun.equals("1")){ SQL= "exec dbo.BUSCAR_SERVICIO '"+textovalor+"'"; }
                   else if (textofun.equals("2")){ SQL= "exec dbo.buscar_paquete '"+textovalor+"','"+textovalor2+"'"; }
                   
                   s = reg.createStatement();
                   rs = s.executeQuery(SQL);
                   System.out.println(SQL);  
                   System.out.println("Listar: ");  
                   while (rs.next()) {
                          if (textofun.equals("0")||textofun.equals("1")){
                                 
                                miBusqueda.setDato0(rs.getString(1));
                                miBusqueda.setDato1(rs.getString(2));
                                miBusqueda.setDato2(rs.getString(3));
                                //System.out.println(rs.getString(1)+"-"+rs.getString(2)+"-"+rs.getString(3)); 
                          }
                          else if (textofun.equals("2")){
                                 
                                miBusqueda.setDato0(rs.getString(1));
                                miBusqueda.setDato1(rs.getString(2));
                                miBusqueda.setDato2(rs.getString(3));
                                miBusqueda.setDato3(rs.getString(4));
                                miBusqueda.setDato4(rs.getString(5));
                                miBusqueda.setDato5(rs.getString(6));
                                miBusqueda.setDato6(rs.getString(7));
                                System.out.println(rs.getString(1)+"-"+rs.getString(2)+"-"+rs.getString(3)); 
                          }
                          /*
                          miBusqueda.setDato0(rs.getString(4));
                          miBusqueda.setDato0(rs.getString(5));
                          miBusqueda.setDato0(rs.getString(6));
                          miBusqueda.setDato0(rs.getString(7));*/
                          miLista2.add(new Busqueda(miBusqueda));
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
    
  
}
