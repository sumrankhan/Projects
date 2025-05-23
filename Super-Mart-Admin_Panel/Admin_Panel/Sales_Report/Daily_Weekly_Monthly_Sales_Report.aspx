<%@ Page Language="C#" AutoEventWireup="true" Codefile="Daily_Weekly_Monthly_Sales_Report.aspx.cs" Inherits="Admin_Panel.Sales_Report.Daily_Weekly_Monthly_Sales_Report" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

      <link href="../css/styles.css"
          rel="stylesheet" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />
      <script src="../chart_script/apexcharts.min.js"></script>
    <title>Daily weekly monthly Sales trend Report</title>
  </head>

  <body class="sales-report-body-bg">
    <div class="main-container">
      <div class="sales-content-container">
        <header class="sales-report-color-bar">
          <div class="logo-div">
            <img src="/images/logo.png" width="190" alt="logo" />
          </div>
          <div class="sales-report-title">
            <h1>DWM  Sales trend Report</h1>
          </div>
        </header>

        <!-- div to write your content -->
        <div class="sales-report-container">
          <div class="category-report-container">
            <h3>Daily/weekly/Monthly Report</h3>
            <div class="category-overview">
              <div class="category-stat-tile">
                <h3>Business Growth</h3>
                <p>+20%</p>
                <br>
              </div>
              <div class="category-stat-tile">
                <h3>Top performing product</h3>
                <p>Smart phone X1</p>
                
              </div>
              <div class="category-stat-tile">
                <h3>Actual vs forecast sale</h3>
                <p>120</p>
                
              </div>
               <div class="category-stat-tile">
                <h3>Online vs Instore sales</h3>
                <p>120</p>
              
              </div>
            </div>

            <div class="category-chart-section">
              <div class="category-chart-container">
                <div id="product-no-of-orders-chart"></div>
              </div>
            </div>
            <h2 class="category-report-table-title">Analytics</h2>
            <table class="category-report-table">
              <thead>
                <tr>
                  <th>code</th>
                  <th>Price</th>
                  <th>Qty Sold</th>
                  <th>Total Sales</th>
                  <th>No. of Orders</th>
                  <th>Refund Qty</th>
                  <th>Refund</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>p12</td>
                  <td>$220</td>
                  <td>120</td>
                  <td>$1,500</td>
                  <td>75</td>
                  <td>3</td>
                  <td>$50</td>
                </tr>
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

