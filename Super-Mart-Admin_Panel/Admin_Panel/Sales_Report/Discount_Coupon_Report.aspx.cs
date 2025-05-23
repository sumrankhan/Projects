using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin_Panel.Sales_Report
{
    public partial class Discount_Coupon_Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCouponData();
            }

        }
        private void BindCouponData()
        {
            var couponData = new List<CouponReport>
            {
                new CouponReport { CouponCode = "WELCOME10", DiscountType = "10% Off", SalesWithDiscount = 15000, SalesWithoutDiscount = 12500, RedemptionRate = 75, RevenueImpact = 20, TopCategory = "Electronics", ExpirationDate = DateTime.Parse("2024-12-31") },
                new CouponReport { CouponCode = "FREESHIP", DiscountType = "Free Shipping", SalesWithDiscount = 8500, SalesWithoutDiscount = 8000, RedemptionRate = 60, RevenueImpact = 6, TopCategory = "Clothing", ExpirationDate = DateTime.Parse("2024-11-15") },
                new CouponReport { CouponCode = "SUMMER20", DiscountType = "20% Off", SalesWithDiscount = 25000, SalesWithoutDiscount = 22000, RedemptionRate = 85, RevenueImpact = 13, TopCategory = "Home & Kitchen", ExpirationDate = DateTime.Parse("2024-10-30") },
                new CouponReport { CouponCode = "BLACKFRIDAY", DiscountType = "50% Off", SalesWithDiscount = 50000, SalesWithoutDiscount = 40000, RedemptionRate = 95, RevenueImpact = 25, TopCategory = "Electronics", ExpirationDate = DateTime.Parse("2024-11-29") },
                new CouponReport { CouponCode = "NEWYEAR50", DiscountType = "50% Off", SalesWithDiscount = 10000, SalesWithoutDiscount = 9500, RedemptionRate = 50, RevenueImpact = 5, TopCategory = "Sports & Outdoors", ExpirationDate = DateTime.Parse("2025-01-15") }
            };

            couponReportRepeater.DataSource = couponData;
            couponReportRepeater.DataBind();
        }

        public class CouponReport
        {
            public string CouponCode { get; set; }
            public string DiscountType { get; set; }
            public decimal SalesWithDiscount { get; set; }
            public decimal SalesWithoutDiscount { get; set; }
            public double RedemptionRate { get; set; }
            public double RevenueImpact { get; set; }
            public string TopCategory { get; set; }
            public DateTime ExpirationDate { get; set; }
        }
    }
}