using System;
using System.Web.UI;

namespace WebApplication2
{
    public partial class Productos : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                // Si se envió el formulario, manejar la adición de un nuevo producto
                AgregarNuevoProducto();
            }
        }

        private void AgregarNuevoProducto()
        {
            // Obtener los valores enviados desde el formulario
            string nombreProducto = Request.Form["nombre-producto"];
            string cantidad = Request.Form["cantidad"];
            string precioUnitario = Request.Form["precio-unitario"];

            // Aquí podrías realizar operaciones de validación y almacenamiento en la base de datos
            // Por ahora, solo mostraremos un mensaje de confirmación
            ScriptManager.RegisterStartupScript(this, GetType(), "NuevoProducto", "alert('¡Nuevo producto agregado exitosamente!');", true);
        }
    }
}
