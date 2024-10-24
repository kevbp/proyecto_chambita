<%-- 
    Document   : Registrar
    Created on : 21 sep 2024, 11:57:30 p.m.
    Author     : Eduardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registrar</h1>
        <form action="Registrar" method="post">            
            <div class="mb-3">
                <input type="text" class="form-control" name="txtNombre" id="txtNombre" placeholder="Nombres" required>
            </div>          
            <div class="mb-3">
                <input type="text" class="form-control" name="txtApellido" id="txtApellido" placeholder="Apellidos" required>
            </div>          
            <div class="mb-3">
                <input type="email" class="form-control" name="txtCorreo" id="txtCorreo" placeholder="Correo" required>
            </div>          
            <div class="mb-3">
                <input type="password" class="form-control" name="txtContrasena" id="txtContrasena" placeholder="Contraseña" required>
            </div>          
            <div class="mb-3">
                <input type="password" class="form-control" name="txtContrasena2" id="txtContrasena2" placeholder="Confirmar contraseña" required>
            </div>
            <input type="submit" value="Crear cuenta" name="btnRegistrar" />
        </form>
    </body>
</html>
