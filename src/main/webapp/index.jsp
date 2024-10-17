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
        <title>NecesitoYa</title>
    </head>
    <body>
        <div class="container">
            <div class="row justify-content-md-center">        
                <div class="col-md-auto p-5 align-self-center">
                    <h1>Iniciar Sesión</h1>    
                    <form action="Login" method="post">
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">E-mail</label>
                            <input type="email" class="form-control" name="txtEmail" id="txtEmail" aria-describedby="emailHelp" placeholder="Ingrese su correo electrónico">
                            <div id="emailHelp" class="form-text">No debe de compartir su correo con alguien más.</div>
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">Contraseña</label>
                            <input type="password" class="form-control" name="txtClave" id="txtClave" placeholder="Ingrese su contraseña">
                        </div>
                        <div class="d-grid gap-2 mx-auto">
                            <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
                        </div>
                        <hr>
                        <div class="d-grid gap-2 mx-auto">
                            <button type="submit" class="btn btn-light">Registrarse</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </body>
</html>
