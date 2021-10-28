using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using WebApplication.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;


        static List<Person> GetPersons()
        {
            string con = "Data source = localhost; Initial catalog=HomeWork27_26.10.2021; Integrated security=true";
            var persons = new List<Person>();
            using (IDbConnection db = new SqlConnection(con))
            {
                persons = db.Query<Person>("SELECT * FROM Person").ToList();
            }
            return persons;
        }

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View(GetPersons());
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
