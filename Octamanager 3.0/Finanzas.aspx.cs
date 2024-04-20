using System;
using System.Web.Mvc;

namespace TuProyecto.Controllers
{
    public class FinanzasController : Controller
    {
 
        public ActionResult Index()
        {
         
            return View();
        }

  
        [HttpPost]
        public ActionResult AgregarTransaccion(string tipo, decimal monto, string descripcion)
        {
         
            Console.WriteLine("Nueva transacción:");
            Console.WriteLine("Tipo: " + tipo);
            Console.WriteLine("Monto: " + monto);
            Console.WriteLine("Descripción: " + descripcion);

         
            return RedirectToAction("Index");
        }

   
        public ActionResult CalculadoraFinanciera()
        {
            
            return View();
        }

       
        [HttpPost]
        public ActionResult CalcularBeneficio(decimal ingresos, decimal gastos)
        {
            
            decimal beneficio = ingresos - gastos;

           
            return Json(new { beneficio = beneficio });
        }
    }
}
