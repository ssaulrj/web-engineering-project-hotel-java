/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import modelo.Administrador;
import modelo.BOProcesarFormulario2;
//import modelo.Producto;
import modelo.conectar1;

/**
 *
 * @author Saulp
 */
public class procesarEditarP extends HttpServlet {

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
                 System.out.println("Process de Table2----------");
                 HttpSession miSession= request.getSession();//Objeto que permitira a session, a traves escribe datos
                 
                 String textox = request.getParameter("dataidE");
                 String idx="";
                 String fotox="";
                 String costox="";
                 String stockx="";
                 String tamx="";
                 String colorx="";
                 conectar1 con=new conectar1("textolugar");
                Connection reg=null;
                ResultSet rs=null; 
                Statement s = null; 
                try{
                       System.out.println("hi editar producto-----");
                       reg=con.getConnection1();
                       String SQL= "SELECT *FROM PRODUCTO WHERE ID_PRODUCTO='"+textox+"' ";
                       s = reg.createStatement();
                       rs = s.executeQuery(SQL);
                       System.out.println(SQL);  
                       System.out.println("Listar: ");  
                       while (rs.next()) {
                              idx = Integer.toString( rs.getInt(1) ) ;
                              fotox = rs.getString(2) ;
                              costox = Float.toString( rs.getFloat(3) );
                              stockx = Integer.toString( rs.getInt(4) );
                              tamx = rs.getString(5) ;
                              colorx =rs.getString(6) ;
                       }          
                       System.out.println("Listar: FIN"); 
                       //String res2A="OokE";
                       String totaal=colorx+"-"+costox+"-"+stockx+"-"+tamx+"-"+fotox;
                       response.setContentType("text/html;charset=UTF-8");  
                       response.getWriter().write(totaal);
                 }
                 catch(Exception e){
                  System.out.println("ERROR "+e.getMessage());
                 }
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
        System.out.println("Get de Table");
        processRequest(request, response);
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
        System.out.println("Post de Table");
        processRequest(request, response);
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
