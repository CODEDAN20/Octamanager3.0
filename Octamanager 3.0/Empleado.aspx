<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleado.aspx.cs" Inherits="WebApplication2.WebForm5" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Empleado Styles.css">
    <link rel="shortcut icon" href="/Home/imagen/Imagen23-removebg-preview.png" type="image/x-icon">
    <title>Panel de Empleado</title>
</head>
<body>

<header>
    <h1>Bienvenido</h1>
    <nav>
        <ul>
            <li><a href="Productos.aspx">Productos en Stock</a></li>
            <li><a href="Ventas.aspx">Historial de Ventas</a></li>
            <li><a href="Generador R.aspx">Generar Reportes</a></li>
        </ul>
    </nav>
</header>

<section id="productos">
    <h2>Productos en Stock</h2>
    <table>
        <thead>
            <tr>
                <th>Producto</th>
                <th>Cantidad</th>
                <th>Precio</th>
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

<section id="ventas">
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
        </tbody>
    </table>
</section>

<section id="reportes">
    <h2>Generar Reportes</h2>
    <form runat="server">
        <label for="tipo-reporte">Tipo de Reporte:</label>
        <asp:DropDownList ID="tipoReporteDropDown" runat="server">
            <asp:ListItem Value="ventas">Ventas</asp:ListItem>
            <asp:ListItem Value="stock">Stock</asp:ListItem>
        </asp:DropDownList>

        <label for="fecha-inicio">Fecha de Inicio:</label>
        <asp:TextBox ID="fechaInicioTextBox" runat="server" />

        <label for="fecha-fin">Fecha de Fin:</label>
        <asp:TextBox ID="fechaFinTextBox" runat="server" />

        <asp:Button ID="generarReporteButton" Text="Generar Reporte" OnClick="GenerarReporte_Click" runat="server" />
    </form>
</section>

</body>
</html>
