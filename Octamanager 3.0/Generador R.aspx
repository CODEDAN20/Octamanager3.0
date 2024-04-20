<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Generador R.aspx.cs" Inherits="WebApplication2.WebForm5" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Generador R Styles.css">
    <link rel="shortcut icon" href="/Home/imagen/Imagen23-removebg-preview.png" type="image/x-icon">
    <title>Módulo de Generar Reportes</title>
</head>
<body>


<header>
    <h1>Módulo de Generar Reportes</h1>
    <nav>
        <ul>
            <li><a href="#ventas-diarias">Ventas Diarias</a></li>
            <li><a href="#stock-productos">Stock de Productos</a></li>
         
        </ul>
    </nav>
</header>


<section id="ventas-diarias">

<section id="ventas-diarias">
    <h2>Ventas Diarias</h2>
    <table>
        <thead>
            <tr>
                <th>Fecha</th>
                <th>Total de Ventas</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>2024-03-01</td>
                <td>$500.00</td>
            </tr>
            <tr>
                <td>2024-02-29</td>
                <td>$700.00</td>
            </tr>
            <!-- Agrega más filas según sea necesario -->
        </tbody>
    </table>
</section>

</section>

<!-- Contenido del Módulo de Generar Reportes -->
<section id="stock-productos">
    <h2>Stock de Productos</h2>
    <table>
        <thead>
            <tr>
                <th>Producto</th>
                <th>Cantidad en Stock</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Gasolina Regular</td>
                <td>1000 litros</td>
            </tr>
            <tr>
                <td>Gasolina Premium</td>
                <td>800 litros</td>
            </tr>
            <!-- Agrega más filas según sea necesario -->
        </tbody>
    </table>
</section>


<!-- Agrega más secciones según sea necesario -->

<!-- Botón para exportar a Excel -->
<button id="exportar-excel">Exportar a Excel</button>

<script src="report-script.js"></script>
</body>
</html>
