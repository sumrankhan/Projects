using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin_Panel.Products
{
    public partial class Edit_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load initial data if needed
            }
        }

        protected void UploadImage_Click(object sender, EventArgs e)
        {
            // Code to handle image upload
        }

        protected void SaveChanges_Click(object sender, EventArgs e)
        {
            // Code to save changes to the product details
            string brand = brandName.Text;
            string price = productPrice.Text;
            string description = productDescription.Text;
            bool isRedSelected = colorRed.Checked;
            bool isBlueSelected = colorBlue.Checked;
            bool isWhiteSelected = colorWhite.Checked;

            // Save or update product details in the database as needed
        }
    }
}
