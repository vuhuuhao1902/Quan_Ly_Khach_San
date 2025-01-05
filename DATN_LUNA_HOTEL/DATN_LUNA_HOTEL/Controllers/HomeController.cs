﻿using DATN_LUNA_HOTEL.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace DATN_LUNA_HOTEL.Controllers
{
    public class HomeController : Controller
    {
        QuanLyKhachSanContext db = new QuanLyKhachSanContext();
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            HttpContext.Session.Remove("cart");
            HttpContext.Session.Remove("bat_dau");
            HttpContext.Session.Remove("ket_thuc");

            List<KhachSan> ks_List = db.KhachSans.Where(x => x.IsDelete == false).OrderByDescending(x => x.Id).ToList();

            return View(ks_List);
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