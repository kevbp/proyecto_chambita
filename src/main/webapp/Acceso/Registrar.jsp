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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="..\styles\styles.css">
        <title>Registro</title>
    </head>
    <body>
        <div class="container py-4">
            <div class="row align-items-md-stretch">
                <div class="col-md-6 py-5">
                    <div>
                        <a href="../index.jsp" class="text-decoration-none">
                            <h1 class="text-center color-logo fs-2">Chambita<span class="color-links">.pe</span></h1>
                        </a>
                    </div>
                    <div class="p-5 fw-light fs-4">
                        <div class="text-left mt-4 ms-5">
                            <p >Únete, y haz <br>
                            ue cada <span class="color-links fw-semibold">chambita</span> cuente.</p>
                        </div>
                        <img src="../img/image 1.png" class="img-fluid rounded float-center" alt="Chambero">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="col-md-7"></div>
                        <div class="form-signup w-100 m-auto">
                            <div class="form-container">
                                <h2 class="text-center mb-4">Registro</h2>
                                <form action="Registrar" method="post">
                                    <div class="d-flex">
                                        <div class="form-floating mb-3 me-2">
                                            <input type="text" class="form-control" name="txtNombre" id="txtNombre" placeholder="Nombres" required>
                                            <label for="txtNombre">Nombre</label>
                                        </div>
                                        <div class="form-floating mb-3 ms-2">
                                            <input type="text" class="form-control" name="txtApellido" id="txtApellido" placeholder="Apellidos" required>
                                            <label for="txtApellido">Apellido</label>
                                        </div>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <input type="email" class="form-control" name="txtCorreo" id="txtCorreo" placeholder="Correo" required>
                                        <label for="txtCorreo">Correo electrónico</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <input type="password" class="form-control" name="txtContrasena" id="txtContrasena" placeholder="Contraseña" required>
                                        <label for="txtContrasena">Contraseña</label>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <input type="password" class="form-control" name="txtContrasena2" id="txtContrasena2" placeholder="Confirmar contraseña" required>
                                        <label for="txtContrasena2">Confirmar contraseña</label>
                                    </div>
                                    <div class="my-3">
                                        <div class="form-check text-start">
                                            <input class="form-check-input" type="checkbox" value="termCondServ" id="terConSer">
                                            <label class="form-check-label" for="terConSer">
                                            Acepto los Términos y Condiciones del Servicio
                                            </label>
                                        </div>
                                        <div class="form-check text-start">
                                            <input class="form-check-input" type="checkbox" value="polPriv" id="polPriv">
                                            <label class="form-check-label" for="polPriv">
                                            Acepto la Política de Privacidad de Chambita.pe
                                            </label>
                                        </div>
                                    </div>
                                    <div class="pb-3">

                                    </div>
                                    <div class="d-grid gap-2 mx-auto">
                                        <button type="submit" class="btn btn-primary" name="btnRegistrar">Crear cuenta</button>
                                    </div>
                                    <hr>
                                    <div class="text-center">
                                        <span>¿Ya tienes cuenta? <a href="Login.jsp" class="text-decoration-none color-links fw-10">Inicia sesión</a></span>
                                    </div>
                                </form>
                            </div>
                        </div>
                </div>
            </div>
        </div>
    </body>
</html>
