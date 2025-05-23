<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Orders_Report.aspx.cs" Inherits="Admin_Panel.Sales_Report.Orders_Reoprt" %>

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
            <h1>Orders Report</h1>
          </div>
        </header>

      


          <div class="sales-report-container">
    <div class="category-report-container">
        <!-- <h2>Category: Electronics</h2> -->
        
        <div class="category-overview">
            <div class="category-stat-tile">
                <h3>Total Recieved Orders</h3>
                <asp:Label ID="lblTotalAbandonedCart" runat="server" Text="60000"></asp:Label>
                <h5 class="m-top">Previous Year</h5>
                <asp:Label ID="lblPreviousYearAbandonedCart" runat="server" Text="55000"></asp:Label>
            </div>
            <div class="category-stat-tile">
                <h3>Total Delivered Orders</h3>
                <asp:Label ID="lblAbandonmentRate" runat="server" Text="40041"></asp:Label>
                <h5 class="m-top">Previous Year</h5>
                <asp:Label ID="lblPreviousYearAbandonmentRate" runat="server" Text="34561"></asp:Label>
            </div>
            <div class="category-stat-tile">
                <h3>Total Cancelled Orders</h3>
                <asp:Label ID="lblMostAbandonedProduct" runat="server" Text="298"></asp:Label>
                <h5 class="m-top">Previous Year</h5>
                <asp:Label ID="lblPreviousYearMostAbandonedProduct" runat="server" Text="460"></asp:Label>
            </div>
        </div>

        <div class="category-chart-section">
            <div class="category-chart-container">
                <div id="OrderChart"></div>
                <!-- Render chart dynamically in this div using JavaScript or a chart library -->
            </div>
        </div>

        <h2 class="category-report-table-title">Analytics</h2>
        <br />
        <h4>Total Recieved Orders </h4>
        <table class="category-report-table">
            <thead>
                 <tr>
                   <th>Total Orders Received</th>
                   <th>Total Sales Revenue</th>
                   <th>Orders Completed</th>
                   <th>Orders Pending</th>
                   <th>Orders Canceled</th>
                   <th>Average Order Value (AOV)</th>
                   <th>Order Processing Time (Average)</th>
                   <th>Top Product Ordered</th>
                   <th>Highest Revenue Product</th>
                 </tr>
               </thead>
            <tbody>
                 <tr>
                   <td>1,250</td> <!-- Total Orders Received -->
                   <td>$45,000</td> <!-- Total Sales Revenue -->
                   <td>1,150</td> <!-- Orders Completed -->
                   <td>75</td> <!-- Orders Pending -->
                   <td>25</td> <!-- Orders Canceled -->
                   <td>$36</td> <!-- Average Order Value (AOV) -->
                   <td>2.5 hours</td> <!-- Order Processing Time (Average) -->
                   <td>Product A</td> <!-- Top Product Ordered -->
                   <td>Product B</td> <!-- Highest Revenue Product -->
                 </tr>
               </tbody>
        </table>
        <br />

        <h4>Total Delivered Orders </h4>
        <table class="category-report-table">
           <thead>
             <tr>
               <th>Total Delivered Orders</th>
               <th>Total Delivered Revenue</th>
               <th>Delivered Orders Completed</th>
               <th>Delivered Orders Pending</th>
               <th>Delivered Orders Canceled</th>
               <th>Average Delivery Time</th>
               <th>Top Product Delivered</th>
               <th>Highest Revenue Delivered Product</th>
             </tr>
           </thead>
           <tbody>
             <tr>
               <td>1,100</td> <!-- Total Delivered Orders -->
               <td>$42,000</td> <!-- Total Delivered Revenue -->
               <td>1,080</td> <!-- Delivered Orders Completed -->
               <td>15</td> <!-- Delivered Orders Pending -->
               <td>5</td> <!-- Delivered Orders Canceled -->
               <td>3 hours</td> <!-- Average Delivery Time -->
               <td>Product A</td> <!-- Top Product Delivered -->
               <td>Product B</td> <!-- Highest Revenue Delivered Product -->
             </tr>
           </tbody>
        </table>
        <br />

        <h4>Total Canceled Orders </h4>
        <table class="category-report-table">
           <thead>
             <tr>
               <th>Total Canceled Orders</th>
               <th>Total Canceled Revenue</th>
               <th>Orders Canceled by Customer</th>
               <th>Orders Canceled by System</th>
               <th>Average Cancellation Rate</th>
               <th>Top Canceled Product</th>
               <th>Highest Revenue Canceled Product</th>
               <th>Average Time Before Cancellation</th>
             </tr>
           </thead>
           <tbody>
             <tr>
               <td>25</td> <!-- Total Canceled Orders -->
               <td>$900</td> <!-- Total Canceled Revenue -->
               <td>18</td> <!-- Orders Canceled by Customer -->
               <td>7</td> <!-- Orders Canceled by System -->
               <td>2% (25 out of 1,250)</td> <!-- Average Cancellation Rate -->
               <td>Product C</td> <!-- Top Canceled Product -->
               <td>Product D</td> <!-- Highest Revenue Canceled Product -->
               <td>1 hour</td> <!-- Average Time Before Cancellation -->
             </tr>
           </tbody>
        </table>


    </div>

    <!-- Footer section with abandonment rate chart -->
    <div class="sales-report-footer">
        <h2>Cancellation Rate</h2>
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