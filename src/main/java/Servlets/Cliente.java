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
        DAO_Cliente dAO_Cliente = new DAO_Cliente();
        String Op =request.getParameter("Op");
        int id = Integer.parseInt(request.getSession().getAttribute("id").toString()); 
        try {
            switch (Op) {
                case "Listar":
                    ArrayList<Solicitud> lista= new ArrayList<Solicitud>();
                    lista = dAO_Cliente.listarMisSolicitudes(request, id);
                    request.setAttribute("Lista", lista);
                    request.getRequestDispatcher("/Cliente/MisSolicitudes.jsp").forward(request, response);
                    //response.sendRedirect(request.getContextPath() + "/Cliente/MisSolicitudes.jsp"); 
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String titulo = request.getParameter("txtTitulo");
        String descripcion = request.getParameter("txtDescripcion");
        String region = request.getParameter("txtRegion");
        String provincia = request.getParameter("txtProvincia");
        String distrito = request.getParameter("txtDistrito");
        String fecha = request.getParameter("txtFecha");
        float precio = Float.parseFloat(request.getParameter("txtPrecio"));
        int id = Integer.parseInt(request.getSession().getAttribute("id").toString()); 
        
        DAO_Cliente dAO_Cliente = new DAO_Cliente();
        try{
          boolean access = dAO_Cliente.registrarSolicitud(request, id, titulo, descripcion, fecha, region, provincia, distrito, precio);
          
          if(access==true){
            ArrayList<Solicitud> lista= new ArrayList<Solicitud>();
            lista = dAO_Cliente.listarMisSolicitudes(request, id);
            request.setAttribute("Lista", lista);
            response.sendRedirect(request.getContextPath() + "/Cliente/MisSolicitudes.jsp"); 
          }else{ 
            request.setAttribute("mensajeError", "Los datos son incorrectos!");
            request.getRequestDispatcher("").forward(request, response);
          }
        }catch(Exception ex) {
            ex.getMessage();
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
