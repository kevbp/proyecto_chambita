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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="../styles/styles.css">
        <title>Chambita.pe - Solicitudes</title>
    </head>
    <body>
        <!-- Barra de navegación -->
        <nav class="navbar navbar-expand-lg navbar-white bg-white p-3 header-nav" aria-label="Offcanvas navbar large">
        <div class="container-fluid px-3">
            <a href="index.html" class="text-decoration-none color-logo  pe-5">
                <h1 class="text-start color-logo fs-2">Chambita<span class="color-links">.pe</span></h1>
            </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar2" aria-controls="offcanvasNavbar2" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="offcanvas offcanvas-end text-bg-white" tabindex="-1" id="offcanvasNavbar2" aria-labelledby="offcanvasNavbar2Label">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title" id="offcanvasNavbar2Label">Navegación</h5>
              <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-center d-flex align-items-center flex-row flex-grow-1">
                        <div class="px-2 fw-bold">
                            Cliente
                        </div>
                        <a href="index.html">
                            <div class="switch">
                                <input type="checkbox" id="btn-switch">
                                <label for="btn-switch" class="lbl-switch"></label>    
                            </div>
                        </a>
                        <div class="px-2">
                            Especialista
                        </div>
                </ul>
                <ul class="navbar-nav justify-content-end flex-grow-1">
                    <li class="nav-item">
                    <a class="nav-link px-3" href="#">Contratar</a>
                    </li>
                    <li class="nav-item border-bottom border-dark-subtle">
                    <a class="nav-link active px-3 fw-semibold" aria-current="page" href="#">Mis solicitudes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link px-3 btn btn-primary" href="#">Mi perfil</a>
                    </li>
                </ul>
            </div>
          </div>
        </div>
      </nav>
        
        <div class="container mt-4">
            <h1>Solicitudes</h1>

            <div class="row">
                <div class="col-md-3">
                    <div class="card p-3 mb-4 bg-light">
                        <h5>Filtrar</h5>
                        <form>
                            <div class="mb-3">
                                <label for="nombreSolicitud" class="form-label">Nombre de la solicitud</label>
                                <input type="text" class="form-control" id="nombreSolicitud" name="nombreSolicitud">
                            </div>
                            <div class="mb-3">
                                <label for="estado" class="form-label">Estado</label>
                                <select class="form-select" id="estado" name="estado">
                                    <option selected>Seleccione</option>
                                    <option value="1">Activo</option>
                                    <option value="2">En proceso</option>
                                    <option value="3">Completo</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="categoria" class="form-label">Categoría</label>
                                <select class="form-select" id="categoria" name="categoria">
                                    <option selected>Seleccione</option>
                                    <option value="1">Informática</option>
                                    <option value="2">Construcción</option>
                                    <!-- Agrega más categorías según sea necesario -->
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Buscar</button>
                        </form>
                    </div>
                </div>


                <div class="col-md-9">
                    <div class="d-flex justify-content-between mb-4">
                        <h5>Mis solicitudes</h5>
                        <a href="Solicitud.jsp" class="btn btn-primary">Nueva solicitud</a>
                    </div>

                    <div class="card mb-3">
                        <div class="card-body">
                            <h5 class="card-title">Test</h5>
                            <p class="card-text">
                                Categoría servicio: <span class="text-muted">test ejemplo</span><br>
                                Breve descripción de la solicitud: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod...
                            </p>
                            <p class="text-muted">Estado: <span class="text-success">Activo</span></p>
                            <div class="d-flex justify-content-between">
                                <span class="fw-bold">S/. 1000000</span>
                                <a href="#" class="text-primary">Ver detalles</a>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
       
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    </body>
</html>
