<%-- 
    Document   : index
    Created on : 15 oct. 2024, 19:13:09
    Author     : Usuario local
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <title>Chambita.pe</title>
        <style>
            body {
                background-color: #f9f9f9;
            }
            .login-container {
                max-width: 400px;
                margin-top: 50px;
                padding: 40px;
                background-color: white;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            .btn-primary {
                background-color: #3b3bff;
                border: none;
            }
            .btn-primary:hover {
                background-color: #2a2aff;
            }
            .register-link {
                color: #3b3bff;
            }
            nav {
                padding: 20px;
                display: flex;
                justify-content: flex-end;
            }
            .register-btn {
                margin-left: auto;
                margin-right: 10px;
            }
            .navbar-text {
                margin-right: 10px;
            }
        </style>
    </head>
    <body>
        <nav>
            <span class="navbar-text">¿Buscas trabajar?</span>
            <a href="#" class="btn btn-primary register-btn">Registrarse</a>
        </nav>
        <h1 class="text-center">Chambita<span class="text-primary">.pe</span></h1>
        <div class="container d-flex justify-content-center">
            <div class="login-container">
                <h2 class="text-center mb-4">Inicia sesión</h2>
                <form action="Login" method="post">
                    <div class="mb-3">
                        <input type="email" class="form-control" name="txtEmail" id="txtEmail" placeholder="Correo electrónico" required>
                    </div>
                    <div class="mb-3">
                        <input type="password" class="form-control" name="txtClave" id="txtClave" placeholder="Contraseña" required>
                    </div>
                    <div class="mb-3 text-end">
                        <a href="#" class="text-muted">Olvidé mi contraseña</a>
                    </div>
                    <div class="d-grid gap-2 mx-auto">
                        <button type="submit" class="btn btn-primary">Ingresar</button>
                    </div>
                    <hr>
                    <div class="text-center">
                        <span>¿No tienes cuenta? <a href="#" class="register-link">Regístrate</a></span>
                    </div>
                    <div class="text-center">
                        <span><%
                        String mensaje = (String)request.getAttribute("mensajeError");  
                        if(mensaje!=null)
                        out.println("<font color=red size=4px>"+mensaje+"</font>");
                        %></span>
                    </div>
                </form>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
