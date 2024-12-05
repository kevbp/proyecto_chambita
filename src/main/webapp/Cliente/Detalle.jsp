<%-- 
    Document   : Detalle
    Created on : 17 oct. 2024, 22:04:04
    Author     : Usuario local
--%>
<%@page import="Entidades.Solicitud"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  
                if (session.getAttribute("id")==null){
                    response.sendRedirect(request.getContextPath()+"/Acceso/Login.jsp");
                }
    %>
    <%
        Solicitud sol = (Solicitud) request.getAttribute("Solicitud");
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="styles/styles.css">
        <title>Detalle de solicitud</title>
    </head>
<body>
    <nav class="navbar navbar-expand-lg navbar-white bg-white p-3 header-nav" aria-label="Offcanvas navbar large">
        <div class="container-fluid px-3">
            <a href="index.jsp" class="text-decoration-none color-logo  pe-5">
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
                        <a class="nav-link border-bottom border-dark-subtle mx-1 my-1 fw-semibold" aria-current="page" href="#">Detalle de solicitud</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link mx-1 my-1" aria-current="page" href="Cliente/Solicitud.jsp">Contratar</a>
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

    <div class="container mt-5">
        <div class="row">

            <div class="col-md-8">
                
                <h2><%=sol.getTitulo()%></h2>
                <p class="text-muted">Tipo servicio: ejm. Informática / computadoras</p>
                <h5>Descripción de la solicitud</h5>
                <p>
                    <%=sol.getDescripcion()%>
                </p>
                <div class="mt-4">
                    <h6 class="text-muted">Ubicación</h6>
                    <p><span class="location-icon">📍</span> <%=sol.getRegion()%>, <%=sol.getDistrito()%></p>
                    <p>Poner nombre aqui</p>
                </div>
                <h4 class="mt-3">S/. <%=sol.getPrecio()%></h4>
                <br>
                <p class="text-muted py-3">
                Codigo de solicitud: <%=sol.getIdSolicitud()%>
                <br>Fecha y hora de creación: <%=sol.getFechaSolicitud()%>
                </p>
            </div>

            <!-- Right Column: Contact -->
            <div class="col-md-4 contact-section">
                <h5>Contacto</h5>
                <div class="mb-3">
                    <label for="priceInput" class="form-label">Proponer precio</label>
                    <input type="text" class="form-control" id="priceInput" placeholder="S/.P. Pro">
                </div>
                <div class="mb-3">
                    <label for="additionalComment" class="form-label">Comentario adicional</label>
                    <textarea class="form-control" id="additionalComment" rows="4" placeholder="Breve descripción de la solicitud"></textarea>
                </div>
                <button class="btn btn-primary w-100">Contactar</button>
            </div>
        </div>
        <div>
            <button class="btn btn-secondary" onclick="goBack()">Volver</button>
        </div>        
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
    </body>
</html>
