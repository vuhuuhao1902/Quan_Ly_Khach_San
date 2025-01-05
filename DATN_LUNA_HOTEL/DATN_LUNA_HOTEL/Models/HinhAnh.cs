using System;
using System.Collections.Generic;

namespace DATN_LUNA_HOTEL.Models;

public partial class HinhAnh
{
    public int Id { get; set; }

    public string? UrlHinhAnh { get; set; }

    public int? IdPhong { get; set; }

    public bool? IsDelete { get; set; }

    public virtual Phong? IdPhongNavigation { get; set; }
}
