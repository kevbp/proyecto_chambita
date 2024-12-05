<%-- 
    Document   : Login
    Created on : 17 oct. 2024, 22:08:39
    Author     : Usuario local
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="..\styles\styles.css">
        <title>Chambita.pe</title>
    </head>
    <%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  
            if (session.getAttribute("id")!=null){
                response.sendRedirect(request.getContextPath()+"/Cliente/MisSolicitudes.jsp");
            }
    %>
    <body>
        <div class="container">
            <header class="d-flex justify-content-end py-3">
                <ul class="nav nav-pills">
                    <li class="nav-item">
                        <a href="#" class="nav-link color-links">¿Quieres trabajar?</a>
                    </li>
                    <li class="nav-item">
                        <a href="Registrar.jsp" class="btn btn-primary">Registrarse</a>
                    </li>
                </ul>
            </header>
        </div>
        <div class="space-divider"></div>
        <div>
            <a href="../index.jsp" class="text-decoration-none">
                <h1 class="text-center color-logo fs-2">Chambita<span class="color-links">.pe</span></h1>
            </a>
        </div>
        <div class="form-login w-100 m-auto">
            <div class="form-container">
                <h2 class="text-center mb-4">Inicia sesión</h2>
                <form action="../Login" method="POST">

                    <div class="form-floating mb-3">
                        <input type="email" class="form-control" name="txtEmail" id="txtEmail" placeholder="tucorreo@ejemplo.com" required>
                        <label for="txtEmail">Correo electrónico</label>
                    </div>

                    <div class="form-floating mb-3">
                        <input type="password" class="form-control" name="txtClave" id="txtClave" placeholder="Contraseña" maxlength="30" required>
                        <label for="txtClave">Contraseña</label>
                    </div>

                    <div class="mb-3 text-end">
                        <a href="#" class="text-decoration-none text-secondary">Olvidé mi contraseña</a>
                    </div>  
                    <div class="pb-3"></div>
                    <div class="d-grid gap-2 mx-auto">
                        <button type="submit" class="btn btn-primary">Ingresar</button>
                    </div>
                    <hr>
                    <div class="text-center">
                        <span>¿No tienes cuenta? <a href="Registrar.jsp" class="text-decoration-none color-links fw-10">Regístrate</a></span>
                    </div>
                </form>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>