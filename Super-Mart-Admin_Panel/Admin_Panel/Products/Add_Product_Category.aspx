<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Add_Product_Category.aspx.cs" Inherits="Admin_Panel.Products.Add_Product_Category" %>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
   <div class="content-container">
    <header class="add-product-category-header">
        <h3>Add New Category</h3>
    </header>

   <div class="parent-div">
        <div class="add-product-category-form-container">
     <form class="add-product-category-form" action="/submit-category" method="POST" enctype="multipart/form-data">
         <div class="add-product-category-form-group">
             <label for="category-name">Category Name</label>
             <input type="text" id="category-name" name="category_name" required>
         </div>

         <div class="add-product-category-form-group">
             <label for="category-description">Category Description</label>
             <textarea id="category-description" name="category_description" rows="4" required></textarea>
         </div>

         <div class="add-product-category-form-group">
             <label for="category-image">Category Image</label>
             <input type="file" id="category-image" name="category_image" accept="image/*">
         </div>

         <div class="flex-center">
             <button type="submit" class="save-btn">Add Category</button>
         </div>
     </form>
 </div>
   </div>
       </div>

</asp:Content>
