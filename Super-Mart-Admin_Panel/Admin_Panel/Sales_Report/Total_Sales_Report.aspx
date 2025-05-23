<%@ Page Language="C#" AutoEventWireup="true" Codefile="Total_Sales_Report.aspx.cs" Inherits="Admin_Panel.Sales_Report.Total_Sales_Report" %>


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
    <title>Top Sales Report</title>
  </head>
<body class="sales-report-body-bg">
        <header class="sales-report-color-bar">
          <div class="logo-div">
            <img src="/images/logo.png" width="190" alt="logo" />
          </div>
          <div class="sales-report-title">
            <h1>Total Sales Report</h1>
          </div>
        </header>
        <div class="sales-report-container">
          <div class="report-width-reducer-div">
            <div class="report-imp-stats">
              <div class="stats-tile-column">
                <div class="stats-tile">
                  <p>
                    Total Sales: <span class="f-30 bold-font">510.2 K</span>
                  </p>
                </div>

                <div class="stats-tile flex-div">
                  <p>Total Orders: <span class="f-30 bold-font">122</span></p>
                  <p class="trend"><i class="fa-solid fa-arrow-up"></i>18%</p>
                </div>
              </div>

              <div class="sales-report-graph">
                <div
                  class="sales-report-graph-title flex-div just-btw m-lt-rt-10"
                ></div>

                <div class="sales-report-graph-container">
                  <div id="total-sales-report-chart"></div>
                </div>
              </div>
            </div>

            <div class="top-product-location-div">
              <div>
                <p class="font-weight-600">Top product of the Month:</p>
                <h2>Sugar <span>5k</span></h2>
              </div>

              <div class="align-right">
                <p class="font-weight-600">Location:</p>
                <h2>D17 Markaz</h2>
              </div>
            </div>

            <%--<div class="report-table">--%>

              
                  <asp:Repeater ID="rptElectronics" runat="server">
                <HeaderTemplate>
                    <table class="category-report-table">
                        <thead>
                            <tr>
                                <td colspan="5" class="no-border f-14 bold-font txt-align-left">
                                    Electronics
                                </td>
                            </tr>
                            <tr class="attributes-bg">
                                <th>Sr#</th>
                                <th>Name</th>
                                <th>Sold Qty</th>
                                <th>Rate</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Container.ItemIndex + 1 %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("SoldQty") %></td>
                        <td><%# Eval("Rate") %></td>
                        <td><%# Eval("Total") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    <tr class="bold-font">
                        <td colspan="2"></td>
                        <td>Total Sold</td>
                        <td><%# CalculateTotalSold(rptElectronics.Items) %></td>
                        <td><%# CalculateTotalSold(rptElectronics.Items) %></td>
                    </tr>
                    </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>

            <!-- Kitchen Category -->
            <asp:Repeater ID="rptKitchen" runat="server">
                <HeaderTemplate>
                    <table class="category-report-table">
                        <thead>
                            <tr>
                                <td colspan="5" class="no-border f-14 bold-font txt-align-left">
                                    Kitchen
                                </td>
                            </tr>
                            <tr class="attributes-bg">
                                <th>Sr#</th>
                                <th>Name</th>
                                <th>Sold Qty</th>
                                <th>Rate</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td><%# Container.ItemIndex + 1 %></td>
                        <td><%# Eval("Name") %></td>
                        <td><%# Eval("SoldQty") %></td>
                        <td><%# Eval("Rate") %></td>
                        <td><%# Eval("Total") %></td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    <tr class="bold-font">
                        <td colspan="2"></td>
                        <td>Total Sold</td>
                        <td><%# CalculateTotalSold(rptKitchen.Items) %></td>
                        <td><%# CalculateTotalSold(rptKitchen.Items) %></td>
                    </tr>
                    <tr class="bold-font">
                        <td colspan="2"></td>
                        <td>Gross Total</td>
                        <td><%# CalculateTotalSold(rptKitchen.Items) %></td>
                        <td><%# CalculateTotalSold(rptKitchen.Items) %></td>
                    </tr>
                    </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
               
             
            <%--</div>--%>
          </div>
          <!-- business chart always at the bottom of the report -->
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
    <script src="../script.js"></script>
</body>
</html>

