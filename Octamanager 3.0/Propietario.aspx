<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Propietario.aspx.cs" Inherits="WebApplication2.WebForm5" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Propietario Styles.css">
    <link rel="shortcut icon" href="/Home/imagen/Imagen23-removebg-preview.png" type="image/x-icon">
    <title>Módulo de Propietario</title>
</head>
<body>


<header>
    <h1>Módulo de Propietario</h1>
    <nav>
        <ul>
            <li><a href="Finanzas.aspx">Finanzas</a></li>
            <li><a href="Compra-V.aspx">Compra/Venta</a></li>
            <li><a href="#distribuidores">Distribuidores</a></li>
            <li><a href="#administracion-tienda">Administración de Tienda</a></li>

        </ul>
    </nav>
</header>


<section id="finanzas">
    <h2>Finanzas</h2>
    <div id="informacion-financiera">
        <p>Saldo actual: $500,000</p>
        <p>Ingresos mensuales: $50,000</p>
        <p>Gastos mensuales: $30,000</p>
    </div>
    <div id="grafico-financiero">
        <canvas id="myChart"></canvas>
    </div>
</section>


<section id="compra-venta">
    <h2>Compra/Venta</h2>
    <div id="registro-productos">

        <h3>Registro de Productos</h3>
        <form>
            <label for="nombre-producto">Nombre del Producto:</label>
            <input type="text" id="nombre-producto" name="nombre-producto" required>

            <label for="precio">Precio:</label>
            <input type="number" id="precio" name="precio" required>

            <label for="cantidad">Cantidad en Stock:</label>
            <input type="number" id="cantidad" name="cantidad" required>

            <button type="submit">Registrar Producto</button>
        </form>
    </div>

    <div id="historial-ventas">
 
        <h3>Historial de Ventas</h3>
        <table>
            <thead>
                <tr>
                    <th>Producto</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                    <th>Fecha</th>
                </tr>
            </thead>
            <tbody>
                
                    <td>Aceite de Motor</td>
                    <td>$20</td>
                    <td>5 unidades</td>
                    <td>2024-03-15</td>
                </tr>
               
            </tbody>
        </table>
    </div>
</section>



<section id="distribuidores">
    <h2>Distribuidores</h2>
    <div id="lista-distribuidores">
 
        <ul>
            <li>Distribuidor A</li>
            <li>Distribuidor B</li>
            <li>Distribuidor C</li>
     
        </ul>
    </div>

    <div id="agregar-distribuidor">
    
        <h3>Agregar Nuevo Distribuidor</h3>
        <form>
            <label for="nombre-distribuidor">Nombre del Distribuidor:</label>
            <input type="text" id="nombre-distribuidor" name="nombre-distribuidor" required>

            <label for="contacto">Información de Contacto:</label>
            <textarea id="contacto" name="contacto" required></textarea>

            <button type="submit">Agregar Distribuidor</button>
        </form>
    </div>
</section>


<section id="administracion-tienda">
    <h2>Administración de Tienda</h2>
    <div id="informacion-tienda">
    
        <p>Dirección: Calle Principal, Ciudad</p>
        <p>Horario de Operación: Lunes a Viernes, 9 am - 6 pm</p>
        <p>Contacto: info@tutienda.com</p>
    </div>

    <div id="empleados-tienda">
   
        <h3>Lista de Empleados</h3>
        <ul>
            <li>Empleado 1</li>
            <li>Empleado 2</li>
            <li>Empleado 3</li>
   
        </ul>
    </div>
</section>


<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    var ctx = document.getElementById('myChart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio'],
            datasets: [{
                label: 'Ingresos',
                data: [50000, 55000, 60000, 65000, 70000, 75000],
                backgroundColor: 'rgba(54, 162, 235, 0.2)',
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1
            }, {
                label: 'Gastos',
                data: [30000, 32000, 33000, 34000, 35000, 36000],
                backgroundColor: 'rgba(255, 99, 132, 0.2)',
                borderColor: 'rgba(255, 99, 132, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
</script>

</body>
</html>
