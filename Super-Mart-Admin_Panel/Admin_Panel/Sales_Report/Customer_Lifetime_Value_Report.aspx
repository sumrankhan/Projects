<%@ Page Language="C#" AutoEventWireup="true" Codefile="Customer_Lifetime_Value_Report.aspx.cs" Inherits="Admin_Panel.Sales_Report.Customer_Lifetime_Value_Report" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <script src="../chart_script/apexcharts.min.js"></script>
      <link href="../css/styles.css" rel="stylesheet" />

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />
    

    <title>CLV Report</title>
  </head>

  <body class="sales-report-body-bg">
    <div class="main-container">
      <div class="sales-content-container">
        <header class="sales-report-color-bar">
          <div class="logo-div">
            <img src="/images/logo.png" width="190" alt="logo" />
          </div>
          <div class="sales-report-title">
            <h1>Customer Lifetime Value Report</h1>
          </div>
        </header>

        <!-- div to write your content -->
        <div class="sales-report-container">
            <div class="sales-report-container">
                <div class="category-report-container">
                  <h3>Report Overview</h3>
                  <div class="category-overview">
                    <div class="category-stat-tile">
                      <h3>Top Channel</h3>
                      <p>Email Marketing</p>
                      <h5 class="m-top">40% Traffic on website</h5>
                    </div>
                    <div class="category-stat-tile">
                      <h3>Top-selling products per channel</h3>
                      <p>Whole milk</p>
                      <h5 class="m-top">In Store</h5>
                    </div>
                    <div class="category-stat-tile">
                      <h3>Growth Rate by Channel </h3>
                      <p>80%</p>
                      <h5 class="m-top">Overall Channels</h5>
                    </div>
                  </div>
      
                  <div class="category-chart-section">
                    <div class="category-chart-container">
                      <div id="channel-distribution"></div>
                      <div id="channel-turnover" style="width: 600px;"></div>
                    </div>
                  </div>
                  <h2 class="category-report-table-title">CLV Report Table </h2>
                  <table class="category-report-table">
                    <thead>
                        <tr>
                          <th>Customer ID</th>
                          <th>Customer Name</th>
                          <th>Total Revenue (CLV)</th>
                          <th>Number of Orders</th>
                          <th>First Purchase Date</th>
                          <th>Last Purchase Date</th>
                          <th>Average Order Value (AOV)</th>
                          <th>Lifetime Duration (Years)</th>
                          <th>Recency (Days Since Last Purchase)</th>
                          <th>Customer Segment</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>C001</td>
                          <td>John Doe</td>
                          <td>$1500</td>
                          <td>10</td>
                          <td>2022-01-15</td>
                          <td>2023-11-01</td>
                          <td>$150.00</td>
                          <td>1.83</td>
                          <td>20</td>
                          <td>Premium</td>
                        </tr>
                        <tr>
                          <td>C002</td>
                          <td>Jane Smith</td>
                          <td>$700</td>
                          <td>5</td>
                          <td>2021-06-20</td>
                          <td>2023-09-15</td>
                          <td>$140.00</td>
                          <td>2.25</td>
                          <td>50</td>
                          <td>Regular</td>
                        </tr>
                        <tr>
                          <td>C003</td>
                          <td>Bob Johnson</td>
                          <td>$1200</td>
                          <td>8</td>
                          <td>2020-11-30</td>
                          <td>2023-10-10</td>
                          <td>$150.00</td>
                          <td>2.85</td>
                          <td>30</td>
                          <td>Premium</td>
                        </tr>
                    </tbody>
                      </table>
                      
                      
                </div>
      
                <!-- business chart always at the bottom of the report -->
                <div class="sales-report-footer">
                  <h2 class="m-left">10 Days Sales</h2>
                  <div id="channel-sales-chart"></div>
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
        </div>

  <script>

      document.addEventListener('DOMContentLoaded', function () {
          var options = {
              series: [{
                  name: 'Turnover Rate',
                  data: [1.2, 1.5, 1.8, 1.6, 1.4, 1.9, 2.1, 1.8, 1.7, 1.6, 1.9, 2.0] // Example monthly turnover rates
              }],
              chart: {
                  type: 'line',
                  height: 200,

                  toolbar: {
                      show: false // This line hides the toolbar
                  }
              },

              colors: ['#f4a261'],
              dataLabels: {
                  enabled: true,
                  style: {
                      fontSize: '12px',
                      color: ['#333']
                  }
              },
              xaxis: {
                  categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                  title: {
                      text: 'Month',
                      style: {
                          fontFamily: 'Montserrat',
                          fontSize: '12px',
                          fontWeight: 700
                      }
                  }
              },
              yaxis: {
                  title: {
                      text: 'Turnover Rate',
                      style: {
                          fontFamily: 'Montserrat',
                          color: '#666'
                      }
                  },
              }
          };

          var turnoverRateChannel = new ApexCharts(document.querySelector("#channel-turnover"), options);
          turnoverRateChannel.render();
      });
      document.addEventListener('DOMContentLoaded', function () {
          var options = {
              series: [{
                  name: 'Units Sold',
                  data: [10, 3, 4, 7, 5, 4, 6, 8, 2, 5]  // Data representing units sold
              }],
              chart: {
                  type: 'bar',
                  height: '100%',  // Responsive height
                  width: '100%',   // Responsive width
                  toolbar: {
                      show: false  // Hide toolbar for better print appearance
                  }
              },
              responsive: [{
                  breakpoint: 768,  // For mobile devices
                  options: {
                      chart: {
                          height: '300px'
                      }
                  }
              }],
              plotOptions: {
                  bar: {
                      borderRadius: 8,
                      dataLabels: {
                          position: 'top',
                      },
                  }
              },
              colors: ['#007bff'],  // Change to the desired color for the bars
              dataLabels: {
                  enabled: true,
                  offsetY: -20,
                  style: {
                      fontSize: '12px',
                      colors: ["#304758"]
                  }
              },
              xaxis: {
                  categories: ['Online', 'Store', 'Wholesale', 'Direct Sales', 'Partner', 'Export', 'Retail', 'Bulk', 'E-commerce', 'Promotions'],  // Different sales channels
                  position: 'bottom',
                  axisBorder: {
                      show: false,
                  },
                  axisTicks: {
                      show: false
                  },
              },
              yaxis: {
                  labels: {
                      formatter: function (val) {
                          return val + ' days';  // Append 'days' to each y-axis value
                      }
                  }
              },
              title: {
                  text: 'Channel Sales Report',
                  floating: true,
                  offsetY: 330,
                  align: 'center',
                  style: {
                      color: '#444'
                  }
              }
          };

          var channelSalesChart = new ApexCharts(document.querySelector("#channel-sales-chart"), options);  // Updated ID reference
          channelSalesChart.render();
      });










      document.addEventListener('DOMContentLoaded', function () {
          var options = {
              series: [35, 25, 15, 10, 15], // Example distribution percentages for departments
              chart: {
                  type: 'pie',
                  height: 300
              },
              labels: ['Email', 'Social media', 'store', 'online', 'Promotions'],
              colors: ['#d87093', '#6a9ab5', '#4caf50', '#f4a261', '#2a9d8f'],
              responsive: [{
                  breakpoint: 768,
                  options: {
                      chart: {
                          height: '250px'
                      }
                  }
              }],
              title: {
                  text: 'Website traffic',
                  align: 'center',
                  style: {
                      fontFamily: 'Montserrat',
                      fontSize: '14px',
                      fontWeight: 700
                  }
              }
          };

          var channeltrafficChart = new ApexCharts(document.querySelector("#channel-distribution"), options);
          channeltrafficChart.render();
      });
  </script>
  </body>
</html>