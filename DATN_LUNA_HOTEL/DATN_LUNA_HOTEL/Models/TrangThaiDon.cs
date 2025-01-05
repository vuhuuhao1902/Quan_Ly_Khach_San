using System;
using System.Collections.Generic;

namespace DATN_LUNA_HOTEL.Models;

public partial class TrangThaiDon
{
    public int Id { get; set; }

    public string? TenTrangThai { get; set; }

    public virtual ICollection<DatPhong> DatPhongs { get; set; } = new List<DatPhong>();
}
