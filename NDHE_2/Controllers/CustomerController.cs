using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NDHE_2.Models;

namespace NDHE_2.Controllers
{
    public class CustomerController : Controller
    {
        // GET: Customer
        public ActionResult Index()
        {
            return View();
        }
    }

}

public class CustomerController : Controller
{
    // GET: Customer
    public ActionResult Index()
    {
        var customerList = new List<Customer>{
            new Customer() { CustomerId = 1, CustomerName = "John", Age = 18 } ,
            new Customer() { CustomerId = 2, CustomerName = "Steve",  Age = 21 } ,
            new Customer() { CustomerId = 3, CustomerName = "Bill",  Age = 25 } ,
            new Customer() { CustomerId = 4, CustomerName = "Ram" , Age = 20 } ,
            new Customer() { CustomerId = 5, CustomerName = "Ron" , Age = 31 } ,
            new Customer() { CustomerId = 4, CustomerName = "Chris" , Age = 17 } ,
            new Customer() { CustomerId = 4, CustomerName = "Rob" , Age = 19 }
        };
        // Get the students from the database in the real application

        return View(customerList);
    }
}


