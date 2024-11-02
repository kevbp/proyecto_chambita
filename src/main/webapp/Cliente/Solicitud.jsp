<%-- 
    Document   : Solicitud
    Created on : 17 oct. 2024, 21:55:48
    Author     : Usuario local
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="../Styles/styles.css">
    <title>Contratar especialista</title>
</head>
<body>
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
                    <li class="nav-item border-bottom border-dark-subtle">
                    <a class="nav-link active px-3 fw-semibold" aria-current="page" href="#">Contratar</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link px-3" href="#">Mis solicitudes</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link px-3 btn btn-primary" href="#">Mi perfil</a>
                    </li>
                </ul>
            </div>
          </div>
        </div>
      </nav>
      <main>
            <section class="row">
                <div class="col-md-4 px-5 py-3 m-2">
                    <div class="fs-2 fw-semibold">
                        <p>Encuentra el proveedor <br> adecuado para tí</p>
                    </div>
                    <div class="fs-6">
                    <p>¿Qué tipo de servicio quieres contratar?</p>
                    </div>
                        <div class="container ps-0">
                          <form class="d-flex" role="search">
                            <input class="form-control me-2" type="search" placeholder="Buscar servicios" aria-label="Buscar">
                            <button class="btn btn-outline-secondary" type="submit">Buscar</button>
                            </form>
                        </div>
                    <div>
                        <p class="fs-6 mt-4 mb-1">
                            Los más solicitados
                        </p>
                        <div class="container justify-content-center align-items-center ps-0">
                            <div class="row align-items-center justify-content-center">
                                <div class="col btn btn-primary m-2 text-wrap">
                                    <p class="fs-6 mb-0">Albañilería</p>
                                </div>
                                <div class="col btn btn-primary m-2 text-wrap">
                                    <p class="fs-6 mb-0"">Electricidad</p>
                                </div>
                                <div class="col btn btn-primary m-2 text-wrap">
                                    <p class="fs-6 mb-0">Computación <br>e informática</p>
                                </div>
                            </div>
                            <div class="row align-items-center justify-content-center">
                                <div class="col btn btn-primary m-2">
                                    <p class="btn  btn-primary m-2">Mudanzas</p>
                                </div>
                                <div class="col btn btn-primary m-2">
                                    <p class="btn btn-primary m-2">Asistencia <br>doméstica</p>
                                </div>
                                <div class="col btn btn-primary m-2">
                                    <p class="btn  btn-primary m-2">Salud</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 px-5 py-3 m-2">
                    <div>
                        <P class="fs-2 fw-bold">Contabilidad</P>   
                    </div>
                    <form>
                        <div class="d-flex flex-column mb-3">
                            <label class="mb-2" for="txtTitulo">Título de la solicitud</label>
                            <input type="text" class="form-control" placeholder="Intenta que sea breve y preciso" id="txtTitulo" name="txtTitulo">
                        </div>
                        <div class="d-flex flex-column mb-3">
                            <label class="mb-2" for="txtDescripción">Describe brevemente tus requerimientos</label>
                            <textarea id="txtDescripción" class="form-control" placeholder="Ejemplo: Requiero un camión de mudanza para..." name="txtDescripción" rows="4" cols="50"></textarea>
                        </div>
                        <div class="d-flex flex-column mb-3">
                            <label class="mb-2" for="txtTitulo">¿Dónde estás ubicado?</label>
                            <div class="container-fluid d-flex flex-row p-0 justify-content-between">
                                <select class="form-select">
                                    <option disabled selected>Departamento</option>
                                    <option value="Lima">Lima Provincias</option>
                                    <option value="Lima">Lima Metropolitana</option>
                                    <option value="Cusco">Cusco</option>
                                    <option value="Ancash">Ancash</option>
                                </select>
                                <select class="form-select">
                                    <option disabled selected>Provincia</option>
                                    <option value="Lima">Lima</option>
                                    <option value="Cusco">Cusco</option>
                                    <option value="Ancash">Ancash</option>
                                </select>
                                <select class="form-select">
                                    <option disabled selected>Distrito</option>
                                    <option value="Lima">Villa el Salvador</option>
                                    <option value="Cusco">Chorillos</option>
                                    <option value="Ancash">Surco</option>
                                </select>
                            </div>
                        </div>
                        <div class="d-flex flex-row mb-3 justify-content-between align-items-center">
                            <div class="d-flex flex-column">
                                <label class="mb-2" for="fechaEjecucion">Fecha de ejecución</label>
                                <input type="date" class="form-control" name="fechaEjecucion" id="fechaEjecucion">
                            </div>
                            <div class="d-flex flex-column">
                                <label class="mb-2" for="precioCliente">¿Dónde estás ubicado?</label>
                                <div class="input-group">
                                    <span class="input-group-text">S/.</span>
                                    <input type="number" class="form-control">
                                  </div>
                            </div>
                            <div>
                                <button class="btn btn-primary fw-semibold" type="submit">+ Crear solicitud</button>
                            </div>
                        </div>
                    </form>
                </div>
            </section>
      </main>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
