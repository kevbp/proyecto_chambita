<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : Solicitudes
    Created on : 17 oct. 2024, 22:04:41
    Author     : Usuario local
--%>

<%@page import="java.util.List"%>
<%@page import="Entidades.Solicitud"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");  
        if (session.getAttribute("id")==null){
            response.sendRedirect(request.getContextPath()+"/Acceso/Login.jsp");
        } else if (Integer.parseInt(session.getAttribute("perfil").toString())==1){
            response.sendRedirect(request.getContextPath()+"/Acceso/Verificar.jsp");
        }
    %>
    <%
        List<Solicitud> Lista = (List<Solicitud>) session.getAttribute("Lista");
    %>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="../styles/styles.css">
        <title>Encontrar chamba</title>
    </head>
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
                            <a class="nav-link mx-1 my-1" aria-current="page" href="MisChambitas.jsp">Atenciones</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active mx-1 my-1 fw-semibold" href="EncontrarChamba.jsp">Encontrar chamba</a>
                        </li>
                        <li class="nav-item">
                            <div class="btn-group mx-1 my-1 btn-primary   ">
                                <button type="button" class="btn btn-primary nav-link px-3 dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                    Mi perfil
                                </button>
                                <ul class="dropdown-menu dropdown-menu-end text-center">
                                    <li>                                        
                                        <form name="submitForm" action="../Proveedor" method="POST">
                                        <a class="dropdown-item" href="javascript:document.submitForm.submit()">Cambiar a cliente</a>
                                        </form>
                                    </li>
                                    <li>
                                        <form name="cerrar" action="../CerrarSesion" method="POST">
                                        <a class="dropdown-item" href="javascript:document.cerrar.submit()">Cerrar Sesion</a>
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
        
        <div class="container mt-4">
            <div class="row">
                <div class="col-md-3">
                    <h4 class="pb-2">Mis solicitudes</h4>
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
                    <div class="d-flex justify-content-end">
                        <a href="Solicitud.jsp"class="btn btn-primary mb-2" >Nueva solicitud</a>
                    </div>
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
        </div>
</html>
