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
        <link rel="stylesheet" href="../styles/styles.css">
        <title>Contratar especialista</title>
    </head>
    <%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  
        if (session.getAttribute("id")==null){
            response.sendRedirect(request.getContextPath()+"/Acceso/Login.jsp");
        }
    %>
    <body>
    <nav class="navbar navbar-expand-lg navbar-white bg-white p-3 header-nav" aria-label="Offcanvas navbar large">
        <div class="container-fluid px-3">
            <a href="../index.jsp" class="text-decoration-none color-logo  pe-5">
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
                <ul class="navbar-nav justify-content-end flex-grow-1">
                    <li class="nav-item">
                        <a class="nav-link active mx-1 my-1 fw-semibold" aria-current="page" href="Solicitud.jsp">Contratar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link mx-1 my-1" href="MisSolicitudes.jsp">Mis solicitudes</a>
                    </li>
                    <li class="nav-item">
                      <div class="btn-group mx-1 my-1 btn-primary   ">
                        <button type="button" class="btn btn-primary nav-link px-3 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                          Mi perfil
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end text-center">
                            <li><a class="dropdown-item" href="../Proveedor/EncontrarChamba.jsp">Cambiar a proveedor</a></li>
                          <li>
                              <form action="../CerrarSesion" method="POST">
                                  <input class="btn btn-secondary" type="submit" value="Cerrar Sesion">
                              </form>
                          </li>
                        </ul>
                      </div>
                    </li>
                </ul>
            </div>
          </div>
        </div>
      </nav>
      <main>
          <div class="container">
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
                    <form method="POST" action="../Cliente">
                        <div class="d-flex flex-column mb-3">
                            <label class="mb-2" for="txtTitulo">Título de la solicitud</label>
                            <input type="text" class="form-control" placeholder="Intenta que sea breve y preciso" id="txtTitulo" name="txtTitulo">
                        </div>
                        <div class="d-flex flex-column mb-3">
                            <label class="mb-2" for="txtDescripción">Describe brevemente tus requerimientos</label>
                            <textarea id="txtDescripcion" class="form-control" placeholder="Requiero un camión de mudanza para..." name="txtDescripcion" rows="4" cols="50"></textarea>
                        </div>
                        <div class="d-flex flex-column mb-3">
                            <label class="mb-2" for="txtTitulo">¿Dónde estás ubicado?</label>
                            <div class="container-fluid d-flex flex-row p-0 justify-content-between">
                                <select class="form-select" name="txtRegion">
                                    <option disabled selected>Departamento</option>
                                    <option value="Lima">Lima</option>
                                </select>
                                <select class="form-select" name="txtProvincia">
                                    <option disabled selected>Provincia</option>
                                    <option value="Lima">Lima</option>
                                </select>
                                <select class="form-select" name="txtDistrito">
                                    <option disabled selected>Distrito</option>
                                    <option value="ANCON">ANCON</option>
                                    <option value="ATE">ATE</option>
                                    <option value="BARRANCO">BARRANCO</option>
                                    <option value="BREÑA">BREÑA</option>
                                    <option value="CARABAYLLO">CARABAYLLO</option>
                                    <option value="CHACLACAYO">CHACLACAYO</option>
                                    <option value="CHORRILLOS">CHORRILLOS</option>
                                    <option value="CIENEGUILLA">CIENEGUILLA</option>
                                    <option value="COMAS">COMAS</option>
                                    <option value="EL AGUSTINO">EL AGUSTINO</option>
                                    <option value="INDEPENDENCIA">INDEPENDENCIA</option>
                                    <option value="JESUS MARIA">JESUS MARIA</option>
                                    <option value="LA MOLINA">LA MOLINA</option>
                                    <option value="LA VICTORIA">LA VICTORIA"</option>
                                    <option value="LIMA">LIMA</option>
                                    <option value="LINCE">LINCE</option>
                                    <option value="LOS OLIVOS">LOS OLIVOS</option>
                                    <option value="LURIGANCHO">LURIGANCHO</option>
                                    <option value="LURIN">LURIN</option>
                                    <option value="MAGDALENA DEL MAR">MAGDALENA DEL MAR</option>
                                    <option value="MIRAFLORES">MIRAFLORES</option>
                                    <option value="PACHACAMAC">PACHACAMAC</option>
                                    <option value="PUCUSANA">PUCUSANA</option>
                                    <option value="PUEBLO LIBRE">PUEBLO LIBRE</option>
                                    <option value="PUENTE PIEDRA">PUENTE PIEDRA</option>
                                    <option value="PUNTA HERMOSA">PUNTA HERMOSA</option>
                                    <option value="PUNTA NEGRA">PUNTA NEGRA</option>
                                    <option value="RIMAC">RIMAC</option>
                                    <option value="SAN BARTOLO">SAN BARTOLO</option>
                                    <option value="SAN BORJA">SAN BORJA</option>
                                    <option value="SAN ISIDRO">SAN ISIDRO</option>
                                    <option value="SAN JUAN DE LURIGANCHO">SAN JUAN DE LURIGANCHO</option>
                                    <option value="SAN JUAN DE MIRAFLORES">SAN JUAN DE MIRAFLORES</option>
                                    <option value="SAN LUIS">SAN LUIS</option>
                                    <option value="SAN MARTIN DE PORRES">SAN MARTIN DE PORRES</option>
                                    <option value="SAN MIGUEL">SAN MIGUEL</option>
                                    <option value="SANTA ANITA">SANTA ANITA</option>
                                    <option value="SANTA MARIA DEL MAR">SANTA MARIA DEL MAR</option>
                                    <option value="SANTA ROSA">SANTA ROSA</option>
                                    <option value="SANTIAGO DE SURCO">SANTIAGO DE SURCO</option>
                                    <option value="SURQUILLO">SURQUILLO</option>
                                    <option value="VILLA EL SALVADOR">VILLA EL SALVADOR</option>
                                    <option value="VILLA MARIA DEL TRIUNFO">VILLA MARIA DEL TRIUNFO</option>
                                </select>
                            </div>
                        </div>
                        <div class="d-flex flex-row mb-3 justify-content-between align-items-center">
                            <div class="d-flex flex-column">
                                <label class="mb-2" for="fechaEjecucion">Fecha de ejecución</label>
                                <input type="date" class="form-control" name="txtFecha" id="txtFecha">
                            </div>
                            <div class="d-flex flex-column">
                                <label class="mb-2" for="precioCliente">Precio propuesto</label>
                                <div class="input-group">
                                    <span class="input-group-text">S/.</span>
                                    <input type="number" class="form-control" name="txtPrecio">
                                  </div>
                            </div>
                            <div>
                                <button class="btn btn-primary fw-semibold" type="submit">+ Crear solicitud</button>
                            </div>
                        </div>
                    </form>
                </div>
            </section>
      </div>
      </main>  
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
