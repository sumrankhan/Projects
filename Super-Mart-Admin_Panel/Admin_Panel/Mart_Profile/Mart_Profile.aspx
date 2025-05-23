<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Mart_Profile.aspx.cs" Inherits="Admin_Panel.Mart_Profile.Mart_Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
       <div class="content-container">
       <div class="mart-profile-main-container">
         <h3 class="user-profile-heading">Mart Profile</h3>
         <div class="user-profile-div flex-div">
             <div class="business-logo-div">
                 <img src="../images/logo.png" width="300" height="100" />
                 
               <label for="logo-upload">Business Logo</label>
               <input type="file" id="logo-upload" name="logo" accept="image/*" />

                 <!-- Instruction for upload size -->
              <p class="upload-instruction">
                Upload an image with a size of 300x100 pixels for best results.
              </p>
            </div>

         <div class="profile-content-containter ">
          <div>
              <label for="business-name">Business Name</label>
              <input type="text" id="business-name" name="business_name" placeholder="Smart Tech Solutions" />
           </div>

           <div>
              <label for="location">Location</label>
              <input type="text" id="location" name="location" placeholder="New York, NY" />
           </div>

           <div>
              <label for="address">Address</label>
              <input type="text" id="address" name="address" placeholder="123 Main Street, Suite 101" />
           </div>

              <div>
                <label for="owner-contact">Owner Name</label>
                <input type="text" id="owner-name" name="owner_name" placeholder="Mr. Abid Hussain" />
             </div>
              <div>
                <label for="owner-contact">Owner Contact</label>
                <input type="number" id="owner-contact" name="owner_contact" placeholder="1234567890" />
             </div>

           <div>
              <label for="manager-contact">Manager Name</label>
              <input type="text" id="manager-name" name="manager_name" placeholder="Mr. Suleman Zaid" />
           </div>
             
           <div>
              <label for="manager-contact">Manager Contact</label>
              <input type="number" id="manager-contact" name="manager_contact" placeholder="9876543210" />
           </div>

          

           <div>
              <label for="registration-date">Registration Date</label>
              <input type="date" id="registration-date" name="registration_date" placeholder="2023-01-01" />
           </div>

           <div class="m-btm-20">
              <label for="renewal-date">Renewal Date</label>
              <input type="date" id="renewal-date" name="renewal_date" placeholder="2024-01-01" />
           </div>
             
           <div class="m-btm-20">
              <label for="renewal-date">Profit Percentage</label>
              <input type="number" id="profit-percentage" name="profit_percentage" placeholder="10%" />
           </div>

           <div class="span-2-grid border-top-light-grey">
              <button class="save-btn">Update</button>
           </div>
        </div>


         </div>
       
       </div>
     </div>
   
</asp:Content>
