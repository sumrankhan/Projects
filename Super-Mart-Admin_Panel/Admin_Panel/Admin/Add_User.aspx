<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codefile="Add_User.aspx.cs" Inherits="Admin_Panel.Admin.Add_User" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="content-container" >
      <header>
        <div class="add-user-breadcrumb">
          <h3>New User Registration</h3>
          <div>
            <span>Home</span>
            <p>/</p>
            <span>New User Registration</span>
          </div>
        </div>
      </header>

      <div class="main-content-add-user">
        <div class="container-add-user">
          <div class="user-form">
            <div class="div1">
              <h3 for="New user" class="add-user-label"
                >User Information</h3><br />
            
              <input
                type="text"
                name="username"
                id="username"
                autocomplete="off"
                placeholder="Enter Username here"
                class="input-add-user"
              /><br />

                <input
                  type="email"
                  name="email"
                  id="email"
                  autocomplete="off"
                  placeholder="Enter Email Address here"
                  class="input-add-user"
                /><br />
              <input
                type="password"
                name="password"
                id="password"
                autocomplete="off"
                placeholder="Enter Password here"
                class="input-add-user"
              /><br />
                
              <input
                type="text"
                name="phone"
                id="phone"
                autocomplete="off"
                placeholder="Enter Phone no. Here"
                class="input-add-user"
              /><br />

            </div>
            <div class="div2">
              <br /><br />
              

              <select name="category" id="category" class="select">
                <option value="" disabled selected>Select Role Here</option>
                <option value="admin">Admin</option>
                <option value="manager">Manager</option>
                <option value="user">Rider</option></select
              ><br /><br />
              <select name="department" id="department" class="select">
                <option  value="" disabled selected>Select Department</option>
                <option  value="Inventory">Inventory Dept</option>
                <option  value="Management">Management Dept</option>
                <option value="Sales">Sales Dept</option></select
              ><br /><br /><br /><br /><br />
              <button id="submitUserRegistration" type="button" class="save-btn" onclick="document.getElementById('successModal').style.display='block'"> Submit </button>
                <!-- Submitted Successfully Modal -->
                <div id="successModal" class="success-modal">
               <div class="success-modal-content">
                 <h2>Submitted Successfully</h2>
                 <button id="okayButton" class="save-btn" onclick="document.getElementById('successModal').style.display='none'">Okay</button>
               </div>
            </div>
            </div>
          </div>
        </div>
      </div>
        </div>
</asp:Content>
