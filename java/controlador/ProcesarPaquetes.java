/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.BOProcesarUsuarios;
import modelo.Paquete;
/**
 *
 * @author SQL&MySQL
 */
public class ProcesarPaquetes extends HttpServlet{
    protected void processRequest (HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        String textoidlugar = request.getParameter("datalugar");
        System.out.println("Process de Table2----------");
        HttpSession miSession= request.getSession();
        response.setContentType("text/html;charset=UTF-8"); 
        ArrayList<Paquete> miLista2 = BOProcesarUsuarios.generaListaPaquete(textoidlugar); 
        miSession.setAttribute("lista2", miLista2);
        response.sendRedirect("/hotelSPA/jsp/mostradorPaquetes.jsp");
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
        System.out.println("Get de Table");
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