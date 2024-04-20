<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="WebApplication2.WebForm5" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Productos Styles.css">
    <link rel="shortcut icon" href="/Home/imagen/Imagen23-removebg-preview.png" type="image/x-icon">
    <title>Productos en Stock</title>
</head>
<body>


<header>
    <h1>Productos en Stock</h1>
    <nav>
        <ul>
            <li><a href="#ver-productos">Ver Productos</a></li>
            <li><a href="#agregar-producto">Agregar Producto</a></li>
            <li><a href="#editar-producto">Editar Producto</a></li>
            
        </ul>
    </nav>
</header>


<section id="ver-productos">

<section id="ver-productos">
    <h2>Productos en Stock</h2>
    <table>
        <thead>
            <tr>
                <th>Producto</th>
                <th>Cantidad</th>
                <th>Precio Unitario</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Gasolina Regular</td>
                <td>1000 litros</td>
                <td>$2.50 por litro</td>
            </tr>
            <tr>
                <td>Gasolina Premium</td>
                <td>800 litros</td>
                <td>$3.00 por litro</td>
            </tr>
         
        </tbody>
    </table>
</section>

</section>

<section id="agregar-producto">

<section id="agregar-producto">
    <h2>Agregar Nuevo Producto</h2>
    <form action="#" method="post">
        <label for="nombre-producto">Nombre del Producto:</label>
        <input type="text" id="nombre-producto" name="nombre-producto" required>

        <label for="cantidad">Cantidad:</label>
        <input type="text" id="cantidad" name="cantidad" required>

        <label for="precio-unitario">Precio Unitario:</label>
        <input type="text" id="precio-unitario" name="precio-unitario" required>

        <button type="submit">Agregar Producto</button>
    </form>
</section>

</section>

<section id="editar-producto">

<section id="editar-producto">
    <h2>Editar Producto</h2>
    <form action="#" method="post">
        <label for="seleccionar-producto">Seleccionar Producto:</label>
        <select id="seleccionar-producto" name="seleccionar-producto" required>
            <option value="gasolina-regular">Gasolina Regular</option>
            <option value="gasolina-premium">Gasolina Premium</option>
       
        </select>

        <label for="nuevo-nombre">Nuevo Nombre:</label>
        <input type="text" id="nuevo-nombre" name="nuevo-nombre" required>

        <label for="nueva-cantidad">Nueva Cantidad:</label>
        <input type="text" id="nueva-cantidad" name="nueva-cantidad" required>

        <label for="nuevo-precio-unitario">Nuevo Precio Unitario:</label>
        <input type="text" id="nuevo-precio-unitario" name="nuevo-precio-unitario" required>

        <button type="submit">Guardar Cambios</button>
    </form>
</section>

</section>



</body>
</html>
