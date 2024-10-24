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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="Styles/styles.css">
        <title>Chambita.pe</title>
    </head>
    <body>
        <div class="container">
            <header class="d-flex justify-content-end py-3">
                <ul class="nav nav-pills">
                    <li class="nav-item">
                        <a href="#" class="nav-link color-links">¿Quieres trabajar?</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="btn btn-primary">Registrarse</a>
                    </li>
                </ul>
            </header>
        </div>
        <div class="space-divider"></div>
        <h1 class="text-center">Chambita<span class="text-primary">.pe</span></h1>
        <div class="form-login w-100 m-auto">
            <div class="login-container">
                <h2 class="text-center mb-4">Inicia sesión</h2>
                <form action="Login" method="post">

                    <div class="form-floating mb-3">
                        <input type="email" class="form-control" name="txtEmail" id="txtEmail" placeholder="tucorreo@ejemplo.com" required>
                        <label for="txtEmail">Correo electrónico</label>
                    </div>

                    <div class="form-floating mb-3">
                        <input type="password" class="form-control" name="txtClave" id="txtClave" placeholder="Contraseña" required>
                        <label for="txtClave">Contraseña</label>
                    </div>

                    <div class="mb-3 text-end">
                        <a href="#" class="text-decoration-none text-secondary">Olvidé mi contraseña</a>
                    </div>  
                    <div class="d-grid gap-2 mx-auto">
                        <button type="submit" class="btn btn-primary">Ingresar</button>
                    </div>
                    <hr>
                    <div class="text-center">
                        <span>¿No tienes cuenta? <a href="Acceso/Registrar.jsp" class="text-decoration-none color-links fw-10">Regístrate</a></span>
                    </div>
                </form>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>