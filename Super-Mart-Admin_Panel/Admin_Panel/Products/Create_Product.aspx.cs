using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Admin_Panel.Products
{
    public partial class Create_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // You can add any page load logic here if needed
        }

        protected void SubmitForm_Click(object sender, EventArgs e)
        {
            // Retrieve the form values
            string productName = name.Text; // Check that 'name' in aspx matches this
            string productCodeText = productCode.Text; // Use 'productCode' in .aspx
            string selectedCategory = category.SelectedValue; // Ensure 'category' matches dropdown ID
            string productSize = size.Text; // Use 'size' in .aspx
            string productColor = color.Text; // Ensure 'color' matches .aspx
            string productPrice = price.Text; // 'price' as per .aspx TextBox ID
            string productStock = stock.Text; // Use 'stock' in .aspx
            string productDescription = description.Text; // Ensure 'description' TextBox matches

            // Check if a file is uploaded
            if (inputFile.HasFile) // FileUpload ID should be 'inputFile'
            {
                try
                {
                    // Generate a unique file name to prevent overwriting
                    string fileName = Path.GetFileName(inputFile.FileName);
                    string filePath = Path.Combine(Server.MapPath("~/ProductImages/"), fileName);

                    // Save the file to the server
                    inputFile.SaveAs(filePath);

                    // Success message (can be displayed to the user)
                    Response.Write("<script>alert('Product added successfully!');</script>");

                    // Save form data to the database here, if needed
                }
                catch (Exception ex)
                {
                    // Handle errors, e.g., file save error
                    Response.Write("<script>alert('Error saving the product: " + ex.Message + "');</script>");
                }
            }
            else
            {
                // Handle case where no file was uploaded
                Response.Write("<script>alert('Please upload a product image.');</script>");
            }
        }
    }
}