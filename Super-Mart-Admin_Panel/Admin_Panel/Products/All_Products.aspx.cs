using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;

namespace Admin_Panel.Products
{
    public partial class All_Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProducts();
                var categories = new List<string> { "Electronics", "Furniture", "Clothing", "Groceries", "Electronics", "Furniture", "Clothing", "Groceries" };
                categoryListRepeater.DataSource = categories.Select(c => new { CategoryName = c });
                categoryListRepeater.DataBind();
            }
        }
        protected void CategorySearch_TextChanged(object sender, EventArgs e)
        {
            // Filter category list based on search input.
            // Implement filtering logic here if you need server-side search handling.
        }

        private void BindProducts()
        {
            // Example list of products
            var products = new List<Product>
            {
                new Product
                {
                    ProductName = "HD High Resolution Camera",
                    Price = 999.99m,
                    Stock = 50,
                    Category = "Electronics",
                    ImageUrl = "../images/camera-img.png",
                    EditUrl = "../products/edit-product.aspx"
                },
                new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },
                new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },new Product
                {
                    ProductName = "Wireless Headphones",
                    Price = 199.99m,
                    Stock = 120,
                    Category = "Electronics",
                    ImageUrl = "../images/handsfree.png",
                    EditUrl = "../products/edit-product.aspx"
                },
                // Add more products as needed
            };

            // Bind the list to the Repeater control
            ProductsRepeater.DataSource = products;
            ProductsRepeater.DataBind();
        }
    }

    // Define a simple Product class to hold product data
    public class Product
    {
        public string ProductName { get; set; }
        public decimal Price { get; set; }
        public int Stock { get; set; }
        public string Category { get; set; }
        public string ImageUrl { get; set; }
        public string EditUrl { get; set; }
    }
}