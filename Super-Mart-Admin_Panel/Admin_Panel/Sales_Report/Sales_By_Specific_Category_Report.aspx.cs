using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin_Panel.Sales_Report
{
    public partial class Sales_By_Specific_Category_Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindSalesData();
            }

        }
        private void BindSalesData()
        {
            var salesData = new List<SalesData>
            {
                new SalesData { ProductCode = "P12", Price = 220, QuantitySold = 120, NumberOfOrders = 75, RefundQuantity = 3, RefundAmount = 50 },
                new SalesData { ProductCode = "P12", Price = 220, QuantitySold = 120, NumberOfOrders = 75, RefundQuantity = 3, RefundAmount = 50 },
                new SalesData { ProductCode = "P12", Price = 220, QuantitySold = 120, NumberOfOrders = 75, RefundQuantity = 3, RefundAmount = 50 },
                new SalesData { ProductCode = "P12", Price = 220, QuantitySold = 120, NumberOfOrders = 75, RefundQuantity = 3, RefundAmount = 50 }
            };

            // Calculate totals
            decimal totalSalesAmount = 0, totalRefundAmount = 0, totalPrice = 0;
            int totalQuantitySold = 0, totalOrders = 0, totalRefundQuantity = 0;

            foreach (var data in salesData)
            {
                totalSalesAmount += data.TotalSales;
                totalRefundAmount += data.RefundAmount;
                totalPrice = data.Price;
                totalQuantitySold += data.QuantitySold;
                totalOrders += data.NumberOfOrders;
                totalRefundQuantity += data.RefundQuantity;
            }

            // Add the totals as the last row
            salesData.Add(new SalesData
            {
                ProductCode = "Total",
                Price = totalPrice,
                QuantitySold = totalQuantitySold,
                TotalSales = totalSalesAmount,
                RefundQuantity = totalRefundQuantity,
                RefundAmount = totalRefundAmount,
                NumberOfOrders = totalOrders
            });

            salesRepeater.DataSource = salesData;
            salesRepeater.DataBind();
        }

        public class SalesData
        {
            public string ProductCode { get; set; }
            public decimal Price { get; set; }
            public int QuantitySold { get; set; }

            // Change the calculated property to a regular field that can be updated manually
            private decimal _totalSales;

            public decimal TotalSales
            {
                get { return _totalSales; }
                set { _totalSales = value; }
            }

            public decimal AverageOrderValue
            {
                get { return (QuantitySold > 0) ? TotalSales / QuantitySold : 0; }
            }

            public int NumberOfOrders { get; set; }
            public int RefundQuantity { get; set; }
            public decimal RefundAmount { get; set; }

            // Additional properties
            public decimal TotalSalesAmount { get; set; }
            public int TotalQuantitySold { get; set; }
            public decimal TotalRefundAmount { get; set; }
            public int TotalOrders { get; set; }
            public int TotalRefundQuantity { get; set; }

            public decimal TotalPrice { get; set; }

            public decimal AverageOrderValueTotal
            {
                get { return TotalSalesAmount / TotalQuantitySold; }
            }
        }


    }
}