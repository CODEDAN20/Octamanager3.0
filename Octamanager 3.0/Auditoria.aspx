<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Auditoria.aspx.cs" Inherits="WebApplication2.WebForm6" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Auditoria Styles.css">
    <link rel="shortcut icon" href="/Home/imagen/Imagen23-removebg-preview.png" type="image/x-icon">
    <title>Módulo de Auditoría</title>
</head>
<body>

<!-- Encabezado del Módulo de Auditoría -->
<header>
    <h1>Módulo de Auditoría</h1>
    <nav>
        <ul>
            <li><a href="#gestion-auditorias">Gestión de Auditorías</a></li>
            <li><a href="#revision-informes">Revisión de Informes</a></li>
            <li><a href="#nueva-auditoria">Nueva Auditoría</a></li>
        </ul>
    </nav>
</header>

<!-- Contenido del Módulo de Auditoría -->
<section id="auditorias">
    <h2>Auditorías</h2>
    <table>
        <thead>
            <tr>
                <th>Fecha</th>
                <th>Auditor</th>
                <th>Resultado</th>
                <th>Observaciones</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <!-- Ejemplo de una fila de auditoría -->
            <tr>
                <td>2024-03-01</td>
                <td>John Doe</td>
                <td>Aprobada</td>
                <td>Todo en orden</td>
                <td>
                    <button class="ver-detalles">Ver Detalles</button>
                    <button class="imprimir-informe">Imprimir Informe</button>
                </td>
            </tr>
            <!-- Agrega más filas según sea necesario -->
        </tbody>
    </table>
</section>

<!-- Detalles específicos de la gestión de auditorías -->
<section id="detalles-auditoria" class="oculto">
    <!-- Contenido para mostrar detalles específicos de una auditoría -->
    <h2>Detalles de la Auditoría</h2>
    <p>Fecha: <span id="detalle-fecha"></span></p>
    <p>Auditor: <span id="detalle-auditor"></span></p>
    <p>Resultado: <span id="detalle-resultado"></span></p>
    <p>Observaciones: <span id="detalle-observaciones"></span></p>
    <button class="cerrar-detalles">Cerrar Detalles</button>
</section>

<!-- Contenido relacionado con la revisión de informes -->
<section id="revision-informes">
    <h2>Revisión de Informes</h2>
    <table>
        <thead>
            <tr>
                <th>Fecha</th>
                <th>Auditor</th>
                <th>Resultado</th>
                <th>Observaciones</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <!-- Ejemplo de una fila de informe de auditoría -->
            <tr>
                <td>2024-03-01</td>
                <td>John Doe</td>
                <td>Aprobada</td>
                <td>Todo en orden</td>
                <td>
                    <button class="ver-detalles">Ver Detalles</button>
                    <button class="imprimir-informe">Imprimir Informe</button>
                </td>
            </tr>
            <!-- Agrega más filas según sea necesario -->
        </tbody>
    </table>
</section>


<!-- Contenido relacionado con la creación de una nueva auditoría -->
<section id="nueva-auditoria">
    <h2>Nueva Auditoría</h2>
    <form>
        <!-- Formulario para agregar detalles de una nueva auditoría -->
        <label for="fecha">Fecha:</label>
        <input type="date" id="fecha" name="fecha" required>

        <label for="auditor">Auditor Asignado:</label>
        <input type="text" id="auditor" name="auditor" required>

        <label for="resultado">Resultado:</label>
        <select id="resultado" name="resultado" required>
            <option value="Aprobada">Aprobada</option>
            <option value="Rechazada">Rechazada</option>
            <!-- Agrega más opciones según sea necesario -->
        </select>

        <label for="observaciones">Observaciones:</label>
        <textarea id="observaciones" name="observaciones"></textarea>

        <!-- Incluir más campos según sea necesario -->

        <button type="submit">Crear Auditoría</button>
    </form>
</section>


</body>
</html>
