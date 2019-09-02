﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace NDHE_2.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Description of products and services";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Naturally Devine | Hair Extensions";

            return View();
        }
    }
}