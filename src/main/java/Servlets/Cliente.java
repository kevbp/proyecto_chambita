/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import Datos.DAO_Cliente;
import Entidades.Solicitud;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Usuario local
 */
@WebServlet(name = "Cliente", urlPatterns = {"/Cliente"})
public class Cliente extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int idSolicitud = Integer.parseInt(request.getParameter("txtId"));
        try {            
            request.setAttribute("codigo", idSolicitud);
            request.getRequestDispatcher("/Cliente/Detalle.jsp").forward(request, response);
        } catch (Exception e) {
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Solicitud solicitud = new Solicitud(request.getParameter("txtTitulo"), 
                                            request.getParameter("txtDescripcion"), 
                                            request.getParameter("txtFecha"), 
                                            request.getParameter("txtRegion"), 
                                            request.getParameter("txtProvincia"), 
                                            request.getParameter("txtDistrito"), 
                                            Float.parseFloat(request.getParameter("txtPrecio")));
        int id = Integer.parseInt(request.getSession().getAttribute("id").toString()); 
        
        DAO_Cliente dAO_Cliente = new DAO_Cliente();
        try{
            boolean access = dAO_Cliente.registrarSolicitud(id, solicitud);
          
            if(access==true){
                HttpSession session = request.getSession(false);
                session.setAttribute("Lista", listarMisSolicitudes(id));
                response.sendRedirect(request.getContextPath() + "/Cliente/MisSolicitudes.jsp"); 
            }else{ 
                request.setAttribute("mensajeError", "Los datos son incorrectos!");
                request.getRequestDispatcher("").forward(request, response);
            }
        }catch(Exception ex) {
            ex.getMessage();
        }
    }
    
    
    private ArrayList<Solicitud> listarMisSolicitudes(int id){
        DAO_Cliente dAO_Cliente = new DAO_Cliente();
        ArrayList<Solicitud> lista= new ArrayList<Solicitud>();
        try {
            lista = dAO_Cliente.listarMisSolicitudes(id);
        } catch (Exception e) {
        }
        return lista;
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
