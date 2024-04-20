using System;
using System.Web.UI;
using Microsoft.Data.Sqlite;

namespace WebApplication2You
{
    public partial class WebForm2 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void IniciarSesion_Click(object sender, EventArgs e)
        {
            
            string usuario = Request.Form["usuario"];
            string contrasena = Request.Form["contrasena"];

            
            if (usuario == "usuario" && contrasena == "contraseña")
            {
                
                Response.Redirect("Home.aspx");
            }
            else
            {
                
                Response.Write("<script>alert('Usuario o contraseña incorrectos');</script>");
            }
        }
    }
}
