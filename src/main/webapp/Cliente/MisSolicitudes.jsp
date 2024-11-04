<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : MisSolicitudes
    Created on : 17 oct. 2024, 22:03:22
    Author     : Usuario local
--%>

<%@page import="Entidades.Solicitud"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        List<Solicitud> Lista= (List<Solicitud>) session.getAttribute("Lista");
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  
            if (session.getAttribute("id")==null){
                response.sendRedirect(request.getContextPath()+"/Acceso/Login.jsp");
            }
    %>
    <body>
        <h1>Mis Solicitudes</h1>
        <a href="Solicitud.jsp">Nueva solicitud</a>
        <table border="1">
            <thead>
                <td>Id Solicitud</td>
                <td>Titulo</td>
                <td>Fecha Necesidad</td>
                <td>Precio</td>
                <td>Estado</td>
            </thead>                
            <c:forEach var="campo" items="${Lista}">
            <tr>
                <td>${campo.idSolicitud}</td>
                <td>${campo.titulo}</td>
                <td>${campo.fechaNecesidad}</td>
                <td>${campo.precio}</td>
                <td><a href="ControlerCliente?Op=Consultar&Id=${campo.idSolicitud}">Consultar</a></td>
                <td><a href="ControlerCliente?Op=Modificar&Id=${campo.idSolicitud}">Modificar</a></td>
                <td><a href="ControlerCliente?Op=Eliminar&Id=${campo.idSolicitud}">Eliminar</a></td>
            </tr>
            </c:forEach>                
        </table> 
        <form action="../CerrarSesion" method="POST">
            <input type="submit" value="Cerrar Sesion">
        </form>
    </body>
    <%
        session.removeAttribute("Lista");
    %>
</html>
