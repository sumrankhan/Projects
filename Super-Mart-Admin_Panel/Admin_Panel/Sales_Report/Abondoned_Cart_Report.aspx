<%@ Page Language="C#" AutoEventWireup="true" Codefile="Abondoned_Cart_Report.aspx.cs" Inherits="Admin_Panel.Sales_Report.Abondoned_Cart_Report" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

      <link href="../css/styles.css"  rel="stylesheet" />
   
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
            <h1>Abandoned Cart Report</h1>
          </div>
        </header>

      


          <div class="sales-report-container">
    <div class="category-report-container">
        <!-- <h2>Category: Electronics</h2> -->
        
        <div class="category-overview">
            <div class="category-stat-tile">
                <h3>Total Abandoned Cart</h3>
                <asp:Label ID="lblTotalAbandonedCart" runat="server" Text="545"></asp:Label>
                <h5 class="m-top">Previous Year</h5>
                <asp:Label ID="lblPreviousYearAbandonedCart" runat="server" Text="285"></asp:Label>
            </div>
            <div class="category-stat-tile">
                <h3>Abandonment Rate</h3>
                <asp:Label ID="lblAbandonmentRate" runat="server" Text="4%"></asp:Label>
                <h5 class="m-top">Previous Year</h5>
                <asp:Label ID="lblPreviousYearAbandonmentRate" runat="server" Text="7%"></asp:Label>
            </div>
            <div class="category-stat-tile">
                <h3>Most Abandoned Product</h3>
                <asp:Label ID="lblMostAbandonedProduct" runat="server" Text="Mat"></asp:Label>
                <h5 class="m-top">Previous Year</h5>
                <asp:Label ID="lblPreviousYearMostAbandonedProduct" runat="server" Text="pen"></asp:Label>
            </div>
        </div>

        <div class="category-chart-section">
            <div class="category-chart-container">
                <div id="potential-revenue-lost-chart"></div>
                <!-- Render chart dynamically in this div using JavaScript or a chart library -->
            </div>
        </div>

        <h2 class="category-report-table-title">Analytics</h2>
        <table class="category-report-table">
            <thead>
                <tr>
                    <th>Product Code</th>
                    <th>Product Name</th>
                    <th>Abandoned Cart Value</th>
                    <th>Quantity Abandoned</th>
                    <th>Potential Revenue</th>
                    <th>Last Added to Cart</th>
                    <th>User Sessions</th>
                    <th>Cart Abandonment Rate (%)</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="categoryReportTableRepeater" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ProductCode") %></td>
                            <td><%# Eval("ProductName") %></td>
                            <td><%# Eval("AbandonedCartValue") %></td>
                            <td><%# Eval("QuantityAbandoned") %></td>
                            <td><%# Eval("PotentialRevenue") %></td>
                            <td><%# Eval("LastAddedToCart", "{0:yyyy-MM-dd}") %></td>
                            <td><%# Eval("UserSessions") %></td>
                            <td><%# Eval("CartAbandonmentRate") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

    <!-- Footer section with abandonment rate chart -->
    <div class="sales-report-footer">
        <h2>Abandonment Rate</h2>
        <div id="abandoned-cart-rate-chart"></div>
        <!-- Render chart dynamically in this div using JavaScript or a chart library -->
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