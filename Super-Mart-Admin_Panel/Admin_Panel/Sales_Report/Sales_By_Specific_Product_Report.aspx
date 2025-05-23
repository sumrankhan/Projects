<%@ Page Language="C#" AutoEventWireup="true" Codefile="Sales_By_Specific_Product_Report.aspx.cs" Inherits="Admin_Panel.Sales_Report.Sales_By_Specific_Product_Report" %>



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
            <h1>Product Specific Sales Report</h1>
          </div>
        </header>

        <!-- div to write your content -->
        <div class="sales-report-container">
          <div class="category-report-container">
            <h2>Smartphone X1</h2>
            <div class="category-overview">
              <div class="category-stat-tile">
                <h3>Item Sold</h3>
                <p>545</p>
                <h5 class="m-top">Previous Year</h5>
                <p>285</p>
              </div>
              <div class="category-stat-tile">
                <h3>Net Sales</h3>
                <p>$150,000</p>
                <h5 class="m-top">Previous Year</h5>
                <p>$125,000</p>
              </div>
              <div class="category-stat-tile">
                <h3>Orders</h3>
                <p>120</p>
                <h5 class="m-top">Previous Year</h5>
                <p>68</p>
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
          <p>
            Powered By
            <a href="https://www.trivsmart.com/">Smart Tech Solutions</a>
          </p>
        </div>
      </div>
    </div>

    <!-- Script  -->
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="../script.js"></script>
  </body>
</html>



