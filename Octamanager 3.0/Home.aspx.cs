using System;
using System.Web.UI;

namespace WebApplication2
{
    public partial class WebForm1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

    
        protected void IniciarSesion_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("IniciodeSecion.aspx");
        }
    }
}
