<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="All_Products.aspx.cs" Inherits="Admin_Panel.Products.All_Products" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="content-container">
        <div class="all-products-main-content">
          <div class="all-products-search-container">
            <div class="nav-search-bar flex-center">
              <asp:TextBox 
                ID="allProductsSearchBar" 
                runat="server" 
                CssClass="nav-input-area f-10" 
                Placeholder="Search" 
                TextMode="Search" />
              <i class="fa-solid fa-magnifying-glass nav-search-icon"></i>
            </div>

            <div class="all-products-search-actions">
                <!-- Sort Button -->
                <div class="all-products-action-button all-products-sort-button" onclick="">
                     <a href="Create_Product.aspx"><i class="fa-solid fa-arrow-up-z-a"></i>Add Product</a>
                </div>
                <div class="all-products-action-button all-products-sort-button" onclick="location.href='Add_Product_Category.aspx'">
                     <a href="Add_Product_Category.aspx"><i class="fa-solid fa-arrow-up-z-a"></i>Add Category</a>
                </div>
                 <div class="all-products-action-button all-products-sort-button" onclick="showUploadPopup()">
                    <i class="fa-solid fa-arrow-up-z-a"></i> Import/Bulk Edit
                </div>

                <!-- Popup Card -->
                <div id="uploadPopup" class="popup-card" style="display: none;">
                    <div class="popup-content">
                        <h3>Upload Excel File</h3>
                        <!-- Radio Buttons -->
                        <div class="radio-options">
                           <div class="flex-div">
                                <input type="radio" id="rateChange" name="importType" value="rateChange">
                                <label for="rateChange" class="m-left">Rate, Name, Category change  <span class="danger f-9  p-10" >All previous data will be deleted</span></label>
                           </div>
            
                            <div class="flex-div ">
                                <input type="radio" id="newImport" name="importType" value="newImport">
                                <label for="newImport" class="m-left">Items new import</label><br>
                            </div>
                        </div>

                         <!-- File Upload -->
                    <input type="file" id="excelFile" accept=".xlsx, .xls" />
        
                      <div class="flex-div">
                            <!-- Complete Button -->
                          <button class="accept-btn " onclick="completeTask()">Complete Task</button>
        
                          <!-- Close Button -->
                          <button class="accept-btn" onclick="closePopup()">Close</button>
                      </div>
                    </div>
                </div>

                <div
                    class="all-products-action-button all-products-category-button"
                    onclick="openCategoryPopup()">
                    <i class="fa-solid fa-list">
                    </i>Category
                </div>
             <div id="categoryPopup" class="popup-overlay">
                <div class="popup-content">
                    <span class="close-btn" onclick="closeCategoryPopup()">&times;</span>
                    <h2>Select a Category</h2>

                    <!-- Search Box -->
                    <asp:TextBox 
                        ID="categorySearch" 
                        runat="server" 
                        CssClass="category-search" 
                        Placeholder="Search categories..." 
                        OnTextChanged="CategorySearch_TextChanged" 
                        AutoPostBack="True" 
                    />

                    <!-- Scrollable Category List -->
                    <div class="category-list-container">
                        <ul id="categoryList">
                            <asp:Repeater ID="categoryListRepeater" runat="server">
                                <ItemTemplate>
                                    <li><%# Eval("CategoryName") %></li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

          <div class="all-products-container">
            <div class="all-products-card">
               <!-- Repeater Control to display product list -->
                <asp:Repeater ID="ProductsRepeater"
                    runat="server">
                    <ItemTemplate>
                        <div class="all-products-product-tiles">
                            <img class="all-products-tile-img"
                                src='<%# Eval("ImageUrl") %>'
                                alt='<%# Eval("ProductName") %>'
                                width="120px" height="120px" />

                            <div class="all-products-product-details">
                                <p><%# Eval("ProductName") %>
                                </p>
                                <p class="all-products-bold">
                                    $<%# Eval("Price") %>
                                </p>
                                <p>Stock: <%# Eval("Stock") %>
                                </p>
                                <p>Category: <%# Eval("Category") %>
                                </p>
                            </div>

                            <div class="all-products-tile-action-buttons">
                                <button>
                                    <a href="Edit_Product.aspx">
                                        <i class="fa-solid fa-pen">
                                        </i>Edit
                                    </a>
                                </button>
                                <button>
                                    <i class="fa-solid fa-trash">
                                    </i>Delete
                                </button>
                                <button id="toggleStatusButton"
                                    onclick="toggleStatus()">
                                    <i class="fa-solid fa-ban">
                                    </i>Active
                                </button>
                               
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

          </div>
        </div>
      </div>
        </div>

    <script>
        // Show the upload popup
        function showUploadPopup() {
            document.getElementById('uploadPopup').style.display = 'block';
        }

        // Close the popup
        function closePopup() {
            document.getElementById('uploadPopup').style.display = 'none';
        }

        // Handle task completion
        function completeTask() {
            var fileInput = document.getElementById('excelFile');
            var selectedOption = document.querySelector('input[name="importType"]:checked');

            if (!fileInput.files.length) {
                alert('Please select an Excel file.');
                return;
            }

            if (!selectedOption) {
                alert('Please select an import type.');
                return;
            }

            var importType = selectedOption.value;

            // Process the Excel file and import type here
            console.log('File:', fileInput.files[0]);
            console.log('Import Type:', importType);

            // Close the popup
            closePopup();

            // Further logic for file processing goes here (e.g., uploading the file, processing based on selected option)
        }
    </script>
</asp:Content>
