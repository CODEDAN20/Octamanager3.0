<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Home styles.css">
    <link rel="shortcut icon" href="/Home/imagen/Imagen23-removebg-preview.png" type="image/x-icon">
    <title>Tu Aplicación</title>
</head>
<body>


<div class="inicio">
    <div class="container">
        <h1>Bienvenido a Tu Aplicación</h1>
        <p>Gestiona el personal, realiza auditorías detalladas y controla todas las funciones administrativas y financieras de tus estaciones de combustible.</p>
        <div class="caracteristicas">
            <div class="caracteristica">
                <img src= "imagen\Empleado.jpg" alt="Gestión de personal">
                <h3>Gestiona el personal</h3>
                <p>Optimiza la gestión de tus estaciones de combustible controlando el personal de manera eficiente.</p>
            </div>
            <div class="caracteristica">
                <img src= "imagen/Auditor.jpg" alt="Auditorías detalladas">
                <h3>Realiza auditorías detalladas</h3>
                <p>Mantén el control de tus operaciones a través de auditorías detalladas y precisas.</p>
            </div>
            <div class="caracteristica">
                <img src= "imagen/estacion de combustible.jpg" alt="Control administrativo y financiero">
                <h3>Control administrativo y financiero</h3>
                <p>Administra todas las funciones administrativas y financieras para un mejor rendimiento de tus estaciones.</p>
            </div>
        </div>
        <a href="Inicio de secion.aspx" class="btn-iniciar-sesion">Iniciar Sesión</a>

    </div>
</div>


<script src="Home.js"></script>
</body>
</html>

