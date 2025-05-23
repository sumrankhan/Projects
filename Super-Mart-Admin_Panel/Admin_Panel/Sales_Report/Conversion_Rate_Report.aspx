<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Conversion_Rate_Report.aspx.cs" Inherits="Admin_Panel.Sales_Report.Conversion_Rate_Report" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link href="../css/styles.css" rel="stylesheet" />
      <script src="../chart_script/apexcharts.min.js"></script>
        <script src="../script.js"></script>
      <link
  rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
/>
    <title>Converstion Rate Report</title>
  </head>

  <body class="sales-report-body-bg">
    <div class="main-container">
      <div class="sales-content-container">
        <header class="sales-report-color-bar">
          <div class="logo-div">
            <img src="/images/logo.png" width="190" alt="logo" />
          </div>
          <div class="sales-report-title">
            <h1>Conversion Rate Report</h1>
          </div>
        </header>

        <!-- div to write your content -->
        <div class="sales-report-container">
            <div class="category-report-container">
                <!-- <h2>Category: Electronics</h2> -->
                <div class="category-overview">
                  <div class="category-stat-tile">
                    <h3>Total Conversion Rate</h3>
                    <p>9.8%</p>
                    <h5 class="m-top">↑ Overall rate across all Channels</h5>
                  </div>
                  <div class="category-stat-tile">
                    <h3>Monthly Trend Growth</h3>
                    <p>+4%</p>
                    <h5 class="m-top">Compared to last Month</h5>
                  </div>
                  <div class="category-stat-tile">
                    <h3>Best Performing Channel</h3>
                    <p>Email Marketing</p>
                    <h5 class="m-top">17.94%</h5>
                  </div>
                  <div class="category-stat-tile">
                    <h3>Most Effective Campaign</h3>
                    <p>Fall season sale</p>
                    <h5 class="m-top">12.5%</h5>
                  </div>
                </div>
    
                <div class="category-chart-section">
                  <div class="category-chart-container">
                    <div id="Conversion-rate-overtime-chart"></div>
                  </div>
                </div>
                <h2 class="category-report-table-title"> Traffic Sources</h2>
                <table class="category-report-table">
                  <thead>
                    <tr>
                      <th>Traffic Source</th>
                      <th>Visitors</th>
                      <th>Conversions</th>
                      <th>Conversion Rate(%)</th>
                      <th>Bounce Rate(%)</th>
                      <th>AOV</th>
                      <th>Revenue</th>
                      <th>Cost per conversion</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Organic Search</td>
                      <td>20,500</td>
                      <td>1,500</td>
                      <td>7.32</td>
                      <td>38</td>
                      <td>$45.20</td>
                      <td>$67,800</td>
                      <td>$2</td>
                    </tr>
                    <tr>
                        <td>Paid Search</td>
                        <td>15,300</td>
                        <td>1,020</td>
                        <td>6.67</td>
                        <td>42</td>
                        <td>$50</td>
                        <td>$51,000</td>
                        <td>$2.5</td>
                      </tr>
                      <tr>
                        <td>Social Media</td>
                        <td>12,400</td>
                        <td>820</td>
                        <td>6.61</td>
                        <td>50</td>
                        <td>$40.75</td>
                        <td>$33,415</td>
                        <td>$3</td>
                      </tr>
                      <tr>
                        <td>Email Marketing</td>
                        <td>6,800</td>
                        <td>1,220</td>
                        <td>17.94</td>
                        <td>27</td>
                        <td>$47.5</td>
                        <td>$58,438</td>
                        <td>$1.2</td>
                      </tr>
                      <tr>
                        <td>Direct</td>
                        <td>9,600</td>
                        <td>1,000</td>
                        <td>10.42</td>
                        <td>30</td>
                        <td>$46.8</td>
                        <td>$33,415</td>
                        <td>$3</td>
                      </tr>
                      <tr>
                        <td>Referral</td>
                        <td>12,400</td>
                        <td>820</td>
                        <td>6.61</td>
                        <td>50</td>
                        <td>$40.75</td>
                        <td>$33,415</td>
                        <td>$3</td>
                      </tr>
                  </tbody>
                </table>
              </div>
          <div class="sales-report-footer">
            <br>
            <h2>Conversion Rate by Channel</h2>
            <br>
            <div id="Conversion-by-Channels"></div>
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

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var options = {
                series: [{
                    name: 'Potential Revenue Lost',
                    data: [0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50,] // Sample revenue data in dollars for each month
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
                colors: ['#bd9514'],
                dataLabels: {
                    enabled: true,

                    offsetY: -10,
                    style: {
                        fontSize: '12px',
                        colors: ["#304758"]
                    }
                },
                xaxis: {
                    categories: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                    axisTicks: {
                        show: true
                    },
                    labels: {
                        style: {
                            fontFamily: 'Montserrat' // Set font family for x-axis labels
                        }
                    },
                    title: {
                        text: 'Conversion Rate Overtime (2024)',
                        floating: true,
                        align: 'center',
                        offsetY: 0,

                        style: {
                            color: '#444',
                            fontFamily: 'Montserrat', // Set font family for title
                            fontSize: 12,
                            fontWeight: 700
                        }
                    }
                },
                yaxis: {
                    labels: {

                        style: {
                            fontFamily: 'Montserrat' // Set font family for y-axis labels
                        }
                    },
                    title: {
                        text: 'Conversion Rate(%)',
                        style: {
                            color: '#666',
                            fontFamily: 'Montserrat' // Set font family for y-axis title
                        }
                    }
                },

            };

            var conversionRateOvertime = new ApexCharts(document.querySelector("#Conversion-rate-overtime-chart"), options);
            conversionRateOvertime.render();
        });

        // Chart to show the Conversion Rate across different Marketing Channels

        var options = {
            series: [{
                name: 'Growth',
                data: [2.3, 3.1, 4.0, 10.1, 4.0, 3.6, 3.2, 2.3, 1.4, 0.8]
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
            colors: ['#CA3667'],
            dataLabels: {
                enabled: true,
                formatter: function (val) {
                    return val + "%";
                },
                offsetY: -20,
                style: {
                    fontSize: '12px',
                    colors: ["#304758"]
                }
            },
            xaxis: {
                categories: ["Organic search", "Paid search", "Social Media", "Email", "Direct", "Refferal", "SEO", "Google Ads", "In-store promo", "Sponserships"],
                position: 'bottom',
                axisBorder: {
                    show: false
                },
                title: {
                    text: 'Marketing Channels',
                    style: {
                        fontSize: '12px',
                        color: '#333'
                    }
                },
                axisTicks: {
                    show: false
                },
            },
            yaxis: {
                labels: {
                    formatter: function (val) {
                        return val + "%";
                    }
                },
                title: {
                    text: 'Conversion Rate(%)',
                    style: {
                        color: '#000',
                        fontFamily: 'Montserrat' // Set font family for y-axis title
                    }
                }

            },

        };

        var conversionbyChannels = new ApexCharts(document.querySelector("#Conversion-by-Channels"), options); // Updated ID reference
        conversionbyChannels.render();


    </script>
  </body>
</html>
