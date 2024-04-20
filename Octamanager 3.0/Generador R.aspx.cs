using System;
using System.Data;
using System.IO;
using System.Web;
using System.Web.UI;

namespace WebApplication2
{
    public partial class GeneradorR : Page
    {
        

        protected void ExportarExcelButton_Click(object sender, EventArgs e)
        {
            // Crear un nuevo objeto DataTable y agregar las filas con los datos necesarios
            DataTable dt = new DataTable();
            dt.Columns.Add("Fecha", typeof(string));
            dt.Columns.Add("Total de Ventas", typeof(decimal));
            dt.Rows.Add("2024-03-01", 500.00m);
            dt.Rows.Add("2024-02-29", 700.00m);
            // Agrega más filas según sea necesario

            // Llamar al método de exportación a Excel y pasar el DataTable
            ExportarDataTableAExcel(dt, "VentasDiarias");
        }

        private void ExportarDataTableAExcel(DataTable dt, string nombreHoja)
        {
            // Crear un objeto Response para enviar el archivo al navegador
            HttpResponse response = HttpContext.Current.Response;
            response.Clear();
            response.Charset = "";
            response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
            response.AddHeader("content-disposition", $"attachment;filename={nombreHoja}.xlsx");

            
        }
    }
}
