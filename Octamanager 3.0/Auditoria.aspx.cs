using System;
using System.Web.UI;

namespace WebApplication2
{
    public partial class WebForm6 : Page
    {
     
       
        protected void ImprimirInformeButton_Click(object sender, EventArgs e)
        {
            // Aquí colocas la lógica para manejar el clic del botón "Imprimir Informe"
            // Puedes acceder a los datos de la fila y realizar cualquier acción necesaria
            // Por ejemplo, imprimir el informe de la auditoría correspondiente
            // Puedes obtener la fecha de la fila haciendo referencia a los controles en el DOM o pasándola como un atributo de datos
            // Aquí estoy mostrando un mensaje de alerta como ejemplo
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Imprimiendo informe de la auditoría');", true);
        }
    }
}
