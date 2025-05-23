using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin_Panel.Sales_Report
{
    public partial class Returns_Refunds_Report : System.Web.UI.Page
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
            var salesData = new List<SalesReportData>
            {
                new SalesReportData { ProductID = "P101", ProductName = "Wireless Earbuds", SaleDate = DateTime.Parse("2024-10-20"), QuantitySold = 2, UnitPrice = 40, Status = "Defective" },
                new SalesReportData { ProductID = "P102", ProductName = "Smartwatch Series 3", SaleDate = DateTime.Parse("2024-10-21"), QuantitySold = 1, UnitPrice = 250, Status = "Sold" },
                new SalesReportData { ProductID = "P103", ProductName = "Laptop Pro X", SaleDate = DateTime.Parse("2024-10-22"), QuantitySold = 1, UnitPrice = 1200, Status = "Returned" },
                new SalesReportData { ProductID = "P104", ProductName = "Smartphone Z5", SaleDate = DateTime.Parse("2024-10-23"), QuantitySold = 3, UnitPrice = 600, Status = "Sold" },
                new SalesReportData { ProductID = "P105", ProductName = "Gaming Keyboard MK20", SaleDate = DateTime.Parse("2024-10-24"), QuantitySold = 5, UnitPrice = 80, Status = "Sold" },
                new SalesReportData { ProductID = "P106", ProductName = "Wireless Charger Pro", SaleDate = DateTime.Parse("2024-10-25"), QuantitySold = 4, UnitPrice = 30, Status = "Sold" },
                new SalesReportData { ProductID = "P107", ProductName = "Bluetooth Speaker X", SaleDate = DateTime.Parse("2024-10-26"), QuantitySold = 3, UnitPrice = 60, Status = "Defective" },
                new SalesReportData { ProductID = "P108", ProductName = "USB-C Hub", SaleDate = DateTime.Parse("2024-10-27"), QuantitySold = 7, UnitPrice = 25, Status = "Sold" },
                new SalesReportData { ProductID = "P109", ProductName = "HDMI Cable 4K", SaleDate = DateTime.Parse("2024-10-28"), QuantitySold = 10, UnitPrice = 15, Status = "Sold" },
                new SalesReportData { ProductID = "P110", ProductName = "Portable SSD 1TB", SaleDate = DateTime.Parse("2024-10-29"), QuantitySold = 2, UnitPrice = 100, Status = "Sold" }
            };

            // Calculate total values
            var totalQuantity = 0;
            var totalRevenue = 0m;

            foreach (var data in salesData)
            {
                totalQuantity += data.QuantitySold;
                totalRevenue += data.QuantitySold * data.UnitPrice;
            }

            // Add totals to the sales data list for binding
            salesData.Add(new SalesReportData
            {
                ProductID = "Total",
                ProductName = "Total",
                QuantitySold = totalQuantity,
                UnitPrice = totalRevenue / totalQuantity, // This will display an average price in total row
                Status = "",
                TotalQuantity = totalQuantity,
                TotalRevenue = totalRevenue
            });

            salesReportRepeater.DataSource = salesData;
            salesReportRepeater.DataBind();
        }

        public class SalesReportData
        {
            public string ProductID { get; set; }
            public string ProductName { get; set; }
            public DateTime SaleDate { get; set; }
            public int QuantitySold { get; set; }
            public decimal UnitPrice { get; set; }
            public string Status { get; set; }
            public int TotalQuantity { get; set; } // For total quantity
            public decimal TotalRevenue { get; set; } // For total revenue
        }
    }
}