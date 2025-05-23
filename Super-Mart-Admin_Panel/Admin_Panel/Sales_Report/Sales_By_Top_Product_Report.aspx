<%@ Page Language="C#" AutoEventWireup="true" Codefile="Sales_By_Top_Product_Report.aspx.cs" Inherits="Admin_Panel.Sales_Report.Sales_By_Top_Product_Report" %>



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
            <h1>Top Products Sales Report</h1>
          </div>
        </header>

        <!-- div to write your content -->
        <div class="sales-report-container">
          <div class="report-width-reducer-div">
            <div class="sales-by-product-stats-div flex-div">
              <div class="numerical-stats">
                <div class="numerical-stats-tile">
                  <p>Top Selling <span>Laptop X</span></p>
                </div>
                <div class="numerical-stats-tile">
                  <p>Least Selling <span>Pen</span></p>
                </div>
              </div>
              <div class="graphical-stats">
                <div class="chart-title">
                  Top 5 <br />Products <br />
                  by Sales
                </div>
                <div id="top-products-sales-chart"></div>
              </div>
            </div>
            <div class="report-table">
              <table class="category-report-table">
                <thead>
                  <tr>
                    <td
                      colspan="5"
                      class="no-border f-14 bold-font txt-align-left"
                    >
                      Electronics
                    </td>
                  </tr>
                  <tr class="attributes-bg">
                    <th>Sr#</th>
                    <th>Name</th>
                    <th>Sold Qty</th>
                    <th>Refunds</th>
                    <th>Revenue</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>Smartphone</td>
                    <td>5</td>
                    <td>1</td>
                    <!-- Example refunds -->
                    <td>$2,900</td>
                    <!-- Revenue after refunds -->
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>Laptop</td>
                    <td>3</td>
                    <td>0</td>
                    <td>$3,600</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>Smartwatch</td>
                    <td>10</td>
                    <td>2</td>
                    <td>$1,300</td>
                  </tr>
                  <tr>
                    <td>4</td>
                    <td>Headphones</td>
                    <td>15</td>
                    <td>0</td>
                    <td>$1,200</td>
                  </tr>
                  <tr>
                    <td>5</td>
                    <td>Tablet</td>
                    <td>7</td>
                    <td>1</td>
                    <td>$1,800</td>
                  </tr>
                  <tr class="bold-font">
                    <td colspan="1"></td>
                    <td>Total Sold</td>
                    <td>40</td>
                    <td>4</td>
                    <!-- Total refunds -->
                    <td>$10,100</td>
                    <!-- Total revenue -->
                  </tr>

                  <tr>
                    <td
                      colspan="5"
                      class="no-border f-14 bold-font txt-align-left"
                    >
                      Kitchen
                    </td>
                  </tr>
                  <tr class="attributes-bg">
                    <th>Sr#</th>
                    <th>Name</th>
                    <th>Sold Qty</th>
                    <th>Refunds</th>
                    <th>Revenue</th>
                  </tr>
                  <tr>
                    <td>6</td>
                    <td>Blender</td>
                    <td>12</td>
                    <td>1</td>
                    <td>$660</td>
                    <!-- Revenue after refunds -->
                  </tr>
                  <tr>
                    <td>7</td>
                    <td>Microwave Oven</td>
                    <td>4</td>
                    <td>0</td>
                    <td>$800</td>
                  </tr>
                  <tr>
                    <td>8</td>
                    <td>Toaster</td>
                    <td>18</td>
                    <td>0</td>
                    <td>$540</td>
                  </tr>
                  <tr>
                    <td>9</td>
                    <td>Coffee Maker</td>
                    <td>8</td>
                    <td>0</td>
                    <td>$800</td>
                  </tr>
                  <tr>
                    <td>10</td>
                    <td>Food Processor</td>
                    <td>5</td>
                    <td>1</td>
                    <td>$600</td>
                    <!-- Revenue after refunds -->
                  </tr>

                  <tr class="bold-font">
                    <td colspan="1"></td>
                    <td>Total Sold</td>
                    <td>49</td>
                    <td>2</td>
                    <!-- Total refunds -->
                    <td>$2,900</td>
                    <!-- Total revenue -->
                  </tr>

                  <tr class="bold-font">
                    <td colspan="1"></td>
                    <td>Gross Total</td>
                    <td>49</td>
                    <td>2</td>
                    <!-- Total refunds -->
                    <td>$2,900</td>
                    <!-- Total revenue -->
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
          <!-- business chart always at the bottom of the report -->
          <div class="sales-report-footer">
            <br>
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

    <!-- Script  -->
   <script src="../script.js"></script>
  </body>
</html>

