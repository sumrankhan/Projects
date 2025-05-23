using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin_Panel.Sales_Report
{
    public partial class Abondoned_Cart_Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRepeaterWithSampleData();
            }

        }
        private void BindRepeaterWithSampleData()
        {
            // Sample data for demonstration purposes
            var sampleData = new List<ProductReport>
        {
            new ProductReport { ProductCode = "P12", ProductName = "Sample Product", AbandonedCartValue = 220.0m, QuantityAbandoned = 50, PotentialRevenue = 11000.0m, LastAddedToCart = new DateTime(2024, 10, 29), UserSessions = 120, CartAbandonmentRate = 0.625m },
            new ProductReport { ProductCode = "P13", ProductName = "Test Product", AbandonedCartValue = 150.0m, QuantityAbandoned = 30, PotentialRevenue = 4500.0m, LastAddedToCart = new DateTime(2024, 10, 25), UserSessions = 75, CartAbandonmentRate = 0.5m },
            // Add more sample records as needed
        };

            categoryReportTableRepeater.DataSource = sampleData;
            categoryReportTableRepeater.DataBind();
        }
    }

    public class ProductReport
    {
        public string ProductCode { get; set; }
        public string ProductName { get; set; }
        public decimal AbandonedCartValue { get; set; }
        public int QuantityAbandoned { get; set; }
        public decimal PotentialRevenue { get; set; }
        public DateTime LastAddedToCart { get; set; }
        public int UserSessions { get; set; }
        public decimal CartAbandonmentRate { get; set; }
    }
}