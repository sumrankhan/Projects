<%@ Page Language="C#" AutoEventWireup="true" Codefile="Sales_By_Region_Report.aspx.cs" Inherits="Admin_Panel.Sales_Report.Sales_By_Region_Report" %>


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
      <script src="../chart_script/highcharts.js"></script>

    <title>Sales by Region Report</title>
  </head>

  <body class="sales-report-body-bg">
    <div class="main-container">
      <div class="sales-content-container">
        <header class="sales-report-color-bar">
          <div class="logo-div">
            <img src="/images/logo.png" width="190" alt="logo" />
          </div>
          <div class="sales-report-title">
            <h1>Sales by Region Report</h1>
          </div>
        </header>

        <!-- div to write your content -->
        <div class="sales-report-container">
          <div class="category-report-container">
            <div class="category-overview">
              <div class="customer-stat-tile">
                <h3>Total Sale Revenue</h3>
                <p>PKR 500k</p>
              </div>
              <div class="customer-stat-tile">
                <h3>Region with highest Sell</h3>
                <p>D17 Islamabad</p>
              </div>
              <div class="customer-stat-tile">
                <h3>Lowest sell region</h3>
                <p>E11 Islamabad</p>
              </div>
              <div class="customer-stat-tile">
                <h3>Regions Covered</h3>
                <p>10</p>
              </div>
            </div>

                       <div class="category-chart-section">
   <br>
   <h2 class="m-left">Sales Trend by Region</h2>
   <br>
   <div class="category-chart-container">
     <div id="sales-trend-by-region1"></div>
   </div>
  
