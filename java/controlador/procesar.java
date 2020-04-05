/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;
import modelo.conectar1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.BOProcesarFormulario;
import modelo.Paquete;
//import modelo.Producto;

/**
 *
 * @author Saulp
 */
public class procesar extends HttpServlet {
    conectar1 con;
    conectar1 con2;
    conectar1 con3;
    conectar1 con4;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                 System.out.println("Procesando solicitudprocessrequest");
        }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                System.out.println("Procesando solicituddoget");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        //PrintWriter out = response.getWriter();
        String textoLUGAR = request.getParameter("dataGPS");
        String textodataGPS2 = request.getParameter("dataGPS2");//
        String textodataGPS3 = request.getParameter("dataGPS3");//
        
        con4 = new conectar1(textodataGPS3);
        Connection reg4=null;
        reg4 = con4.getConnection1();
        
        con3 = new conectar1(textodataGPS2);
        Connection reg3=null;
        reg3 = con3.getConnection1();
        
        con = new conectar1(textoLUGAR);
        Connection reg=null;
        reg = con.getConnection1();
        
        ResultSet rs2=null; 
        Statement s2= null;
        ResultSet rs=null; 
        Statement s= null;
        
        String textofuncion = request.getParameter("datafuncion");
        System.out.println(textofuncion);
        //INICIAR SESION-----------------------------------------------------------------------------------
        
        //Reserva----------------------------------------------------------------------------------------
        if(textofuncion.equals("8")){
            String texto1 = request.getParameter("datacorreo1");//
            String texto2 = request.getParameter("datanombre1");//
            String texto3 = request.getParameter("dataapellido1");//
            String texto4 = request.getParameter("datanum1");//
            String texto5 = request.getParameter("datatiporr");//
            String texto6 = request.getParameter("datadato2");
            String texto7 = request.getParameter("datafecha");
            String texto8 = request.getParameter("datadias");//
            int elid = 1;
            System.out.println("Procesando solicituddopost GenR (registro)");

            String sqlxx = "exec GenR ?,?,?,?,?,?,?,?";
            //System.out.println(sql); 
            try{
                System.out.println("Procesando solicituddopost GenR (registro)");
                PreparedStatement pst= reg.prepareStatement(sqlxx);
                pst.setString(1, texto1); //Correo--
                pst.setString(2, texto2); //Nombre--
                pst.setString(3, texto3); //Apellido--
                pst.setString(4, texto4); //Telefono--
                pst.setString(5, texto5); //tiporr--
                pst.setString(6, texto6); //tipoh--
                pst.setString(7, texto7); //fecha--
                pst.setString(8, texto8); //estadia--
                System.out.println("ok4");
                int n = pst.executeUpdate();
                //System.out.println(pst); 
                System.out.println("registrotar "+n);
                System.out.println("ok5");
                if(n>0){
                        try{
                              con2 = new conectar1(textoLUGAR);
                              Connection reg2=null;
                              System.out.println("hi id-----");
                              reg2=con2.getConnection1();
                              String SQL2= "select max(Id_reserva) from dbo.Reserva";
                              s2 = reg2.createStatement();
                              rs2 = s2.executeQuery(SQL2);
                              System.out.println(SQL2);  
                              System.out.println("Listar id : ");  
                              while (rs2.next()) {
                                     elid = rs2.getInt(1);
                              }          
                              System.out.println("elid "+elid);
                              System.out.println("Listar: FIN"); 
                        }
                        catch(Exception e){
                         System.out.println("ERROR "+e.getMessage());
                        }
                        finally {  
                        }
                    
                    System.out.println("registro listo");
                    String res2= Integer.toString(elid);
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
                else{
                    System.out.println("registro fallido");
                    String res2="Noregis";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
            } catch (Exception e) {}  finally{}
        } 
        
        //cancelarreserva
        else if(textofuncion.equals("7")){
            String texto1x = request.getParameter("dataid");//
          
            System.out.println("Procesando solicituddopost cancelar (reserva)");

            String sqlxx2 = "exec cancelar_reserva ?";
            //System.out.println(sql); 
            try{
                System.out.println("Procesando solicituddopost cancelar (reserva)");
                PreparedStatement pst2= reg.prepareStatement(sqlxx2);
                pst2.setString(1, texto1x); //Correo--
                System.out.println("ok4");
                int n = pst2.executeUpdate();
                //System.out.println(pst); 
                System.out.println("registrotar "+n);
                System.out.println("ok5");
                if(n>0){
                    System.out.println("registro listo");
                    String res2= "Cancelada";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
                else{
                    System.out.println("registro fallido");
                    String res2="Noregis";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
            } catch (Exception e) {}  finally{}
        } 
        
        
        //confirmar reserva ----------------------------------------------------------
        else if(textofuncion.equals("6")){
            String texto1 = request.getParameter("dataid");//
            
            System.out.println("Procesando solicituddopost confirmar (reserva)");

            String sqlxx = "exec confirmar_reserva ?";
            //System.out.println(sql); 
            try{
                System.out.println("Procesando solicituddopost confirmar (reserva)");
                PreparedStatement pst= reg.prepareStatement(sqlxx);
                pst.setString(1, texto1); //--
                System.out.println("ok4");
                int n = pst.executeUpdate();
                //System.out.println(pst); 
                System.out.println("registrotar "+n);
                System.out.println("ok5");
                if(n>0){
                    System.out.println("registro listo");
                    String res2= "Confirmada";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
                else{
                    System.out.println("Confirmacion fallida");
                    String res2="Noregis";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
            } catch (Exception e) {}  finally{}
        }
        
        //asignar habitacion ----------------------------------------------------------
        else if(textofuncion.equals("3")){
            String texto1 = request.getParameter("dataidhab");//
            String texto2 = request.getParameter("datanumhab");//
            
            
            System.out.println(textodataGPS2+" "+textofuncion+" "+texto1+" "+texto2);
            System.out.println("Procesando solicituddopost asignar (hab)");

            String sqlxx = "exec dbo.asignar_habitacion ?,?";
            //System.out.println(sql); 
            try{
                System.out.println("Procesando solicituddopost asignar (hab)");
                PreparedStatement pst3= reg3.prepareStatement(sqlxx);
                    pst3.setString(1, texto1); //--
                    pst3.setString(2, texto2); //--
                System.out.println("ok4");
                int n = pst3.executeUpdate();
                //System.out.println(pst); 
                System.out.println("registrotar "+n);
                System.out.println("ok5");
                if(n>0){
                    System.out.println("registro listo");
                    String res2= "Asignada";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
                else{
                    System.out.println("Confirmacion fallida");
                    String res2="No asignada";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
            } catch (Exception e) {}  finally{}
        }
        
           
        //desocupar habitacion -------------------------------------------------------------
        else if(textofuncion.equals("2")){
            String texto1 = request.getParameter("datanumhabdes");//
            
            System.out.println("Procesando solicituddopost desocupar hab(reserva)");
            
            System.out.println(textodataGPS3+" "+textofuncion+" "+texto1);    
            String sqlxx = "exec desocupar_habitacion ?";
            //System.out.println(sql); 
            try{
                System.out.println("Procesando solicituddopost desocupar hab(reserva)");
                PreparedStatement pst4= reg4.prepareStatement(sqlxx);
                pst4.setString(1, texto1); //numH--
                System.out.println("ok4");
                int n = pst4.executeUpdate();
                //System.out.println(pst); 
                System.out.println("registrotar "+n);
                System.out.println("ok5");
                if(n>0){
                    System.out.println("registro listo");
                    String res2= "desocupada";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
                else{
                    System.out.println("desocupacion fallida");
                    String res2="No desocupada";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
            } catch (Exception e) {}  finally{}
        } 
        
        /*
        //validar paquete ------------------------------------------------------------------
        if(textofuncion.equals("7")){
            String texto1 = request.getParameter("dataid");//
            int elid = 1;
            System.out.println("Procesando solicituddopost cancelar (reserva)");

            String sqlxx = "exec VALIDAR_PAQUETE ?";
            //System.out.println(sql); 
            try{
                System.out.println("Procesando solicituddopost cancelar (reserva)");
                PreparedStatement pst= reg.prepareStatement(sqlxx);
                pst.setString(1, texto1); //Correo--
                System.out.println("ok4");
                int n = pst.executeUpdate();
                //System.out.println(pst); 
                System.out.println("registrotar "+n);
                System.out.println("ok5");
                if(n>0){
                    System.out.println("registro listo");
                    String res2= "Cancelada";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
                else{
                    System.out.println("registro fallido");
                    String res2="Noregis";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
            } catch (Exception e) {}  finally{}
        } 
        
        */
        
        //Actualizar paquete ----------------------------------------------------------------
        else if(textofuncion.equals("4")){
            String texto1 = request.getParameter("dataprecio");//
            String texto2 = request.getParameter("datatipo");//
           
            System.out.println("Procesando solicituddopost actualizarpaquete");

            String sqlxx = "exec dbo.ACTUALIZAR_PAQUETE ?,?";
            //System.out.println(sql); 
            try{
                System.out.println("Procesando solicituddopost actualizarpaquete");
                PreparedStatement pst= reg.prepareStatement(sqlxx);
                pst.setString(1, texto1); //--
                pst.setString(2, texto2); //--
                System.out.println("ok4");
                int n = pst.executeUpdate();
                //System.out.println(pst); 
                System.out.println("registrotar "+n);
                System.out.println("ok5");
                if(n>0){
                    System.out.println("registro listo");
                    String res2= "Actualizado";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
                else{
                    System.out.println("registro fallido");
                    String res2="No actualizado";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
            } catch (Exception e) {}  finally{}
        } 
        
        /*
        //actualizar precio ---------------------------------------------------------------
        if(textofuncion.equals("7")){
            String texto1 = request.getParameter("dataid");//
            int elid = 1;
            System.out.println("Procesando solicituddopost actualizarprecio");

            String sqlxx = "exec ACTUALIZAR_PRECIO ?,?";
            //System.out.println(sql); 
            try{
                System.out.println("Procesando solicituddopost actualizarprecio");
                PreparedStatement pst= reg.prepareStatement(sqlxx);
                pst.setString(1, texto1); //Correo--
                System.out.println("ok4");
                int n = pst.executeUpdate();
                //System.out.println(pst); 
                System.out.println("registrotar "+n);
                System.out.println("ok5");
                if(n>0){
                    System.out.println("registro listo");
                    String res2= "Cancelada";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
                else{
                    System.out.println("registro fallido");
                    String res2="Noregis";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
            } catch (Exception e) {}  finally{}
        }
        */
        //Actualizar servicio --------------------------------------------------------------
        else if(textofuncion.equals("5")){
            String texto1 = request.getParameter("dataprecio");//
            String texto2 = request.getParameter("dataservicio");//
            System.out.println(texto2+texto1);
            System.out.println("Procesando solicituddopost Actualizar (reserva)");

            String sqlxx3 = "exec dbo.ACTUALIZAR_SERVICIO ?,?";
            //System.out.println(sql); 
            try{
                System.out.println("Procesando solicituddopost Actualizar (reserva)");
                PreparedStatement pst= reg.prepareStatement(sqlxx3);
                pst.setString(1, texto1); //--
                pst.setString(2, texto2); //--
                System.out.println("ok4");
                int n = pst.executeUpdate();
                //System.out.println(pst); 
                System.out.println("registrotar "+n);
                System.out.println("ok5");
                if(n>0){
                    System.out.println("registro listo");
                    String res2= "Actualizada";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
                else{
                    System.out.println("registro fallido");
                    String res2="No actualizado";
                    response.setContentType("text/html;charset=UTF-8");  
                    response.getWriter().write(res2);
                }
            } catch (Exception e) {}  finally{}
        } 
       
        //Producto agregar-----------------------------------------------------------------------------------------------------
        else{ System.out.println("No funcion en ajax encontrada"); }
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
