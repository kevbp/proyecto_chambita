<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : MisSolicitudes
    Created on : 17 oct. 2024, 22:03:22
    Author     : Usuario local
--%>

<%@page import="Entidades.Solicitud"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <%
        List<Solicitud> Lista = (List<Solicitud>) session.getAttribute("Lista");
    %>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="../styles/styles.css">
        <title>Mis Solicitudes</title>
    </head>
    <%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  
            if (session.getAttribute("id")==null){
                response.sendRedirect(request.getContextPath()+"/Acceso/Login.jsp");
            }
    %>
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
  
    <body>
        <div class="container mt-4">
        <div class="row">
            <h4>Solicitudes</h4>
        </div>
        <div class="row">
          <div class="col-md-3">
            <div class="sidebar">
              <h5>Filtrar</h5>
              <form>
                <div class="mb-3">
                  <label for="nombreSolicitud" class="form-label">Nombre de la solicitud</label>
                  <input type="text" class="form-control" id="nombreSolicitud" placeholder="Escribe aquí...">
                </div>
                <div class="mb-3">
                  <label for="estado" class="form-label">Estado</label>
                  <select class="form-select" id="estado">
                    <option>Activo</option>
                    <option>En proceso</option>
                    <option>Completo</option>
                  </select>
                </div>
                <div class="mb-3">
                  <label for="categoria" class="form-label">Categoría</label>
                  <select class="form-select" id="categoria">
                    <option>Informática / Computadoras</option>
                    <option>Reparaciones</option>
                    <option>Consultoría</option>
                  </select>
                </div>
                <button type="submit" class="btn my-2">Buscar</button>
              </form>
            </div>
          </div>

          <div class="col-md-9">
            <!-- Dynamic Cards -->
            <form action="../Cliente" method="GET">
            <c:forEach var="campo" items="${Lista}">
                <div class="card p-4">
                    <div data-name="${campo.idSolicitud}">
                    <div class="d-flex justify-content-between">
                      <div>
                        <h5>${campo.titulo}</h5>
                        <small class="text-muted">${campo.idSolicitud}</small>
                        <p class="mt-2">${campo.descripcion}</p>
                        <div class="status green"><span>●</span>${campo.estado}</div>
                      </div>
                      <div class="text-end">
                        <p class="fw-bold">S/. ${campo.precio}</p>
                        <input type="submit" value="Ver detalles" name="btnConsultar" class="btn btn-link text-primary" onclick="handleButtonClick(this)"/>
                      </div>
                    </div>
                    </div>
                </div>
             </c:forEach>
             <input type="text" id="txtId" name="txtId" hidden>            
            </form>
            
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        
      <h1>Mis Solicitudes</h1>
        <a href="Solicitud.jsp">Nueva solicitud</a>
        <form action="../CerrarSesion" method="POST">
            <input type="submit" value="Cerrar Sesion">
        </form>
        
    </body>
    <script>
        function handleButtonClick(button) {
            // Accessing row data using the data-* attributes
            const name = button.parentNode.parentNode.parentNode.dataset.name;
            document.getElementById("txtId").value = name;
        }
    </script>
    <%
        //session.removeAttribute("Lista");
    %>
    </div>
    </div>
</html>
