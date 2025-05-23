<%@ Page Language="C#" AutoEventWireup="true" Codefile="Sales_By_Category_Report.aspx.cs" Inherits="Admin_Panel.Sales_Report.Sales_By_Category_Report" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../css/styles.css" rel="stylesheet" />
     <link
   rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
 />
</head>
<body>
    <form id="form1" runat="server">
        <div class="main-container">
      <div class="sales-content-container">
        <header class="sales-report-color-bar">
          <div class="logo-div">
            <img src="/images/logo.png" width="190" alt="logo" />
          </div>
          <div class="sales-report-title">
            <h1>Sales by Category Report</h1>
          </div>
        </header>

        <!-- div to write your content -->
        <div class="sales-report-container">
          <div class="category-report-container">
            <div class="category-overview">
              <div class="category-stat-tile">
                <h3>Top Category</h3>
                <p>Electronics</p>
              </div>
              <div class="category-stat-tile">
                <h3>Sales</h3>
                <p>$150,000</p>
              </div>
              <div class="category-stat-tile">
                <h3>Growth Rate</h3>
                <p>12%</p>
              </div>
            </div>

            <div class="category-chart-section">
              <div class="category-chart-container">
                <div class="category-chart">
                  <!-- Placeholder for Sales by Category chart -->
                  <div id="sales-by-category-chart"></div>
                </div>
                <div class="category-chart">
                  <!-- Placeholder for Category Growth chart -->
                  <div id="category-growth-chart"></div>
                </div>
              </div>
            </div>

          <table class="category-report-table">
        <thead>
            <tr>
                <th>Category</th>
                <th>Sales Amount</th>
                <th>Percentage of Total Sales</th>
                <th>Trend</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="categorySalesRepeater" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Eval("Category") %></td>
                        <td><%# Eval("SalesAmount", "{0:C}") %></td>
                        <td><%# Eval("PercentageOfTotalSales") %></td>
                        <td><%# Eval("Trend") %></td>
                    </tr>
                </ItemTemplate>
                
            </asp:Repeater>
        </tbody>
    </table>
          </div>
          <div class="sales-report-footer">
            <h2>Business Growth</h2>
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
    </form>
    <script src="../chart_script/apexcharts.min.js"></script>
    <script src="../script.js"></script>
</body>
</html>

