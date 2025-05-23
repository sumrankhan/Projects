<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment_Method_Report.aspx.cs" Inherits="Admin_Panel.Sales_Report.Payment_Method_Report" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
    />
      <script src="../chart_script/apexcharts.min.js"></script>
      <link href="../css/styles.css" rel="stylesheet" />
    <title>Payment method Report</title>
  </head>

  <body class="sales-report-body-bg">
    <div class="main-container">
      <div class="sales-content-container">
        <header class="sales-report-color-bar">
          <div class="logo-div">
            <img src="/images/logo.png" width="190" alt="logo" />
          </div>
          <div class="sales-report-title">
            <h1>Payment Method Report</h1>
          </div>
        </header>

        <!-- div to write your content -->
        <div class="sales-report-container">
            <div class="category-report-container">
                <!-- <h2>Category: Electronics</h2> -->
                <div class="category-overview">
                  <div class="category-stat-tile">
                    <h3>Most Popular Payment Method</h3>
                    <p>Cash</p>
                    <h5 class="m-top">1,200 transactions - 40%</h5>
                  </div>
                  <div class="category-stat-tile">
                    <h3>Average Transaction Time</h3>
                    <p>2 min</p>
                    <h5 class="m-top">By Cash</h5>
                  </div>
                  <div class="category-stat-tile">
                    <h3>Conversion Rate by Payment Method</h3>
                    <p>50%</p>
                    <h5 class="m-top">By Cash/Credit Card</h5>
                  </div>
                  <div class="category-stat-tile">
                    <h3>Payment Method Satisfaction Rate</h3>
                    <p>55.5%</p>
                    <h5 class="m-top">For cash only</h5>
                  </div>
                </div>
    
                <div class="category-chart-section">
                  <div class="category-chart-container">
                    <div id="payment-method-overtime"></div>
                  </div>
                </div>
                <h2 class="category-report-table-title"> Payment Method Usage Summary
                </h2>
                <table class="category-report-table">
                  <thead>
                    <tr>
                      <th>Payment Method</th>
                      <th>Total Transactions</th>
                      <th>Total Revenue	</th>
                      <th>Average Transaction Value</th>
                      <th>Conversion Rate (Successful/Failed)</th>
                      <th>Processing Time (Avg)	</th>
                      <th>Percentage of Total Sales</th>
                      <th>Trends (Comparison to Previous Month)</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                        <td>Cash</td>
                        <td>20,500</td>
                        <td>$67,800</td>
                        <td>$45.20</td>
                        <td>38%</td>
                        <td>2 min</td>
                        <td>40%</td>
                        <td>+5%</td>
                      </tr>
                      <tr>
                        <td>Credit Card</td>
                        <td>15,300</td>
                        <td>$51,000</td>
                        <td>$50.00</td>
                        <td>42%</td>
                        <td>1 min</td>
                        <td>30%</td>
                        <td>-2%</td>
                      </tr>
                      <tr>
                        <td>Debit Card</td>
                        <td>12,400</td>
                        <td>$33,415</td>
                        <td>$40.75</td>
                        <td>50%</td>
                        <td>1.8 min</td>
                        <td>25%</td>
                        <td>+10%</td>
                      </tr>
                      <tr>
                        <td>Digital Wallet</td>
                        <td>6,800</td>
                        <td>$58,438</td>
                        <td>$47.50</td>
                        <td>27%</td>
                        <td>1.5 min</td>
                        <td>5%</td>
                        <td>+8%</td>
                      </tr>
                      <tr>
                        <td>Bank Transfer</td>
                        <td>9,600</td>
                        <td>$33,415</td>
                        <td>$46.80</td>
                        <td>30%</td>
                        <td>5 min</td>
                        <td>1%</td>
                        <td>+1%</td>
                      </tr>
                  </tbody>
                </table>
              </div>
          <div class="sales-report-footer">
            <h2>Total Transactions</h2>
            <div id="payment-comparison"></div>
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
      <script >

          document.addEventListener('DOMContentLoaded', function () {
              var options = {
                  series: [{

                      data: [0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50,]
                  }],
                  chart: {
                      type: 'line',
                      height: 200,
                      width: 1000,
                      toolbar: {
                          show: false
                      }
                  },
                  responsive: [{
                      breakpoint: 768,
                      options: {
                          chart: {
                              height: '300px'
                          }
                      }
                  }],
                  colors: ['#d87093'],
                  dataLabels: {
                      enabled: true,

                      offsetY: -10,
                      style: {
                          fontSize: '12px',
                          color: ['#612E37'],
                      }
                  },
                  xaxis: {
                      categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                      axisTicks: {
                          show: true
                      },
                      labels: {
                          style: {
                              fontFamily: 'Montserrat'
                          }
                      },
                      title: {
                          text: 'Payment method usage Overtime (2024)',
                          floating: true,
                          align: 'center',
                          offsetY: 0,

                          style: {
                              color: '#444',
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              fontWeight: 700
                          }
                      }
                  },
                  yaxis: {
                      labels: {

                          style: {
                              fontFamily: 'Montserrat'
                          }
                      },
                      title: {
                          text: 'Revenue(%)',
                          style: {
                              color: '#666',
                              fontFamily: 'Montserrat'
                          }
                      }
                  },

              };

              var payementMethodOvertime = new ApexCharts(document.querySelector("#payment-method-overtime"), options);
              payementMethodOvertime.render();
          });

          // Payment methods comparison chart
          document.addEventListener('DOMContentLoaded', function () {
              var options = {
                  series: [{
                      name: 'Total Transactions',
                      data: [20500, 15300, 12400, 6800, 9600]
                  }],
                  chart: {
                      type: 'bar',
                      height: 400,
                      toolbar: {
                          show: false
                      }
                  },
                  responsive: [{
                      breakpoint: 768,
                      options: {
                          chart: {
                              height: 300
                          }
                      }
                  }],
                  colors: ['#4E79A7'],
                  dataLabels: {
                      enabled: true,
                      offsetY: -10,
                      style: {
                          fontSize: '12px',
                          colors: ['#fff']
                      }
                  },
                  xaxis: {
                      categories: ['Cash', 'Credit Card', 'Debit Card', 'Digital Wallet', 'Bank Transfer'],
                      axisTicks: {
                          show: true
                      },
                      labels: {
                          style: {
                              fontFamily: 'Montserrat'
                          }
                      },
                      title: {
                          text: 'Payment Methods',
                          floating: true,
                          align: 'center',
                          offsetY: 0,
                          style: {
                              color: '#444',
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              fontWeight: 700
                          }
                      }
                  },
                  yaxis: {
                      labels: {
                          style: {
                              fontFamily: 'Montserrat'
                          }
                      },
                      title: {
                          text: 'Total Transactions',
                          style: {
                              color: '#666',
                              fontFamily: 'Montserrat'
                          }
                      }
                  },
                  tooltip: {
                      y: {
                          formatter: function (val) {
                              return val.toLocaleString();
                          }
                      }
                  }
              };

              var paymentMethodChart = new ApexCharts(document.querySelector("#payment-comparison"), options);
              paymentMethodChart.render();
          });


      </script>
  </body>
</html>

