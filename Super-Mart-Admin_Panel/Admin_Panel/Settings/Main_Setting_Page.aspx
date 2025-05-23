<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Main_Setting_Page.aspx.cs" Inherits="Admin_Panel.Settings.Main_Setting_Page" %>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="content-container">
       <div class="main-settings-container">
          <h3 class="main-settings-heading">Admin Settings</h3>

          <div class="main-settings-options">
            <div class="settings-option">
              <i class="fa-solid fa-user-cog"></i>
              <a href="../Mart_Profile/Mart_Profile.aspx">Business Profile Settings</a>
            </div>

            <%--<div class="settings-option">
              <i class="fa-solid fa-cogs"></i>
              <a href="../Custom_Logo/Custom_Logo.aspx">Site Settings</a>
            </div>--%>
             
            <div class="settings-option">
              <i class="fa-solid fa-bell"></i>
              <a href="../Statement/View_Statement.aspx">View Statements</a>
            </div>

              <%--<div class="settings-option">
              <i class="fa-solid fa-bell"></i>
              <a href="notification-settings.html">Notification Settings</a>
            </div> --%>

              <div class="settings-option">
                  <i class="fa-solid fa-sign-out-alt"></i>
                  <a href="../Sign_in/Sign_in.aspx">Logout</a>
              </div>
          </div>
        </div>
      </div>
</asp:Content>
