<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codefile="Edit_User.aspx.cs" Inherits="Admin_Panel.Admin.Edit_User" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="content-container" >
      <header>
        <div class="add-user-breadcrumb">
          <h1>Edit User</h1>
          <div>
            <span>Home</span>
            <p>/</p>
            <span>Edit User</span>
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
              />
              <br/>
                <input
                type="email"
                name="email"
                id="email"
                autocomplete="off"
                placeholder="Enter Email Address here"
                class="input-add-user"
                /><br/>
              <input
                type="password"
                name="password"
                id="password"
                autocomplete="off"
                placeholder="Enter Password here"
                class="input-add-user"
              /><br/>
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
              <br />
              <br />
             
             
              <select name="category" id="category" class="select">
                <option value="" disabled selected>Select Role Here</option>
                <option value="admin">Admin</option>
                <option value="manager">Manager</option>
                <option value="user">Rider</option></select
              ><br /><br />
              <select name="department" id="department" class="select">
                <option value="" disabled selected>Select Department</option>
                <option value="Inventory">Inventory Dept</option>
                <option value="Management">Management Dept</option>
                <option value="Sales">Sales Dept</option>
              </select>
              <br /> <br /> <br /> <br />
           <!-- Submit Button -->
                <button id="submitUserRegistration" type="button" class="save-btn" onclick="document.getElementById('edituserModal').style.display='block'">Submit</button>

           <!-- Confirmation Modal -->
                <div id="edituserModal" class="registration-modal">
                    <div class="registration-modal-content">
                        <span class="registration-close" onclick="document.getElementById('edituserModal').style.display='none'">&times;</span>
                        <h2>Confirm !!</h2>
                        <p>Are you sure you want to Continue?</p>
                        <br />
                        <button id="confirmRegistrationSubmit" class="btn-submit-success" onclick="document.getElementById('successModal').style.display='block'; document.getElementById('edituserModal').style.display='none'">Yes</button>
                        <button id="cancelRegistrationSubmit" class="btn-cancel" onclick="document.getElementById('edituserModal').style.display='none'">No</button>

                    </div>

                </div>

            </div>

          </div>
        </div>
      </div>
    </div>
</asp:Content>
