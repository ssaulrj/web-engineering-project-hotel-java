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
//import modelo.Producto;

/**
 *
 * @author Saulp
 */
public class procesarEstado extends HttpServlet {
    conectar1 con;
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
       
        con = new conectar1("textolugar");
        Connection reg=null;
        
        reg = con.getConnection1();
        
        String textofuncion = request.getParameter("datafuncion");
        System.out.println(textofuncion);
        
        //USUARIO------------------------------------------------------------------------------------------
        if(textofuncion.equals("0")){
            String texto = request.getParameter("datausuario");
            int resultado=0;
        
        try {
            String SSQL="SELECT * FROM dbo.Hotel WHERE Localidad='"+texto+"' ";
            Statement stm= reg.createStatement();
            ResultSet rs=stm.executeQuery(SSQL);
            if(rs.next()){
                resultado=1;
                System.out.println("Comprobacion");
                String res1="Ookusuario";
                response.setContentType("text/html;charset=UTF-8");  
                response.getWriter().write(res1);
            }
        } catch (Exception e) {}  finally{}
        //USUARIO------------------------------------------------------------------------------------------
        }
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
