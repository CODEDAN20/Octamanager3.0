using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Auditoria : System.Web.UI.Page
    {


        protected void verDetalles(string fecha)
        {
            // Lógica para mostrar detalles de la auditoría
            ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Detalles de la auditoría del {fecha}');", true);
        }

        protected void imprimirInforme(string fecha)
        {
            // Lógica para imprimir el informe de la auditoría
            ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Imprimiendo informe de la auditoría del {fecha}');", true);
        }

        // Clase para representar los datos de auditoría
        public class AuditoriaData
        {
            public string Fecha { get; set; }
            public string Auditor { get; set; }
            public string Resultado { get; set; }
            public string Observaciones { get; set; }
        }
    }
}
