<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Finanzas.aspx.cs" Inherits="WebApplication2.WebForm5" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Finanzas Styles.css">
    <link rel="shortcut icon" href="/Home/imagen/Imagen23-removebg-preview.png" type="image/x-icon">
    <title>Finanzas</title>
</head>
<body>


<header>
    <h1>Finanzas</h1>
    <nav>
        <ul>
            <li><a href="Propietario.aspx">Inicio</a></li>
            <li><a href="Compra-V.aspx">Compra/Venta</a></li>
            <li><a href="#distribuidores">Distribuidores</a></li>
            <li><a href="#administracion-tienda">Administración de Tienda</a></li>
 
        </ul>
    </nav>
</header>


<section id="informacion-financiera">
    <h2>Información Financiera</h2>
    <div id="saldo-actual">
        <p>Saldo actual: $500,000</p>
    </div>
    <div id="ingresos-gastos">
        <p>Ingresos mensuales: $50,000</p>
        <p>Gastos mensuales: $30,000</p>
    </div>

    <div id="historial-transacciones">
        <h3>Historial de Transacciones</h3>
        <ul id="transacciones-lista">
            <li><strong>Fecha:</strong> 2024-04-10 | <strong>Tipo:</strong> Ingreso | <strong>Monto:</strong> $5,000 | <strong>Descripción:</strong> Venta de productos</li>
            <li><strong>Fecha:</strong> 2024-04-05 | <strong>Tipo:</strong> Gasto | <strong>Monto:</strong> $1,500 | <strong>Descripción:</strong> Pago de servicios</li>
    
        </ul>
    </div>

    <div id="resumen-anual">
        <h3>Resumen Anual</h3>
        <p>Total de ingresos este año: $600,000</p>
        <p>Total de gastos este año: $360,000</p>
        <p>Beneficio neto este año: $240,000</p>
    </div>
</section>


<div id="historial-ingresos">
    <h3>Historial de Ingresos</h3>
    <table>
        <thead>
            <tr>
                <th>Fecha</th>
                <th>Monto</th>
                <th>Descripción</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>2024-04-10</td>
                <td>$5,000</td>
                <td>Venta de productos</td>
            </tr>
       
        </tbody>
    </table>
</div>

<div id="historial-gastos">
    <h3>Historial de Gastos</h3>
    <table>
        <thead>
            <tr>
                <th>Fecha</th>
                <th>Monto</th>
                <th>Descripción</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>2024-04-05</td>
                <td>$1,500</td>
                <td>Pago de servicios</td>
            </tr>
        
        </tbody>
    </table>
</div>

<section id="grafico-financiero">
    <h2>Gráfico Financiero</h2>
    <div id="chart-container">
        <canvas id="myChart"></canvas>
    </div>
</section>


<section id="agregar-transaccion">
    <h2>Agregar Nueva Transacción</h2>
    <form id="formulario-transaccion">
        <div>
            <label for="tipo">Tipo:</label>
            <select id="tipo" name="tipo">
                <option value="ingreso">Ingreso</option>
                <option value="gasto">Gasto</option>
            </select>
        </div>
        <div>
            <label for="monto">Monto:</label>
            <input type="number" id="monto" name="monto" required>
        </div>
        <div>
            <label for="descripcion">Descripción:</label>
            <input type="text" id="descripcion" name="descripcion" required>
        </div>
        <button type="submit">Agregar Transacción</button>
    </form>
</section>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script>
    var ctx = document.getElementById('myChart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],
            datasets: [{
                label: 'Ingresos',
                data: [50000, 55000, 60000, 65000, 70000, 75000, 80000, 85000, 90000, 95000, 100000, 105000],
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 2,
                fill: false
            }, {
                label: 'Gastos',
                data: [30000, 32000, 33000, 34000, 35000, 36000, 37000, 38000, 39000, 40000, 41000, 42000],
                borderColor: 'rgba(255, 99, 132, 1)',
                borderWidth: 2,
                fill: false
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

   
    document.getElementById('formulario-transaccion').addEventListener('submit', function(event) {
        event.preventDefault(); 

       
        var tipo = document.getElementById('tipo').value;
        var monto = parseFloat(document.getElementById('monto').value);
        var descripcion = document.getElementById('descripcion').value;

     
        var nuevaTransaccion = document.createElement('li');
        nuevaTransaccion.innerHTML = '<strong>Tipo:</strong> ' + tipo + ' | <strong>Monto:</strong> $' + monto.toFixed(2) + ' | <strong>Descripción:</strong> ' + descripcion;

     
        document.getElementById('transacciones-lista').appendChild(nuevaTransaccion);

      
        document.getElementById('formulario-transaccion').reset();
    });
</script>


<section id="calculadora-financiera">
    <h2>Calculadora Financiera</h2>
    <div>
        <label for="ingresos">Ingresos:</label>
        <input type="number" id="ingresos" name="ingresos">
    </div>
    <div>
        <label for="gastos">Gastos:</label>
        <input type="number" id="gastos" name="gastos">
    </div>
    <button onclick="calcularBeneficio()">Calcular Beneficio Neto</button>
    <div id="resultado"></div>
</section>

<script>
    function calcularBeneficio() {
        var ingresos = parseFloat(document.getElementById('ingresos').value);
        var gastos = parseFloat(document.getElementById('gastos').value);
        var beneficio = ingresos - gastos;
        document.getElementById('resultado').innerHTML = 'Beneficio neto: $' + beneficio.toFixed(2);
    }
</script>

</body>
</html>