</div>
            <h2 class="category-report-table-title">Regional Sales Breakdown</h2>
            <table class="category-report-table">
              <thead>
                <tr>
                  <th>Region</th>
                  <th>Total Sales</th>
                  <th>Number of Orders</th>
                  <th>AOV</th>
                  <th>Top products</th>
                  <th>Sales Growth</th>
                  <th>STA</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>G-9</td>
                  <td>PKR 200k</td>
                  <td>500</td>
                  <td>PKR 40000</td>
                  <td>Grocery Product</td>
                  <td>+15%</td>
                  <td>80%</td>
                </tr>
                <tr>
                  <td>I-8</td>
                  <td>PKR 200k</td>
                  <td>500</td>
                  <td>PKR 40000</td>
                  <td>Grocery Product</td>
                  <td>+15%</td>
                  <td>80%</td>
                </tr>
                <tr>
                  <td>D-17</td>
                  <td>PKR 200k</td>
                  <td>500</td>
                  <td>PKR 40000</td>
                  <td>Grocery Product</td>
                  <td>+15%</td>
                  <td>80%</td>
                </tr>
                <tr>
                  <td>B-17</td>
                  <td>PKR 200k</td>
                  <td>500</td>
                  <td>PKR 40000</td>
                  <td>Grocery Product</td>
                  <td>+15%</td>
                  <td>80%</td>
                </tr>
                <tr>
                  <td>H-12</td>
                  <td>PKR 200k</td>
                  <td>500</td>
                  <td>PKR 40000</td>
                  <td>Grocery Product</td>
                  <td>+20%</td>
                  <td>89%</td>
                </tr>
                <!-- Add more rows as needed -->
              </tbody>
            </table>
          </div>
          <!-- business chart always at the bottom of the report -->
          
          <div class="sales-report-footer">
            <br>
            <h2 class="m-left">5 Top performing Regions</h2>
            <div id="top-performing-regions-chart" style="max-width: 950px; margin: auto;"></div>
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
   
       <script>
           // Sales trend by region
           document.addEventListener('DOMContentLoaded', function () {
               var options = {
                   series: [
                       {
                           name: 'Sales',
                           data: [31, 240, 68, 51, 42, 109, 100]
                       }
                   ],
                   chart: {
                       height: 200,
                       width: 1000,
                       type: 'area',
                       zoom: {
                           enabled: false
                       },
                       toolbar: {
                           show: false
                       }
                   },
                   dataLabels: {
                       enabled: false
                   },
                   stroke: {
                       curve: 'smooth',
                       width: 2
                   },
                   colors: ['#00E396'],
                   xaxis: {
                       type: 'category',
                       categories: [
                           "D-17",
                           "E-11",
                           "G-9",
                           "G-8",
                           "B-17",
                           "I-8",
                           "H-12"
                       ],
                       title: {
                           text: 'Regions (Within Islamabad)',
                           style: {
                               fontSize: '12px',
                               fontFamily: 'Montserrat, sans-serif',
                               color: '#333'
                           }
                       },
                       labels: {
                           style: {
                               fontSize: '10px',
                               fontFamily: 'Montserrat, sans-serif',
                               colors: '#333'
                           }
                       }
                   },
                   yaxis: {
                       title: {
                           text: 'Product Sales',
                           style: {
                               fontSize: '12px',
                               fontFamily: 'Montserrat, sans-serif',
                               color: '#333'
                           }
                       },
                       labels: {
                           style: {
                               fontSize: '10px',
                               fontFamily: 'Montserrat, sans-serif',
                               colors: '#333'
                           }
                       }
                   },
                   legend: {
                       position: 'top',
                       horizontalAlign: 'left',
                       offsetY: 0,
                       offsetX: 10,
                       floating: true,
                       labels: {
                           useSeriesColors: true,
                           style: {
                               fontSize: '12px',
                               fontFamily: 'Montserrat, sans-serif'
                           }
                       }
                   },
                   tooltip: {
                       y: {
                           formatter: function (value) {
                               return `$${value.toFixed(2)}`;
                           }
                       }
                   },
                   grid: {
                       borderColor: '#e7e7e7',
                       strokeDashArray: 5
                   }
               };

               var regionsBySalesChart = new ApexCharts(document.querySelector("#sales-trend-by-region1"), options);
               regionsBySalesChart.render();
           });


           // Bar chart for sales by region
           document.addEventListener('DOMContentLoaded', function () {
               var options = {
                   series: [
                       {
                           name: 'Sales',
                           data: [16000, 15000, 13000, 12500, 11000] // Replace with actual sales data
                       }
                   ],
                   chart: {
                       type: 'bar',
                       height: 400,
                       toolbar: {
                           show: false
                       }
                   },
                   plotOptions: {
                       bar: {
                           horizontal: false, // Set to false for vertical bars
                           columnWidth: '42%',
                           distributed: true
                       }
                   },
                   colors: ['#1E90FF', '#00C853', '#FFAB00', '#FF5252', '#6200EA'], // Colors for each region
                   dataLabels: {
                       enabled: true,
                       formatter: (val) => `$${val.toLocaleString()}`,
                       style: {
                           fontSize: '14px',
                           colors: ['#333']
                       }
                   },
                   xaxis: {
                       categories: ['E-11', 'G-9', 'D-17', 'B-17', 'H-12'],
                       title: {
                           text: 'Regions',
                           style: {
                               fontSize: '12px',
                               color: '#333'
                           }
                       },
                       labels: {
                           style: {
                               fontSize: '10px',
                               colors: '#333'
                           }
                       }
                   },
                   yaxis: {
                       title: {
                           text: 'Achieved Target',
                           style: {
                               fontSize: '15px',
                               color: '#333'
                           }
                       },
                       labels: {
                           formatter: (value) => `$${value.toLocaleString()}`, // Format y-axis labels as currency
                           style: {
                               fontSize: '10px',
                               colors: '#333'
                           }
                       }
                   },
                   tooltip: {
                       y: {
                           formatter: (value) => `$${value.toLocaleString()}`
                       }
                   },
                   legend: {
                       show: false

                   },
                   grid: {
                       borderColor: '#e7e7e7',
                       strokeDashArray: 5
                   }
               };

               var regionsBySalesChart = new ApexCharts(document.querySelector("#top-performing-regions-chart"), options);
               regionsBySalesChart.render();
           });
       </script>
   
  </body>
</html>


