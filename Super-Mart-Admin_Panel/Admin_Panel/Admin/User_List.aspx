<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codefile="User_List.aspx.cs" Inherits="Admin_Panel.Admin.User_List" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <link href="../css/styles.css" rel="stylesheet" />
     <div class="content-container" >
         <header>
  <div class="add-user-breadcrumb">
    <h3>User List</h3>
    
  </div>
</header>
    <div class="order-history-container no-margin">
  <div class="customer-table-div table-w-100">
    <table id="userlist">
      <thead>
        <tr class="non-hover">
          <th>Sr#</th>
          <th>User Id</th>
          <th>Username</th>
          <th>Email Address</th>
          <th>Role</th>
          <th>Status</th>
          <th>Action</th>
        </tr>
      </thead>

      <tbody>
        <tr>
          <td class="serial">1</td>
          <td>3001</td>
          <td>Ali</td>
          <td>Ali409@gmail.com</td>
          <td class="role-td">Admin</td>
          <td><input type="checkbox" id="status-toggle-1" class="status-checkbox"></td>
          <td>
            <a href="Edit_User.aspx"><i class="fa-regular fa-pen-to-square edit-for-user-list"></i></a>
            <i class="fa-solid fa-trash delete-icon delete-red" id="deleteConfirmationToggle-1"></i>
          </td>
        </tr>
        <tr>
          <td class="serial">2</td>
          <td>3002</td>
          <td>Sara</td>
          <td>Sara123@gmail.com</td>
          <td class="role-td">Admin</td>
          <td><input type="checkbox" id="status-toggle-2" class="status-checkbox" checked></td>
          <td>
            <a href="Edit_User.aspx"><i class="fa-regular fa-pen-to-square edit-for-user-list"></i></a>
            <i class="fa-solid fa-trash delete-icon delete-red" id="deleteConfirmationToggle-2"></i>
          </td>
        </tr>
        <tr>
          <td class="serial">3</td>
          <td>3003</td>
          <td>John</td>
          <td>JohnDoe@gmail.com</td>
          <td class="role-td">Admin</td>
          <td><input type="checkbox" id="status-toggle-3" class="status-checkbox"></td>
          <td>
            <a href="Edit_User.aspx"><i class="fa-regular fa-pen-to-square edit-for-user-list"></i></a>
            <i class="fa-solid fa-trash delete-icon delete-red" id="deleteConfirmationToggle-3"></i>
          </td>
        </tr>
        <tr>
          <td class="serial">4</td>
          <td>3004</td>
          <td>Mary</td>
          <td>MaryJane@gmail.com</td>
          <td class="role-td">Admin</td>
          <td><input type="checkbox" id="status-toggle-4" class="status-checkbox" checked></td>
          <td>
            <a href="Edit_User.aspx"><i class="fa-regular fa-pen-to-square edit-for-user-list"></i></a>
            <i class="fa-solid fa-trash delete-icon delete-red" id="deleteConfirmationToggle-4"></i>
          </td>
        </tr>
        <tr>
          <td class="serial">5</td>
          <td>3005</td>
          <td>Emma</td>
          <td>EmmaWatson@gmail.com</td>
          <td class="role-td">Admin</td>
          <td><input type="checkbox" id="status-toggle-5" class="status-checkbox"></td>
          <td>
            <a href="Edit_User.aspx"><i class="fa-regular fa-pen-to-square edit-for-user-list"></i></a>
            <i class="fa-solid fa-trash delete-icon delete-red" id="deleteConfirmationToggle-5"></i>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</div>

        
</asp:Content>
