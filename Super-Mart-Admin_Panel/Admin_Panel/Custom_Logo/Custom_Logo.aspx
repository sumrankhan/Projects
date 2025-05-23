<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Custom_Logo.aspx.cs" Inherits="Admin_Panel.Custom_Logo.Custom_Logo" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="settings-page">
        <h2>Website Logo</h2>

        <form
          class="settings-page-form"
          id="logoForm"
          action="/upload-logo"
          method="POST"
          enctype="multipart/form-data"
        >
         <div class="form-div">
              <div class="current-logo">
   <h3 class="m-top-bottom-10">Current Logo</h3>
   <div class="current-logo-div">
     <img 
         src="../images/logo.png" 
       alt="Current Logo"
       id="currentLogoPreview" 
         width="250"
     />
   </div>
 </div>

 <div class="upload-logo ">
   <label for="logoUpload">Upload New Logo:</label>
   <asp:FileUpload 
           ID="logoUpload" 
           runat="server" 
           Accept="image/*" 
           CssClass="file-upload" 
           Required="true" />
 </div>
   <div class="form-btn-div">
       <%--<asp:Button 
           ID="uploadButton" 
           runat="server" 
           Text="Upload" 
           CssClass="filter-btn" 
           OnClick="UploadButton_Click" />--%>
        <button type="submit">Change Logo</button>
   </div>

         </div>
        </form>
      </div>
</asp:Content>
