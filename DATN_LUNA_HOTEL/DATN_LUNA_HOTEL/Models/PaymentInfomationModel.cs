﻿namespace DATN_LUNA_HOTEL.Models
{
    public class PaymentInfomationModel
    {
        public string Name { get; set; }
        public int OrderId { get; set; }
        public double Amount { get; set; }
        public string OrderDescription { get; set; }
        public DateTime CreatedDate { get; set; }
    }
}
