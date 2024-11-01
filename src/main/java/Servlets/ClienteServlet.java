
package Servlets;

import Datos.DAO_Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "NuevaSolicitud", urlPatterns = {"/NuevaSolicitud"})
public class ClienteServlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NuevaSolicitud</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NuevaSolicitud at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
        
        DAO_Cliente dAO_Cliente = new DAO_Cliente();
        try{
          boolean access = dAO_Cliente.registrarSolicitud(request, 2, titulo, descripcion, fecha, region, provincia, distrito, precio);
          
          if(access==true){
            response.sendRedirect(request.getContextPath() + "/Cliente/MisSolicitudes.jsp"); 
          }else{ 
            request.setAttribute("mensajeError", "Los datos son incorrectos!");
            request.getRequestDispatcher("").forward(request, response);
          }
        }catch(Exception ex) {
            ex.printStackTrace();
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
