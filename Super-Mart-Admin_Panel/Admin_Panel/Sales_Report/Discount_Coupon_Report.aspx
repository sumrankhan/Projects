<%@ Page Language="C#" AutoEventWireup="true" Codefile="Discount_Coupon_Report.aspx.cs" Inherits="Admin_Panel.Sales_Report.Discount_Coupon_Report" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

      <link href="../css/styles.css" rel="stylesheet" />
  
    <script src="../chart_script/apexcharts.min.js"></script>
    <title>Sales Report</title>
</head>
<body>
      
        <%--<div class="sales-report-body-bg">--%>
    <div class="main-container">
      <div class="sales-content-container">
        <header class="sales-report-color-bar">
          <div class="logo-div">
            <img src="/images/logo.png" width="190" alt="logo" />
          </div>
          <div class="sales-report-title">
            <h1>Discounts and Coupons Report</h1>
          </div>
        </header>

        <!-- div to write your content -->
        <div class="sales-report-container">
          <div class="category-report-container">
            <!-- <h2>Category: Electronics</h2> -->
            <div class="category-overview">
              <div class="category-stat-tile">
                <h3>Total Discount Value</h3>
                <p>545</p>
                <h5 class="m-top">Previous Year</h5>
                <p>285</p>
              </div>
              <div class="category-stat-tile">
                <h3>Coupon Redemption Rate</h3>
                <p>4%</p>
                <h5 class="m-top">Previous Year</h5>
                <p>7%</p>
              </div>
              <div class="category-stat-tile">
                <h3>(AOV) with Discount</h3>
                <p>Mat</p>
                <h5 class="m-top">(AOV) Without Discount</h5>
                <p>pen</p>
              </div>
            </div>

            <div class="category-chart-section">
              <div class="category-chart-container">
                  
                 <div id="sales-with-and-without-discount-chart"></div>
                
              </div>
            </div>
            <h2 class="category-report-table-title">Analytics</h2>
            <table class="category-report-table">
                <thead>
                    <tr>
                        <th>Coupon Code</th>
                        <th>Discount Type</th>
                        <th>Total Sales with Discount</th>
                        <th>Total Sales without Discount</th>
                        <th>Redemption Rate</th>
                        <th>Revenue Impact (%)</th>
                        <th>Top Performing Product Category</th>
                        <th>Expiration Date</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="couponReportRepeater" runat="server">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("CouponCode") %></td>
                                <td><%# Eval("DiscountType") %></td>
                                <td><%# Eval("SalesWithDiscount", "{0:C}") %></td>
                                <td><%# Eval("SalesWithoutDiscount", "{0:C}") %></td>
                                <td><%# Eval("RedemptionRate") %></td>
                                <td><%# Eval("RevenueImpact", "{0:P}") %></td>
                                <td><%# Eval("TopCategory") %></td>
                                <td><%# Eval("ExpirationDate", "{0:yyyy-MM-dd}") %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
                
            </table>
          </div>
          <!-- business chart always at the bottom of the report -->
               
            <div class="sales-report-footer">
              <br>
              <h2>Redemption Rate Across Discount Types</h2>
              <div id="discount-redemption-rate"></div>
            </div>
         
                    </div>

      
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

   
  <%--</div>--%>
   
    <script src="../script.js"></script>

    <!-- Script  -->
   
<%--<div class="sales-report-footer">
  <br>
  <h2>Redemption Rate Across Discount Types</h2>
  <div id="test-chart"></div>
</div>--%>
   
</body>
</html>
