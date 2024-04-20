<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Auditoria.aspx.cs" Inherits="WebApplication2.Auditoria" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Auditor Styles.css">
    <link rel="shortcut icon" href="/Home/imagen/Imagen23-removebg-preview.png" type="image/x-icon">
    <title>Módulo de Auditor</title>
</head>
<body>

<!-- Encabezado del Módulo de Auditor -->
<header>
    <h1>Módulo de Auditor</h1>
    <nav>
        <ul>
            <li><a href="Auditoria.html">Auditorías</a></li>
            <!-- Agrega más opciones según sea necesario -->
        </ul>
    </nav>
</header>

<!-- Contenido del Módulo de Auditor -->
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
            <tr>
                <td>2024-03-01</td>
                <td>John Doe</td>
                <td>Aprobada</td>
                <td>Todo en orden</td>
                <td>
                    <button onclick="verDetalles('2024-03-01')">Ver Detalles</button>
                    <button onclick="imprimirInforme('2024-03-01')">Imprimir Informe</button>
                </td>
            </tr>
            <tr>
                <td>2024-02-28</td>
                <td>Jane Smith</td>
                <td>Rechazada</td>
                <td>Problemas con el control de inventario</td>
                <td>
                    <button onclick="verDetalles('2024-02-28')">Ver Detalles</button>
                    <button onclick="imprimirInforme('2024-02-28')">Imprimir Informe</button>
                </td>
            </tr>
            <tr>
                <td>2024-02-27</td>
                <td>Robert Johnson</td>
                <td>Aprobada</td>
                <td>Sin observaciones</td>
                <td>
                    <button onclick="verDetalles('2024-02-27')">Ver Detalles</button>
                    <button onclick="imprimirInforme('2024-02-27')">Imprimir Informe</button>
                </td>
            </tr>
            <!-- Agrega más filas según sea necesario -->
            <tr>
                <td>2024-02-26</td>
                <td>Mary Davis</td>
                <td>Aprobada</td>
                <td>Inspección de seguridad superada</td>
                <td>
                    <button onclick="verDetalles('2024-02-26')">Ver Detalles</button>
                    <button onclick="imprimirInforme('2024-02-26')">Imprimir Informe</button>
                </td>
            </tr>
            <tr>
                <td>2024-02-25</td>
                <td>Michael Brown</td>
                <td>Rechazada</td>
                <td>Problemas de higiene en el área de almacenamiento</td>
                <td>
                    <button onclick="verDetalles('2024-02-25')">Ver Detalles</button>
                    <button onclick="imprimirInforme('2024-02-25')">Imprimir Informe</button>
                </td>
            </tr>
            <!-- Agrega más filas según sea necesario -->
        </tbody>
    </table>
</section>

<script>
    function verDetalles(fecha) {
        // Lógica para mostrar detalles de la auditoría
        alert(`Detalles de la auditoría del ${fecha}`);
    }

    function imprimirInforme(fecha) {
        // Lógica para imprimir el informe de la auditoría
        alert(`Imprimiendo informe de la auditoría del ${fecha}`);
    }
</script>

<!-- Agrega más secciones según sea necesario -->

</body>
</html>
