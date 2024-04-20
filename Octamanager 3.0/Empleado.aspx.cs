using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication2
{
    public partial class WebForm5 : Page
    {
        protected void GenerarReporte_Click(object sender, EventArgs e)
        {
            // Obtener los valores seleccionados del formulario
            string tipoReporte = tipoReporteDropDown.SelectedValue;
            DateTime fechaInicio = DateTime.Parse(fechaInicioTextBox.Text);
            DateTime fechaFin = DateTime.Parse(fechaFinTextBox.Text);

            GenerarReporte(tipoReporte, fechaInicio, fechaFin);
        }

        private void GenerarReporte(string tipoReporte, DateTime fechaInicio, DateTime fechaFin)
        {
            string connectionString = "cadena_de_conexion";
            string query = "";

            switch (tipoReporte)
            {
                case "ventas":
                    query = "SELECT Fecha, Producto, Cantidad, Total FROM Ventas WHERE Fecha BETWEEN @FechaInicio AND @FechaFin";
                    break;
                case "stock":
                    query = "SELECT Producto, Cantidad, Precio FROM Stock";
                    break;
                default:
                    // Lógica para manejar otro tipo de reporte
                    break;
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@FechaInicio", fechaInicio);
                    command.Parameters.AddWithValue("@FechaFin", fechaFin);

                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    // Aquí puedes usar los datos en 'dataTable' para construir tu tabla HTML
                    // Por ejemplo, puedes iterar sobre las filas de la tabla y construir las celdas de la tabla HTML
                    // Luego, puedes agregar esta tabla al contenido de tu página web
                }
            }
        }
    }
}
