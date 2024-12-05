<%-- 
    Document   : Verificar
    Created on : 17 oct. 2024, 21:53:23
    Author     : Usuario local
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chambita - Verificación</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../styles/styles.css"/>
    
</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <a href="../index.jsp" class="text-decoration-none color-logo pt-3">
                <h1 class="text-start color-logo fs-2">Chambita<span class="color-links">.pe</span></h1>
            </a>
        <div class="col-md-10 form-container">
            
            <h4 class="text-start mb-4">Verificación de proveedor</h4>
            <form action="#" method="POST">
                <div class="form-row d-flex justify-content-between">
                    <div class="col-md-5 form-col">
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" required>
                        </div>
                    </div>
                    <div class="col-md-5 form-col">
                        <div class="mb-3">
                            <label for="apellido" class="form-label">Apellido</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" required>
                        </div>
                    </div>
                </div>

                <div class="form-row d-flex justify-content-between">
                    <div class="col-md-5 form-col">
                        <div class="mb-3">
                            <label for="fecNacimiento" class="form-label">Fecha de nacimiento</label>
                            <input type="date" class="form-control" id="fecNacimiento" name="fecNacimiento" required>
                        </div>
                    </div>
                    <div class="col-md-5 form-col">
                        <div class="mb-3">
                            <label for="nroDocumento" class="form-label">Número de documento</label>
                            <input type="text" class="form-control" id="nroDocumento" name="nroDocumento" required>
                        </div>
                    </div>
                </div>

                <div class="mb-3 photo-upload d-flex align-items-start flex-column mb-3">
                    <div class="col-md-5 form-col">
                        <div class="form-label">Foto de frente</div>
                        <input type="file" class="form-control" id="fotoFrente" name="fotoFrente" required>
                    </div>
                    <div class="col-md-5 form-col">
                        <div class="form-label">Foto parte trasera</div>
                        <input type="file" class="form-control" id="fotoParteTrasera" name="fotoParteTrasera" required>
                    </div>
                </div>

                <div class="file-input col-md-5 form-col">
                    <label class="form-label">Documentos adicionales</label>
                    <input type="file" class="form-control" id="documentosAdicionales" name="documentosAdicionales">
                    <small class="form-text text-muted">Puedes adjuntar: Certificado único laboral, Antecedentes Policiales, Antecedentes Penales.</small>
                </div>

                <div class="catalogo my-3">
                    <label class="form-label">Catálogo de servicios</label>
                    <select class="form-select" id="servicio" name="servicio" required>
                        <option value="" disabled selected>Buscar</option>
                        <option value="contabilidad">Contabilidad</option>
                        <option value="marketing">Marketing</option>
                        <option value="mantenimiento">Mantenimiento</option>
                        <option value="computacion">Computación e informática</option>
                        <option value="asistencia">Asistencia doméstica</option>
                        <option value="electricidad">Electricidad</option>
                    </select>
                </div>

                <div class="d-flex justify-content-center">
                    <button type="submit" class="btn btn-primary mt-4">Verificar</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
