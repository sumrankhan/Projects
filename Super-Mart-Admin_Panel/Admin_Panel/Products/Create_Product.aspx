<%@ Page Title="" Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Create_Product.aspx.cs"
    Inherits="Admin_Panel.Products.Create_Product" %>

<asp:Content ID="Content2"
    ContentPlaceHolderID="body"
    runat="server">

    <div class="content-container">
        <header>
            <div class="breadcrumb">
                <h3>Add Product</h3>
                <div>
                    <span>Home</span>
                    <p>/</p>
                    <span>Add Product</span>
                </div>
            </div>
        </header>
        <div class="add-product-container">
            <form
                id="addProductForm"
                class="add-product-form">
                <div class="left-div-add-product">
                    <label for="product-info">
                        Product Information</label><br />
                    <asp:TextBox ID="name"
                        runat="server" CssClass="form-control"
                        placeholder="Enter Product Name Here"
                        autocomplete="off"></asp:TextBox>
                    <asp:TextBox
                        ID="productCode"
                        runat="server"
                        CssClass="form-control"
                        placeholder="Enter Product Code Here"
                        autocomplete="off"></asp:TextBox><br />

                    <label for="category">Product
                        Category</label><br />
                    <asp:DropDownList
                        ID="category"
                        runat="server"
                        CssClass="form-control">
                        <asp:ListItem Text="Select Product Category"
                            Value="" Enabled="false" />
                        <asp:ListItem Text="Groceries"
                            Value="groceries" />
                        <asp:ListItem Text="Electronics"
                            Value="electronics" />
                        <asp:ListItem Text="Home Appliances"
                            Value="home-appliances" />
                        <asp:ListItem Text="Clothing"
                            Value="clothing" />
                        <asp:ListItem Text="Beauty Products"
                            Value="beauty-products" />
                        <asp:ListItem Text="Toys"
                            Value="toys" />
                        <asp:ListItem Text="Furniture"
                            Value="furniture" />
                        <asp:ListItem Text="Sports"
                            Value="sports" />
                        <asp:ListItem Text="Automotive"
                            Value="automotive" />
                        <asp:ListItem Text="Books"
                            Value="books" />
                        <asp:ListItem Text="Stationery"
                            Value="stationery" />
                    </asp:DropDownList><br />

                    <asp:TextBox
                        ID="size"
                        runat="server"
                        CssClass="form-control"
                        placeholder="Enter Product Available Sizes Here"
                        autocomplete="off"></asp:TextBox><br />

                    <asp:TextBox
                        ID="color"
                        runat="server"
                        CssClass="form-control"
                        placeholder="Enter Available Product Colors Here"
                        autocomplete="off"></asp:TextBox>
                </div>

                <div class="right-div-add-product">
                    <asp:TextBox
                        ID="price"
                        runat="server"
                        CssClass="form-control"
                        placeholder="Enter Product Price Here"
                        autocomplete="off"></asp:TextBox><br />

                    <asp:TextBox
                        ID="stock"
                        runat="server"
                        CssClass="form-control"
                        placeholder="Enter Stock Quantity Here"
                        autocomplete="off"></asp:TextBox><br />

                    <label for="description">
                        Product Description</label><br />
                    <asp:TextBox
                        ID="description"
                        runat="server"
                        CssClass="form-control"
                        TextMode="MultiLine"
                        placeholder="Enter Product Description Here"
                        autocomplete="off"></asp:TextBox><br />

                    <label for="file">Product
                        Picture</label><br />
                    <asp:FileUpload ID="inputFile"
                        runat="server" CssClass="form-control" /><br />

                    <asp:Button ID="submitButton"
                        runat="server" CssClass="save-btn"
                        Text="Submit" />
                    <%-- OnClick="SubmitForm_Click" --%>
                </div>
            </form>
        </div>
    </div>
</asp:Content>
