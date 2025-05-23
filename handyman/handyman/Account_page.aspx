<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Account_page.aspx.cs" Inherits="handyman.Account_page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="navbar d-flex justify-content-between align-items-center">
       <h1>Account</h1>
       <div class="notification-icon"><img src="assets/img/bell.png" /></div>
   </div>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
.account-page {
  width: 100%;
  padding: 20px;
  background-color: #fff;
}

.account-header {
  display: flex;
  align-items: center;
  gap: 10px;
  margin-bottom: 20px;
}

.account-content {
  display: flex;
  flex-direction: column;
}

.account-row {
  text-decoration: none;
  font-size: 18px;
  color: #333;
  padding: 15px;
  border-bottom: 1px solid #ddd;
  text-align: left;
  display: flex;
  align-items: center;
  gap: 10px;
}

.account-row i {
  font-size: 20px;
  color: #555;
}

.account-row:hover {
  background-color: #f0f0f0;
}

.logout {
  color: #e74c3c;
}

.logout:hover {
  background-color: #f8d7da;
}

    </style>
    <div class="account-page">
  <div class="account-header">
    
  </div>

  <div class="account-content">
    <a href="Profile.aspx" class="account-row"><i class="fas fa-user"></i>Profile</a>
    <a href="account-settings.aspx" class="account-row"><i class="fas fa-cog"></i>Account Settings</a>
    <a href="Booking.aspx" class="account-row"><i class="fas fa-cog"></i>Hired Handy Man List</a>
    <a href="Sign_in.aspx" class="account-row logout"><i class="fas fa-sign-out-alt"></i>Logout</a>
  </div>
</div>
</asp:Content>
