<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="WebApplication2.WebForm5" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Ventas Styles.css">
    <link rel="shortcut icon" href="/Home/imagen/Imagen23-removebg-preview.png" type="image/x-icon">
    <title>Módulo de Ventas</title>
</head>
<body>

<!-- Encabezado del Módulo de Ventas -->
<header>
    <h1>Módulo de Ventas</h1>
    <nav>
        <ul>
            <li><a href="#registrar-venta">Registrar Venta</a></li>
            <li><a href="#historial-ventas">Historial de Ventas</a></li>
            <!-- Agrega más opciones según sea necesario -->
        </ul>
    </nav>
</header>

<!-- Contenido del Módulo de Ventas -->
<section id="registrar-venta">
    <!-- Contenido del Módulo de Ventas -->
<section id="registrar-venta">
    <h2>Registrar Venta</h2>
    <form action="#" method="post">
        <label for="producto">Producto:</label>
        <select id="producto" name="producto" required>
            <option value="gasolina-regular">Gasolina Regular</option>
            <option value="gasolina-premium">Gasolina Premium</option>
            <!-- Agrega más opciones según sea necesario -->
        </select>

        <label for="cantidad">Cantidad:</label>
        <input type="text" id="cantidad" name="cantidad" required>

        <label for="total">Total:</label>
        <input type="text" id="total" name="total" required>

        <button type="submit">Registrar Venta</button>
    </form>
</section>

</section>

<section id="historial-ventas">
   <!-- Contenido del Módulo de Ventas -->
<section id="historial-ventas">
    <h2>Historial de Ventas</h2>
    <table>
        <thead>
            <tr>
                <th>Fecha</th>
                <th>Producto</th>
                <th>Cantidad</th>
                <th>Total</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>2024-03-01</td>
                <td>Gasolina Regular</td>
                <td>50 litros</td>
                <td>$125.00</td>
            </tr>
            <tr>
                <td>2024-02-28</td>
                <td>Gasolina Premium</td>
                <td>30 litros</td>
                <td>$90.00</td>
            </tr>
            <!-- Agrega más filas según sea necesario -->
        </tbody>
    </table>
</section>

</section>

<!-- Agrega más secciones según sea necesario -->

</body>
</html>
