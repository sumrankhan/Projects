<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Customer_Order_History.aspx.cs" Inherits="Admin_Panel.Customers.Customer_Order_History" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="content-container">
        <header class="customer-order-history-header">
          <div class="customer-order-history-breadcrumb">
            <h1>Customer Order History</h1>
          </div>

          <div class="date-range m-lt-rt-10 f-10">
            <p>August 1, 2024 - August 31, 2024</p>
          </div>
        </header>

        <div class="customer-order-history-main-container">
          <h4 class="customer-name"><label>Name: </label>Brandin</h4>

          <div class="customer-table-div">
            <table>
              <thead>
                <tr>
                  <th>Order no</th>
                  <th>Date</th>
                  <th>Total price</th>
                  <th>Delivery Address</th>
                  <th>View Detail</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>ORD-12570</td>
                  <td>24 Oct 2024</td>
                  <td>$120</td>
                  <td>D17, Block B Islamabad, Pakistan</td>
                  <td><a  href="Order_Invoice.aspx">Invoice</a></td>
                    
                </tr>
                <tr>
                  <td>ORD-12571</td>
                  <td>23 Oct 2024</td>
                  <td>$95</td>
                  <td>Street #12 Bakrani tower, Larkana, Sindh</td>
                  <td><a href="Order_Invoice.aspx">Invoice</a></td>
                </tr>
                <tr>
                  <td>ORD-12572</td>
                  <td>24 Oct 2024</td>
                  <td>$120</td>
                  <td>D17, Block B Islamabad, Pakistan</td>
                  <td><a href="Order_Invoice.aspx">Invoice</a></td>
                </tr>
                <tr>
                  <td>ORD-12573</td>
                  <td>23 Oct 2024</td>
                  <td>$95</td>
                  <td>Street #12 Bakrani tower, Larkana, Sindh</td>
                  <td><a href="Order_Invoice.aspx">Invoice</a></td>
                </tr>
                <tr>
                  <td>ORD-12574</td>
                  <td>24 Oct 2024</td>
                  <td>$120</td>
                  <td>D17, Block B Islamabad, Pakistan</td>
                  <td><a href="Order_Invoice.aspx">Invoice</a></td>
                </tr>
                <tr>
                  <td>ORD-12575</td>
                  <td>23 Oct 2024</td>
                  <td>$95</td>
                  <td>Street #12 Bakrani tower, Larkana, Sindh</td>
                  <td><a href="Order_Invoice.aspx">Invoice</a></td>
                </tr>
                <tr>
                  <td>ORD-12576</td>
                  <td>24 Oct 2024</td>
                  <td>$120</td>
                  <td>D17, Block B Islamabad, Pakistan</td>
                  <td><a href="Order_Invoice.aspx">Invoice</a></td>
                </tr>

                <!-- Add more rows as needed -->
              </tbody>
            </table>
          </div>
        </div>
      </div>
</asp:Content>
