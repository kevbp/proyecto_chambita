
package Servlets;

import Datos.DAO_Acceso;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "Registrar", urlPatterns = {"/Acceso/Registrar"})
public class Registrar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Registrar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Registrar at " + request.getContextPath() + "</h1>");
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
        DAO_Acceso usuarioData = new DAO_Acceso();        
        String nomb = request.getParameter("txtNombre");
        String ape = request.getParameter("txtApellido");
        String correo = request.getParameter("txtCorreo");
        String clave = request.getParameter("txtContrasena");
        
        try{
            boolean access=usuarioData.registrarUsuario(request, nomb, ape, correo, clave);

            if(access==true){
              response.sendRedirect(request.getContextPath()); //Redirige al index por mientras
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
