<%-- 
    Document   : MisSolicitudes
    Created on : 17 oct. 2024, 22:03:22
    Author     : Usuario local
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  
            if (session.getAttribute("id")==null){
                response.sendRedirect("/Acceso/Login.jsp");
            }
    %>
    <body>
        <h1>Mis Solicitudes</h1>
        <a href="Solicitud.jsp">Nueva solicitud</a>
    </body>
</html>
