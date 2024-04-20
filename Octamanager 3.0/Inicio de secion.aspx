<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio de secion.aspx.cs" Inherits="WebApplication2.WebForm5" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Inicio de secion Styles.css">
    <link rel="shortcut icon" href="/Home/imagen/Imagen23-removebg-preview.png" type="image/x-icon">
    <title>Iniciar Sesión</title>
</head>
<body>


<div class="login-container">
    <h2>Iniciar Sesión</h2>
    <form action="#" method="post">
        <label for="usuario">Usuario:</label>
        <input type="text" id="usuario" name="usuario" required>

        <label for="contrasena">Contraseña:</label>
        <input type="password" id="contrasena" name="contrasena" required>

        <button type="submit">Iniciar Sesión</button>
    </form>
    <p><a href="Olvidaste la C.aspx">¿Olvidaste tu contraseña?</a></p>
    <p>¿No tienes una cuenta? <a href="Registro.aspx">Regístrate aquí</a></p>
</div>
<script src="Home.js"></script>
</body>
</html>
