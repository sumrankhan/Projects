using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin_Panel.Sales_Report
{
    public partial class Profit_Margin_Report : System.Web.UI.Page
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
                new SalesReportData { ProductName = "Product A", UnitsSold = 100, SellingPrice = 20, CostPrice = 10, TotalRevenue = 2000, TotalCost = 1000, TotalProfit = 1000, ProfitMargin = 50 },
                new SalesReportData { ProductName = "Product B", UnitsSold = 200, SellingPrice = 30, CostPrice = 15, TotalRevenue = 6000, TotalCost = 3000, TotalProfit = 3000, ProfitMargin = 50 },
                new SalesReportData { ProductName = "Product C", UnitsSold = 150, SellingPrice = 25, CostPrice = 20, TotalRevenue = 3750, TotalCost = 3000, TotalProfit = 750, ProfitMargin = 20 },
                new SalesReportData { ProductName = "Product D", UnitsSold = 300, SellingPrice = 15, CostPrice = 8, TotalRevenue = 4500, TotalCost = 2400, TotalProfit = 2100, ProfitMargin = 46 },
                new SalesReportData { ProductName = "Product E", UnitsSold = 50, SellingPrice = 100, CostPrice = 60, TotalRevenue = 5000, TotalCost = 3000, TotalProfit = 2000, ProfitMargin = 40 },
                new SalesReportData { ProductName = "Product F", UnitsSold = 75, SellingPrice = 40, CostPrice = 30, TotalRevenue = 3000, TotalCost = 2250, TotalProfit = 750, ProfitMargin = 25 },
                new SalesReportData { ProductName = "Product G", UnitsSold = 100, SellingPrice = 10, CostPrice = 5, TotalRevenue = 1000, TotalCost = 500, TotalProfit = 500, ProfitMargin = 50 }
            };

            salesReportRepeater.DataSource = salesData;
            salesReportRepeater.DataBind();
        }

        public class SalesReportData
        {
            public string ProductName { get; set; }
            public int UnitsSold { get; set; }
            public decimal SellingPrice { get; set; }
            public decimal CostPrice { get; set; }
            public decimal TotalRevenue { get; set; }
            public decimal TotalCost { get; set; }
            public decimal TotalProfit { get; set; }
            public decimal ProfitMargin { get; set; }
        }
    }
}