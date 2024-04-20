using System;
using System.Net.Mail;
using System.Web.UI;

namespace WebApplication2
{
    public partial class WebForm3 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void RecuperarContraseña_Click(object sender, EventArgs e)
        {
           
            string correo = Request.Form["correo"];


            EnviarCorreo(correo);
        }

        private void EnviarCorreo(string correo)
        {
            MailMessage message = new MailMessage();
            message.From = new MailAddress("tu_correo@gmail.com");
            message.To.Add(correo);
            message.Subject = "Instrucciones para restablecer tu contraseña";
            message.Body = "Aquí van las instrucciones para restablecer tu contraseña...";
            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.Credentials = new System.Net.NetworkCredential("tu_correo@gmail.com", "tu_contraseña");
            smtp.EnableSsl = true;
            smtp.Send(message);

        }
    }
}
