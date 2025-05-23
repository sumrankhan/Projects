<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Customer_List.aspx.cs" Inherits="Admin_Panel.Customers.Customer_List" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="Customer-list-container">
        <!-- Table Container -->
        <div class="search-head-breadcrumb">
          <div class="breadcrumb-flex-col">
            <h3>Customer List</h3>
            <div class="breadcrumb-container">
              <span
                ><a href="#" class="header-link-left">User Management</a></span
              >
              <span>
                <a href="#" class="header-link-right">/ Customer List</a></span
              >
            </div>
          </div>
          <div class="form">
            <input type="search" autofocus required class="input" />
            <i class="fa-solid fa-magnifying-glass fa-search"></i>
          </div>
        </div>
       <div class="customer-table-div horizontal-scroll">
  <table id="tableId">
    <thead>
      <tr>
        <th>S.no</th>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone no</th>
        <th>Registration Status</th>
        <th>No. of Orders</th>
        <th>No. of Delivered Orders</th>
        <th>No. of Pending Orders</th>
        <th>Verification Status</th>
        <th>Detail</th>
      </tr>
    </thead>
    <tbody id="userlist">
      <tr>
        <td>1</td> <!-- S. No -->
        <td>1001</td>
        <td>Rehab</td>
        <td>example123@gmail.com</td>
        <td>+923335500</td>
        <td>Registered</td>
        <td>1</td>
        <td>1</td> <!-- No. of Delivered Orders -->
        <td>0</td> <!-- No. of Pending Orders -->
        <td><button class="verification-button">Verified</button></td>
        <td><a href="Customer_Order_History.aspx">View</a></td>
      </tr>
      <tr>
        <td>2</td> <!-- S. No -->
        <td>1002</td>
        <td>Rehab</td>
        <td>example123@gmail.com</td>
        <td>+923335500</td>
        <td>Registered</td>
        <td>5</td>
        <td>3</td> <!-- No. of Delivered Orders -->
        <td>2</td> <!-- No. of Pending Orders -->
        <td><button class="verification-button">Verified</button></td>
        <td><a href="Customer-order-history.html">View</a></td>
      </tr>
      <tr>
        <td>3</td> <!-- S. No -->
        <td>1003</td>
        <td>Rehab</td>
        <td>example123@gmail.com</td>
        <td>+923335500</td>
        <td>Guest</td>
        <td>2</td>
        <td>1</td> <!-- No. of Delivered Orders -->
        <td>1</td> <!-- No. of Pending Orders -->
        <td><button class="verification-button">Verified</button></td>
        <td><a href="Customer-order-history.html">View</a></td>
      </tr>
      <tr>
        <td>4</td> <!-- S. No -->
        <td>1004</td>
        <td>Rehab</td>
        <td>example123@gmail.com</td>
        <td>+923335500</td>
        <td>Guest</td>
        <td>6</td>
        <td>4</td> <!-- No. of Delivered Orders -->
        <td>2</td> <!-- No. of Pending Orders -->
        <td><button class="verification-button">Verified</button></td>
        <td><a href="Customer-order-history.html">View</a></td>
      </tr>
      <tr>
        <td>5</td> <!-- S. No -->
        <td>1005</td>
        <td>Rehab</td>
        <td>example123@gmail.com</td>
        <td>+923335500</td>
        <td>Registered</td>
        <td>1</td>
        <td>0</td> <!-- No. of Delivered Orders -->
        <td>1</td> <!-- No. of Pending Orders -->
        <td><button class="verification-button">Verified</button></td>
        <td><a href="Customer-order-history.html">View</a></td>
      </tr>
      <tr>
        <td>6</td> <!-- S. No -->
        <td>1006</td>
        <td>Rehab</td>
        <td>example123@gmail.com</td>
        <td>+923335500</td>
        <td>Registered</td>
        <td>5</td>
        <td>5</td> <!-- No. of Delivered Orders -->
        <td>0</td> <!-- No. of Pending Orders -->
        <td><button class="verification-button">Verified</button></td>
        <td><a href="Customer-order-history.html">View</a></td>
      </tr>
      <tr>
        <td>7</td> <!-- S. No -->
        <td>1007</td>
        <td>Rehab</td>
        <td>example123@gmail.com</td>
        <td>+923335500</td>
        <td>Registered</td>
        <td>5</td>
        <td>3</td> <!-- No. of Delivered Orders -->
        <td>2</td> <!-- No. of Pending Orders -->
        <td><button class="verification-button">Verified</button></td>
        <td><a href="Customer-order-history.html">View</a></td>
      </tr>
      <tr>
        <td>8</td> <!-- S. No -->
        <td>1008</td>
        <td>Rehab</td>
        <td>example123@gmail.com</td>
        <td>+923335500</td>
        <td>Registered</td>
        <td>5</td>
        <td>5</td> <!-- No. of Delivered Orders -->
        <td>0</td> <!-- No. of Pending Orders -->
        <td><button class="verification-button">Verified</button></td>
        <td><a href="Customer-order-history.html">View</a></td>
      </tr>
      <tr>
        <td>9</td> <!-- S. No -->
        <td>1009</td>
        <td>Rehab</td>
        <td>example123@gmail.com</td>
        <td>+923335500</td>
        <td>Registered</td>
        <td>5</td>
        <td>2</td> <!-- No. of Delivered Orders -->
        <td>3</td> <!-- No. of Pending Orders -->
        <td><button class="verification-button">Verified</button></td>
        <td><a href="Customer-order-history.html">View</a></td>
      </tr>
      <!-- Continue with similar structure for other rows -->
    </tbody>
  </table>
</div>


      </div>
</asp:Content>
