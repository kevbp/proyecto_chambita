<%-- 
    Document   : Solicitud
    Created on : 17 oct. 2024, 21:55:48
    Author     : Usuario local
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Encuentra al proveedor adecuado para tí</h1>
        <form action="NuevaSolicitud" method="post">
            <div>
                <label for="txtTitulo">Título de la solicitud</label>
                <input type="text" id="txtTitulo" placeholder="Breve y preciso">
            </div>
            <div>
                <label for="txtDescripcion">Describe brevemente tus requerimientos</label>
                <br>
                <textarea id="txtDescripcion" name="txtDescripcion" rows="5" cols="10"></textarea>
            </div>
            <div>
                <label>¿Dónde estas ubicado?</label> <br>
                <select id="txtRegion">
                    <option value="" disabled selected>Region</option>
                    <option value="first">Lima</option>
                </select>
                <select id="txtProvincia">
                    <option value="" disabled selected>Provincia</option>
                    <option value="Lima">Lima</option>
                    <option value="Barranca">Barranca</option>
                    <option value="Canta">Canta</option>
                    <option value="Cañete">Cañete</option>
                    <option value="Huaral">Huaral</option>
                </select>
                <select id="txtDistrito">
                    <option value="" disabled selected>Distrito</option>
                    <option value="SJM">San juan de miraflores</option>
                    <option value="VES">Villa el salvador</option>
                    <option value="VMT">Villa maria del triunfo</option>
                </select>
            </div>
            <div>
                <label for="txtFecha">Fecha de necesidad</label>
                <input type="date" id="txtFecha">
            </div>
            <div>
                <label for="txtPrecio">Precio propuesto</label>
                <input type="number" id="txtPrecio" min="1.00" max="10000.00" step="0.01" />
            </div>
            <input type="submit" value="Crear solicitud">
        </form>
    </body>
</html>
