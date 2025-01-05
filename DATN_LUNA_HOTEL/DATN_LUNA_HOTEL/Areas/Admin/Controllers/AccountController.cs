﻿using DATN_LUNA_HOTEL.Models;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;
using Microsoft.AspNet.Identity;

namespace DATN_LUNA_HOTEL.Areas.Admin.Controllers
{
    [Area("admin")]
    public class AccountController : Controller
    {
        QuanLyKhachSanContext db = new QuanLyKhachSanContext();
        public IActionResult Login()
        {
            ViewBag.action = "/admin/account/loginpost";
            return View();
        }

        [HttpPost]
        public IActionResult loginpost(IFormCollection fc)
        {
            string userName = fc["UserName"].ToString().Trim();
            string password = fc["Password"].ToString().Trim();

            var usersWithLoaiList = (from u in db.TaiKhoans
                                     join ulu in db.PhanQuyens on u.Id equals ulu.IdTaiKhoan into userLoaiGroups
                                     from ulu in userLoaiGroups.DefaultIfEmpty()
                                     join lu in db.Quyens on ulu.IdQuyen equals lu.Id into loaiGroups
                                     from lu in loaiGroups.DefaultIfEmpty()
                                     where u.TenDangNhap == userName
                                     select new
                                     {
                                         Id = u.Id,
                                         TaiKhoan = u.TenDangNhap,
                                         MatKhau = u.MatKhau,
                                         TrangThai = u.TrangThai,
                                         Loai = lu.TenQuyen,
                                     }).ToList();

            if (usersWithLoaiList != null)
            {
                var userFirst = usersWithLoaiList.First(); // Lấy thông tin người dùng đầu tiên

                int id_user = userFirst.Id;
                foreach (var user in usersWithLoaiList)
                {
                    var passwordHasher = new PasswordHasher();

                    // Kiểm tra mật khẩu nhập vào có khớp với mật khẩu đã mã hoá hay không
                    var passwordVerification = passwordHasher.VerifyHashedPassword(user.MatKhau, password);

                    // Mật khẩu đúng => chuyển hướng đến trang khác
                    if (passwordVerification == Microsoft.AspNet.Identity.PasswordVerificationResult.Success)
                    {
                        if (user.TrangThai == false)
                        {
                            TempData["baned"] = "Tài khoản đã bị cấm";
                            return Redirect("/admin/account/login");
                        }
                        else
                        {
                            if (user.Loai == null)
                            {
                                TempData["fail"] = "Bạn không có quyền truy cập admin";
                                return Redirect("/admin/account/login");
                            }

                            var claim = new List<Claim>
                            {
                                new Claim(ClaimTypes.Name, user.TaiKhoan),
                            };

                            // Thêm các vai trò vào danh sách claim
                            foreach (var userWithLoai in usersWithLoaiList)
                            {
                                if (userWithLoai.Loai != null)
                                {
                                    claim.Add(new Claim(ClaimTypes.Role, userWithLoai.Loai.ToString()));
                                }
                            }

                            var claimIdentity = new ClaimsIdentity(claim, CookieAuthenticationDefaults.AuthenticationScheme);
                            HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, new ClaimsPrincipal(claimIdentity));

                            // lưu session id và tên tài khoản
                            HttpContext.Session.SetString("login", "true");
                            //HttpContext.Session.SetInt32("id", id_user);
                            HttpContext.Session.SetInt32("idUser", id_user);
                            HttpContext.Session.SetString("taikhoan", user.TaiKhoan);
                            if (user.Loai == "Quản lý khách hàng")
                            {
                                return Redirect("/admin/taikhoan/danhmuctaikhoan");
                            }
                            if (user.Loai == "Quản lý phòng")
                            {
                                return Redirect("/admin/phong/danhmucphong");
                            }
                            if (user.Loai == "Quản lý đơn đặt")
                            {
                                return Redirect("/admin/order/danhmucgiaodich");
                            }
                            if (user.Loai == "Quản lý khách sạn")
                            {
                                return Redirect("/admin/khachsan/danhmuckhachsan");
                            }

                            return Redirect("/admin/");
                        }
                    }
                    else
                    {
                        TempData["fail"] = "Sai tài khoản hoặc mật khẩu";
                        return Redirect("/admin/account/login");
                    }
                }
            }

            return View();
        }

        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            HttpContext.SignOutAsync();
            return Redirect("/admin/account/login");
        }
    }
}
