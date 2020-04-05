/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.BOProcesarUsuarios;
import modelo.Reserva;
import modelo.conectar1;

/**
 *
 * @author Saulp
 */
public class procesarEditar extends HttpServlet {
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
                 String textoidReserva = request.getParameter("dataidReserva");
                 String textoidLugar = request.getParameter("datalugar");
                 HttpSession session = request.getSession(true);
                //PrintWriter out = response.getWriter();

                con = new conectar1(textoidLugar);
                Connection reg=null;
                reg = con.getConnection1();
                
                ResultSet rs=null; 
                Statement s = null; 
                  
                String textofuncion = request.getParameter("datafuncion");
                System.out.println(textoidLugar);
                System.out.println(textofuncion);
                //INICIAR SESION-----------------------------------------------------------------------------------
        
                //REGISTRAR----------------------------------------------------------------------------------------
                if(textofuncion.equals("5")){
                    String idR = request.getParameter("dataidReserva");//
                    String fin = "";

                    System.out.println("Procesando solicituddopost USUARIO (ID)");

                    //String sql = "INSERT INTO dbo.Usuario (Correo,Nombre_U,Apellido_P,Telefono) VALUES (?,?,?,?)";
                        try{
                            System.out.println("hi-----");
                            reg=con.getConnection1();
                            String SQL= "exec dbo.buscar_usuario "+idR;
                            s = reg.createStatement();
                            rs = s.executeQuery(SQL);
                            System.out.println(SQL);  
                            System.out.println("Listar: ");  
                            while (rs.next()) {
                                   fin=fin+rs.getString(1)+"#";
                                   fin=fin+rs.getString(2)+"#";
                                   fin=fin+rs.getString(3)+"#";
                                   fin=fin+rs.getString(4)+"#";
                                   fin=fin+rs.getString(5)+"#";
                                   fin=fin+rs.getString(6)+"#";
                                   fin=fin+rs.getString(7)+"#";
                                   fin=fin+rs.getString(8)+"#";
                            }          
                            System.out.println("Listar: FIN"); 
                            System.out.println("ok5");
                            
                            System.out.println("registro listo");
                            //String res2="Ookregis";
                            response.setContentType("text/html;charset=UTF-8"); 
                            System.out.println(fin);
                            response.getWriter().write(fin);
                            
                        } catch (Exception e) {}  finally{}
                }
                 /*
                 System.out.println("Process de Table2----------");
                 HttpSession miSession= request.getSession();//Objeto que permitira a session, a traves escribe datos
                 response.setContentType("text/html;charset=UTF-8"); 
                 ArrayList<Reserva> miReserva = BOProcesarUsuarios.generaReserva(textoidReserva); 
                 miSession.setAttribute("listaR", miReserva);
                 System.out.println("Lista obtenida----------");
                 response.sendRedirect("/hotelSPA/jsp/mostradorReservas.jsp"); //Vincular a jsp
                */
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
        System.out.println("Get de Table Editar");
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
        System.out.println("Get de Table Editar");
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
