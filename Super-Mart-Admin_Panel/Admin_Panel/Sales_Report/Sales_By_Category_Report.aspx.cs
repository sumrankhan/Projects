using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin_Panel.Sales_Report
{
    public partial class Sales_By_Category_Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCategorySalesData();
            }
        }

        private void BindCategorySalesData()
        {
            var categorySalesData = new List<CategorySalesData>
            {
                new CategorySalesData { Category = "Electronics", SalesAmount = 50000, PercentageOfTotalSales = "33%", Trend = "Up" },
                new CategorySalesData { Category = "Furniture", SalesAmount = 30000, PercentageOfTotalSales = "20%", Trend = "Stable" },
                new CategorySalesData { Category = "Clothing", SalesAmount = 20000, PercentageOfTotalSales = "13%", Trend = "Down" }
            };

            // Calculate the total sales amount
            var totalSalesAmount = 0m;
            foreach (var data in categorySalesData)
            {
                totalSalesAmount += data.SalesAmount;
            }

            // Add total sales amount to the data
            categorySalesData.Add(new CategorySalesData
            {
                Category = "Total Sold",
                SalesAmount = totalSalesAmount,
                PercentageOfTotalSales = "",
                Trend = "",
                TotalSalesAmount = totalSalesAmount
            });

            categorySalesRepeater.DataSource = categorySalesData;
            categorySalesRepeater.DataBind();
        }

        public class CategorySalesData
        {
            public string Category { get; set; }
            public decimal SalesAmount { get; set; }
            public string PercentageOfTotalSales { get; set; }
            public string Trend { get; set; }
            public decimal TotalSalesAmount { get; set; } // Used for total calculation in the footer
        }
    }
}