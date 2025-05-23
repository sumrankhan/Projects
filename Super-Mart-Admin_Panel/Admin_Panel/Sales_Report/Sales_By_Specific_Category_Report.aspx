<%@ Page Language="C#" AutoEventWireup="true" Codefile="Sales_By_Specific_Category_Report.aspx.cs" Inherits="Admin_Panel.Sales_Report.Sales_By_Specific_Category_Report" %>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link href="../css/styles.css" rel="stylesheet" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />
      <script src="../chart_script/apexcharts.min.js"></script>
    <title>Sales Report</title>
  </head>

  <body class="sales-report-body-bg">
    <div class="main-container">
      <div class="sales-content-container">
        <header class="sales-report-color-bar">
          <div class="logo-div">
            <img src="/images/logo.png" width="190" alt="logo" />
          </div>
          <div class="sales-report-title">
            <h1>Category Specific Sales Report</h1>
          </div>
        </header>

        <!-- div to write your content -->
        <div class="sales-report-container">
          <div class="category-report-container">
            <h2>Category: Electronics</h2>
            <div class="category-overview">
              <div class="category-stat-tile">
                <h3>Total Sales Revenue</h3>
                <p>545</p>
                <h5 class="m-top">Previous Year</h5>
                <p>285</p>
              </div>
              <div class="category-stat-tile">
                <h3>Top Selling Product</h3>
                <p>Washing Machine</p>
                <h5 class="m-top">Previous Year</h5>
                <p>Refrigorator</p>
              </div>
              <div class="category-stat-tile">
                <h3>Total Orders</h3>
                <p>12220</p>
                <h5 class="m-top">Previous Year</h5>
                <p>9998</p>
              </div>
            </div>

            <div class="category-chart-section">
              <div class="category-chart-container">
                <div id="specific-category-no-of-orders-chart"></div>
              </div>
            </div>
            <h2 class="category-report-table-title">Analytics</h2>
          <table class="category-report-table">
        <thead>
            <tr>
                <th>Product Code</th>
                <th>Price</th>
                <th>Quantity Sold</th>
                <th>Total Sales</th>
                <th>Average Order Value</th>
                <th>No. of Orders</th>
                <th>Refund Quantity</th>
                <th>Refund Amount</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="salesRepeater" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("ProductCode") %></td>
                        <td><%# Eval("Price", "{0:C}") %></td>
                        <td><%# Eval("QuantitySold") %></td>
                        <td><%# Eval("TotalSales", "{0:C}") %></td>
                        <td><%# Eval("AverageOrderValue", "{0:C}") %></td>
                        <td><%# Eval("NumberOfOrders") %></td>
                        <td><%# Eval("RefundQuantity") %></td>
                        <td><%# Eval("RefundAmount", "{0:C}") %></td>
                    </tr>
                </ItemTemplate>
                
            </asp:Repeater>
        </tbody>
    </table>
          </div>

          <!-- business chart always at the bottom of the report -->
          <div class="sales-report-footer">
            <h2 class="m-left">Business Growth</h2>
            <div id="business-growth-chart"></div>
          </div>
        </div>

        <!-- reports footer bar -->

  <div class="sales-footer-bar">
    <div class="sales-footer-bar__contact">
      <p class="bold-font"><i class="fas fa-phone-alt"></i> Phone</p>
      
      <p><a href="tel:+1234567890" aria-label="Call us">
        +1234567890
    </a></p>
      <p>
        <a href="tel:+1234567890" aria-label="Call us">
          +9876543210
      </a>
      </p>
    </div>


    <div class="sales-footer-bar__address">
        <p  class="bold-font"><i class="fas fa-map-marker-alt"></i> Address</p>
        <p>
            <span>1234 Main Street, 
            City, State, ZIP</span>
        </p>
        <p>
            <span>4567 Another Ave, 
            City, State, ZIP</span>
        </p>
    </div>

    <div class="sales-footer-bar__email">
      <p class="bold-font"><i class="fas fa-envelope"></i> Email</p>
      <p>
          <a href="mailto:info@example.com" aria-label="Email us">info@example.com</a>
      </p>
  </div>

  <div class="sales-footer-bar__website">
      <p class="bold-font"><i class="fas fa-globe"></i> Website</p>
      <p>
          <a href="https://www.example.com" target="_blank" aria-label="Visit our website">www.example.com</a>
      </p>
  </div>
    
    <div class="sales-footer-bar__social-icons">
      <p><i class="fa-solid fa-thumbs-up"></i> <span class="bold-font">Follow Us</span></p>
        <div>
          <a href="https://facebook.com" target="_blank" aria-label="Facebook">
            <i class="fab fa-facebook-f"></i>
        </a>
        <a href="https://twitter.com" target="_blank" aria-label="Twitter">
            <i class="fab fa-twitter"></i>
        </a>
        <a href="https://instagram.com" target="_blank" aria-label="Instagram">
            <i class="fab fa-instagram"></i>
        </a>
        <a href="https://linkedin.com" target="_blank" aria-label="LinkedIn">
            <i class="fab fa-linkedin-in"></i>
        </a>
        </div>
    </div>

    <p>
      Powered By
      <a class="bold-font" href="https://www.trivsmart.com/">Smart Tech Solutions</a>
  </p>
</div>
      </div>
    </div>

    <!-- Script  -->

    <script src="../script.js"></script>
  </body>
</html>


