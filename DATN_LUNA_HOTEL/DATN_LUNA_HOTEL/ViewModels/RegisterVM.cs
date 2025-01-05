﻿using System.ComponentModel.DataAnnotations;

namespace DATN_LUNA_HOTEL.ViewModels

{
    public class RegisterVM
    {
        [Required(ErrorMessage = "Tài khoản không được để trống")]
        public string TenDangNhap { get; set; }
        [Required(ErrorMessage = "Mật khẩu không được để trống")]
        public string MatKhau { get; set; }
        [Required(ErrorMessage = "Mật khẩu không được để trống")]
        [Compare("MatKhau", ErrorMessage = "Mật khẩu và xác nhận mật khẩu không trùng khớp")]
        public string ConfirmMatKhau { get; set; }
        public string? HoTen { get; set; }
        public string? Email { get; set; }
    }
}
