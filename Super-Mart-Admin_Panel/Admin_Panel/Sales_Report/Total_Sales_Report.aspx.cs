using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin_Panel.Sales_Report
{
    public partial class Total_Sales_Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Bind data to Repeater controls
                BindElectronicsData();
                BindKitchenData();
            }

        }
        private void BindElectronicsData()
        {
            List<CategoryItem> electronicsItems = new List<CategoryItem>
            {
                new CategoryItem { Name = "Smartphone", SoldQty = 5, Rate = 600, Total = 3000 },
                new CategoryItem { Name = "Laptop", SoldQty = 3, Rate = 1200, Total = 3600 },
                new CategoryItem { Name = "Smartwatch", SoldQty = 10, Rate = 150, Total = 1500 },
                new CategoryItem { Name = "Headphones", SoldQty = 15, Rate = 80, Total = 1200 },
                new CategoryItem { Name = "Tablet", SoldQty = 7, Rate = 300, Total = 2100 }
            };

            rptElectronics.DataSource = electronicsItems;
            rptElectronics.DataBind();
        }

        private void BindKitchenData()
        {
            List<CategoryItem> kitchenItems = new List<CategoryItem>
            {
                new CategoryItem { Name = "Blender", SoldQty = 12, Rate = 60, Total = 720 },
                new CategoryItem { Name = "Microwave Oven", SoldQty = 4, Rate = 200, Total = 800 },
                new CategoryItem { Name = "Toaster", SoldQty = 18, Rate = 30, Total = 540 },
                new CategoryItem { Name = "Coffee Maker", SoldQty = 8, Rate = 100, Total = 800 },
                new CategoryItem { Name = "Food Processor", SoldQty = 5, Rate = 150, Total = 750 }
            };

            rptKitchen.DataSource = kitchenItems;
            rptKitchen.DataBind();
        }

        // This method calculates the total sold amount for a category
        public string CalculateTotalSold(System.Web.UI.WebControls.RepeaterItemCollection items)
        {
            decimal totalSold = 0;

            foreach (RepeaterItem item in items)
            {
                Label lblTotal = (Label)item.FindControl("lblTotal"); // Find the Total Label in the ItemTemplate
                if (lblTotal != null)
                {
                    decimal total = 0;
                    if (decimal.TryParse(lblTotal.Text, out total)) // Ensure that the parsing works
                    {
                        totalSold += total;
                    }
                }
            }

            return totalSold.ToString();
        }

        public class CategoryItem
        {
            public string Name { get; set; }
            public int SoldQty { get; set; }
            public decimal Rate { get; set; }
            public decimal Total { get; set; }
        }
    }
}