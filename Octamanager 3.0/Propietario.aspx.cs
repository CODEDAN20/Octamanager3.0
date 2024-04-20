using System;
using System.Web.UI;

namespace WebApplication2
{
    public partial class Propietario : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                
                AgregarNuevoDistribuidor();
            }
        }

        private void AgregarNuevoDistribuidor()
        {
            string nombreDistribuidor = Request.Form["nombre-distribuidor"];
            string informacionContacto = Request.Form["contacto"];

            
            ScriptManager.RegisterStartupScript(this, GetType(), "NuevoDistribuidor", "alert('¡Nuevo distribuidor agregado exitosamente!');", true);
        }
    }
}
