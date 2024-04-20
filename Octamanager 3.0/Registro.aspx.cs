using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication2
{
    public partial class WebForm4 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Registrarse_Click(object sender, EventArgs e)
        {
           
            string nombre = Request.Form["nombre"];
            string apellido = Request.Form["apellido"];
            string correo = Request.Form["correo"];
            string usuario = Request.Form["usuario"];
            string contrasena = Request.Form["contrasena"];
            string confirmarContrasena = Request.Form["confirmar-contrasena"];

            
            if (contrasena != confirmarContrasena)
            {
                Response.Write("<script>alert('Las contraseñas no coinciden');</script>");
                return;
            }

            if (GuardarInformacionUsuario(nombre, apellido, correo, usuario, contrasena))
            {
           
                Response.Redirect("Inicio de secion.aspx");
            }
            else
            {
                
                Response.Write("<script>alert('Error al registrar al usuario');</script>");
            }
        }

        private bool GuardarInformacionUsuario(string nombre, string apellido, string correo, string usuario, string contrasena)
        {
            string connectionString = "cadena_de_conexion";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Usuarios (Nombre, Apellido, Correo, Usuario, Contraseña) VALUES (@Nombre, @Apellido, @Correo, @Usuario, @Contraseña)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Nombre", nombre);
                    command.Parameters.AddWithValue("@Apellido", apellido);
                    command.Parameters.AddWithValue("@Correo", correo);
                    command.Parameters.AddWithValue("@Usuario", usuario);
                    command.Parameters.AddWithValue("@Contraseña", contrasena);
                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    return rowsAffected > 0;
                }
            }

            return false; 
        }
    }
}
