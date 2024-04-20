<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="WebApplication2.WebForm4" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Registro Styles.css">
    <link rel="shortcut icon" href="/Home/imagen/Imagen23-removebg-preview.png" type="image/x-icon">
    <title>Registrarse</title>
</head>
<body>


<div class="register-container">
    <h2>Regístrate</h2>
    <form action="#" method="post">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>

        <label for="apellido">Apellido:</label>
        <input type="text" id="apellido" name="apellido" required>

        <label for="correo">Correo Electrónico:</label>
        <input type="email" id="correo" name="correo" required>

        <label for="usuario">Usuario:</label>
        <input type="text" id="usuario" name="usuario" required>

        <label for="contrasena">Contraseña:</label>
        <input type="password" id="contrasena" name="contrasena" required>

        <label for="confirmar-contrasena">Confirmar Contraseña:</label>
        <input type="password" id="confirmar-contrasena" name="confirmar-contrasena" required>

        <button type="submit">Registrarse</button>
    </form>
    <p>¿Ya tienes una cuenta? <a href="Inicio de secion.aspx">Inicia sesión aquí</a></p>
</div>

</body>
</html>
