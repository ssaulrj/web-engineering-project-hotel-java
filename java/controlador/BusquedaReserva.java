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
import modelo.BOProcesarFormulario2;
import modelo.Busqueda;
//import modelo.Producto;

/**
 *
 * @author Saulp
 */
public class BusquedaReserva extends HttpServlet {

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
                 String textovalor = request.getParameter("datavalor");
                 String textovalor2 = request.getParameter("datavalor2");
                 String textolugar = request.getParameter("datalugar");
                 String textofun = request.getParameter("datafun");
                 
                 System.out.println("Process de Table2----------");
                 HttpSession miSession= request.getSession();//Objeto que permitira a session, a traves escribe datos
                 response.setContentType("text/html;charset=UTF-8"); 
                 ArrayList<Busqueda> miLista2 = BOProcesarFormulario2.generaListaDatosBusqueda(textovalor,textovalor2,textolugar,textofun); 
                 miSession.setAttribute("lista2", miLista2);
                 System.out.println("Process de Table2 listo-----");
                 response.sendRedirect("/hotelSPA/jsp/mostradorRes.jsp"); //Vincular a jsp
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
        System.out.println("Do de Table");
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
