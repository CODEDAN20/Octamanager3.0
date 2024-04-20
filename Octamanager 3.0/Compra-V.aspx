<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Compra-V.aspx.cs" Inherits="WebApplication2.Compra_V" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Compra-V Styles.css">
    <link rel="shortcut icon" href="/Home/imagen/Imagen23-removebg-preview.png" type="image/x-icon">
    <title>Compra-Venta</title>
</head>
<body>


<header>
    <h1>Compra-Venta</h1>
    <nav>
        <ul>
            <li><a href="Propietario.aspx">Inicio</a></li>
            <li><a href="Finanzas.aspx">Finanzas</a></li>
            <li><a href="#distribuidores">Distribuidores</a></li>
            <li><a href="#administracion-tienda">Administración de Tienda</a></li>
   
        </ul>
    </nav>
</header>


<section id="compra-venta">
    <h2>Compra y Venta de Productos</h2>


    <div id="agregar-producto">
        <h3>Agregar Nuevo Producto</h3>
        <table>
            <tr>
                <td><label for="nombre-producto">Nombre:</label></td>
                <td><input type="text" id="nombre-producto" name="nombre-producto" required></td>
            </tr>
            <tr>
                <td><label for="precio-producto">Precio:</label></td>
                <td><input type="number" id="precio-producto" name="precio-producto" required></td>
            </tr>
            <tr>
                <td><label for="cantidad-producto">Cantidad:</label></td>
                <td><input type="number" id="cantidad-producto" name="cantidad-producto" required></td>
            </tr>
            <tr>
                <td><label for="imagen-producto">Imagen:</label></td>
                <td><input type="file" id="imagen-producto" name="imagen-producto" accept="image/*"></td>
            </tr>
        </table>
        <button type="submit">Agregar Producto</button>
    </div>
    


<div id="productos-disponibles">
    <h3>Productos Disponibles</h3>
    <table id="tabla-productos">
        <thead>
            <tr>
                <th>Producto</th>
                <th>Precio</th>
                <th>Stock</th>
                <th>Imagen</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Aceite</td>
                <td>$50</td>
                <td>10</td>
                <td><img src="/Auditor/Home/imagen/Aceite.jpg" alt="Aceite" width="50"></td>
            </tr>
            <tr>
                <td>Aditivo</td>
                <td>$30</td>
                <td>20</td>
                <td><img src="/Auditor/Home/imagen/aditivo.jpg" alt="Aditivo" width="50"></td>
            </tr>
            
          
        </tbody>
    </table>
</div>


 
    <div id="registro-ventas">
        <h3>Registro de Ventas</h3>
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
                    <td>2024-04-10</td>
                    <td>Producto A</td>
                    <td>2</td>
                    <td>$100</td>
                </tr>
               
            </tbody>
        </table>
    </div>
</section>


<script src="Compra-Ventas-Scripts.js"></script>

</body>
</html>
