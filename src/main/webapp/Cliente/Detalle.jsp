<%-- 
    Document   : Detalle
    Created on : 17 oct. 2024, 22:04:04
    Author     : Usuario local
--%>
<%@page import="Entidades.Solicitud"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        Solicitud sol = (Solicitud) request.getAttribute("Solicitud");
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalle de solicitud</title>
    </head>
    <body>
        <h1>Detalle de Solicitud</h1>
        <table border="1">
            <thead>
                <td>Id Solicitud</td>
                <td>Titulo</td>
                <td>Descripcion</td>
                <td>Departamento</td>
                <td>Provincia</td>
                <td>Distrito</td>
                <td>Precio</td>
                <td>Estado</td>
            </thead>                
            <tbody>
            <tr>
                <td><%= sol.getIdSolicitud()%></td>
                <td><%= sol.getTitulo()%></td>
                <td><%= sol.getDescripcion()%></td>
                <td><%= sol.getRegion()%></td>
                <td><%= sol.getProvincia()%></td>
                <td><%= sol.getDistrito()%></td>
                <td><%= sol.getPrecio()%></td>
                <td><%= sol.getEstado()%></td>
            </tr>
            </tbody>              
        </table>
    </body>
</html>
