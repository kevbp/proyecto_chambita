<%-- 
    Document   : Solicitudes
    Created on : 17 oct. 2024, 22:04:41
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
        <title>Encontrar Chamba</title>
    </head>
    <body>

        <!-- Barra de navegación -->
        <nav class="navbar navbar-expand-lg navbar-white bg-white p-3 header-nav" aria-label="Offcanvas navbar large">
            <div class="container-fluid px-3">

                <a href="index.html" class="text-decoration-none color-logo pe-5">
                    <h1 class="text-start color-logo fs-2">Chambita<span class="color-links">.pe</span></h1>
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar2" aria-controls="offcanvasNavbar2">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="offcanvas offcanvas-end text-bg-white" tabindex="-1" id="offcanvasNavbar2" aria-labelledby="offcanvasNavbar2Label">
                    <div class="offcanvas-header">
                        <h5 class="offcanvas-title" id="offcanvasNavbar2Label">Navegación</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>

                    <div class="offcanvas-body">
                        <ul class="navbar-nav justify-content-center d-flex align-items-center flex-row flex-grow-1">
                            <div class="px-2 fw-bold">
                                Cliente
                            </div>
                            <div class="switch">
                                <input type="checkbox" id="btn-switch" checked>
                                <label for="btn-switch" class="lbl-switch"></label>    
                            </div>
                            <div class="px-2">
                                Especialista
                            </div>
                        </ul>

                        <ul class="navbar-nav justify-content-end flex-grow-1">
                            <li class="nav-item">
                                <a class="nav-link px-3 border-bottom border-dark-subtle fw-semibold" href="#">Encontrar chamba</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link px-3" href="#">Atenciones</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link px-3 btn btn-primary" href="#">Mi perfil</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>

        <div class="container my-4">
            <h2 class="mb-4">¿Listo para chambear?</h2>

            <div class="row">
                <!-- Filtros -->
                <div class="col-md-3">
                    <div class="filter-section">
                        <h5 class="mb-3">Filtrar</h5>
                        <form>
                            <div class="mb-3">
                                <label class="form-label">Fecha</label>
                                <input type="date" class="form-control">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Ubicación</label>
                                <select class="form-select">
                                    <option selected>Todas las ubicaciones</option>
                                    <option>Lima</option>
                                    <option>Villa el Salvador</option>
                                    <option>San Juan de Miraflores</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Categoría</label>
                                <select class="form-select">
                                    <option selected>Todas las categorías</option>
                                    <option>Informática / computadoras</option>
                                    <option>Construcción</option>
                                    <option>Limpieza</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary w-100">Buscar</button>
                        </form>
                    </div>
                </div>

                <!-- listado de chambas -->
                <div class="col-md-9">

                    <div class="chamba-card">
                        <div class="d-flex justify-content-between align-items-start mb-3">
                            <div>
                                <h5 class="mb-1">Nombre de la solicitud</h5>
                                <p class="text-muted mb-0">Categoría servicio: Informática / computadoras</p>
                            </div>
                            <span class="fs-5 fw-bold">S/. P.Cli</span>
                        </div>
                        <p class="mb-3">Breve descripción de la solicitud: Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod, consectetur adipisicing elit, sed do eiusmod</p>
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <p class="mb-0 fw-medium">Fulano Perez</p>
                                <small class="text-muted">Hace 2 días</small>
                                <span class="location-badge ms-2">
                                    <i class="bi bi-geo-alt"></i> Lima, Villa el Salvador
                                </span>
                            </div>
                            <a href="#" class="btn btn-outline-primary">Ver detalles</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
