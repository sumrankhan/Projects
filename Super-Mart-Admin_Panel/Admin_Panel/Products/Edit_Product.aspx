<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit_Product.aspx.cs" Inherits="Admin_Panel.Products.Edit_Product" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="content-container">
        <header>
          <div class="breadcrumb">
            <h3>Edit Product</h3>
            <div>
              <span>Home</span>
              <p>/</p>
              <span>Products</span>
            </div>
          </div>
          <!-- <div class="date-range m-lt-rt-10 f-10"></div> -->
        </header>

       <form id="editProductForm" enctype="multipart/form-data">
        <div class="edit-product-main-content">
            <div class="edit-product-container">
                <!-- Image Upload Section -->
                <div class="edit-product-div1">
                    <asp:Image 
                        ID="cameraImage" 
                        runat="server" 
                        ImageUrl="~/images/camera-img.png" 
                        AlternateText="camera image" 
                        Width="350px" 
                        Height="350px" />

                   <%-- <asp:Button
                        ID="uploadImageButton"
                        runat="server"
                        Text="Upload New Image"
                        CssClass="edit-product-button"
                        OnClick="UploadImage_Click" />--%>
                </div>

                <!-- Product Edit Form Section -->
                <div class="edit-product-div2">
                    <div class="edit-product-description-div">
                        <label for="brand-name">Brand Name:</label>
                        <asp:TextBox
                            ID="brandName"
                            runat="server"
                            CssClass="form-control"
                            Text="Brand Name" />

                        <label for="product-price">Product Price:</label>
                        <asp:TextBox
                            ID="productPrice"
                            runat="server"
                            CssClass="form-control"
                            Text="$100" />

                        <label for="description">Description:</label>
                        <asp:TextBox
                            ID="productDescription"
                            runat="server"
                            CssClass="form-control"
                            TextMode="MultiLine"
                            Rows="4"
                            Text="Lorem ipsum dolor sit, amet consectetur adipisicing elit." />

                        <label for="colors">Colors Available:</label>
                        <div id="colors" class="edit-product-colors">
                            <label>
                                <asp:CheckBox
                                    ID="colorRed"
                                    runat="server"
                                    Text="Red"
                                    Checked="True" />
                            </label>
                            <label>
                                <asp:CheckBox
                                    ID="colorBlue"
                                    runat="server"
                                    Text="Blue"
                                    Checked="True" />
                            </label>
                            <label>
                                <asp:CheckBox
                                    ID="colorWhite"
                                    runat="server"
                                    Text="White"
                                    Checked="True" />
                            </label>
                        </div>

                        <div class="edit-product-cart-div">
                            <%--<asp:Button
                                ID="saveChangesButton"
                                runat="server"
                                CssClass="edit-product-button"
                                Text="Save Changes"
                                OnClick="SaveChanges_Click" />--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
      </div>
</asp:Content>
