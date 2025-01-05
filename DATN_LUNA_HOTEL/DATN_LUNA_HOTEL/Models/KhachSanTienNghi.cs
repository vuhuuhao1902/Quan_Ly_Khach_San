using System;
using System.Collections.Generic;

namespace DATN_LUNA_HOTEL.Models;

public partial class KhachSanTienNghi
{
    public int Id { get; set; }

    public int? IdKhachSan { get; set; }

    public int? IdTienNghi { get; set; }

    public virtual KhachSan? IdKhachSanNavigation { get; set; }

    public virtual TienNghi? IdTienNghiNavigation { get; set; }
}
