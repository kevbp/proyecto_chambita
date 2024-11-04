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
        <link rel="stylesheet" href="styles/styles.css">
        <title>Chambita.pe</title>
    </head>
    <body>
        <header class="p-3 header-nav">
            <div class="container">
                <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                    <div class="col-md-9">
                        <a href="#" class="text-decoration-none">
                            <h1 class="text-start color-logo fs-2">Chambita<span class="color-links">.pe</span></h1>
                        </a>
                    </div>
                    <div class="col-md-3">
                        <ul class="nav nav-pills justify-content-end">
                            <li class="nav-item">
                                <a href="Acceso/Login.jsp" class="btn btn-outline-primary me-2">
                                    Iniciar sesión
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="Acceso/Registrar.jsp" class="btn btn-primary">
                                    Registrarse
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <div class="container">
            <div class="row align-items-md-stretch">
                <div class="col-md-6">
                    <div class="fs-2 pt-4 mt-4">
                        <p >La <span class="color-links fw-semibold">mejor forma</span><br>
                            de <span class="color-links fw-semibold">conectarte</span><br>
                            con <span class="color-links fw-semibold">proveedores</span><br>
                            de <span class="color-links fw-semibold">todo el país</span></p>
                    </div>
                    <ul class="nav justify-content-start">
                        <li class="nav-item">
                            <a href="Acceso/Login.jsp" class="btn btn-primary me-2">
                                Contratar un proveedor
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="Acceso/Registrar.jsp" class="btn btn-outline-primary">
                                Encontrar chamba
                            </a>
                        </li>
                    </ul>
                </div>   
                <div class="col-md-6 p-3">
                    <img class="img-principal" src="img/image 2.png" alt="imagen principal">
                </div>
            </div>
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</html>