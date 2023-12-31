﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using GBFShoe.Models;
namespace GBFShoe.Areas.Dashboard.Controllers
{
    public class LoginController : Controller
    {
        GBFShoeEntities db = new GBFShoeEntities();
        // GET: Dashboard/Login
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Login(FormCollection f)
        {
            string UserName = f["email"].ToString();
            string Password = f["password"].ToString();
            var admin = db.Admins.SingleOrDefault(n => n.Gmail == UserName && n.Password == Password);
            if(admin != null)
            {
                Session["Admin"] = admin;
               return RedirectToAction("Index", "Admin");
            }
            TempData["err"] = "Faile To Login";
            return RedirectToAction("Login");
        }
    }
}