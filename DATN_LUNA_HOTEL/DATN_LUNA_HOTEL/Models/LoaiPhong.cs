﻿using System;
using System.Collections.Generic;

namespace DATN_LUNA_HOTEL.Models;

public partial class LoaiPhong
{
    public int Id { get; set; }

    public string? TenLoai { get; set; }

    public string? GhiChu { get; set; }

    public virtual ICollection<Phong> Phongs { get; set; } = new List<Phong>();
}
