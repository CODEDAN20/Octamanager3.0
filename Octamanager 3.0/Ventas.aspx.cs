using System;
using System.Web.UI;

namespace WebApplication2
{
    public partial class Ventas : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                // Si se envió el formulario, manejar el registro de ventas
                RegistrarVenta();
            }
        }

        private void RegistrarVenta()
        {
            // Obtener los valores enviados desde el formulario
            string producto = Request.Form["producto"];
            string cantidad = Request.Form["cantidad"];
            string total = Request.Form["total"];

            // Aquí podrías realizar operaciones de validación y almacenamiento en la base de datos

            // Mostrar un mensaje de confirmación
            ScriptManager.RegisterStartupScript(this, GetType(), "RegistroExitoso", "alert('¡Venta registrada exitosamente!');", true);
        }
    }
}
