<%@ Page Language="C#" AutoEventWireup="true" Codefile="Inventory_Stock_Report.aspx.cs" Inherits="Admin_Panel.Sales_Report.Inventory_Stock_Report" %>

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
    

    <title>Inventory Stock Report</title>
  </head>

  <body class="sales-report-body-bg">
    <div class="main-container">
      <div class="sales-content-container">
        <header class="sales-report-color-bar">
          <div class="logo-div">
            <img src="/images/logo.png" width="190" alt="logo" />
          </div>
          <div class="sales-report-title">
            <h1>Inventory Stock Report</h1>
          </div>
        </header>

        <!-- div to write your content -->
        <div class="sales-report-container">
            <div class="sales-report-container">
                <div class="category-report-container">
                  <h3>Inventory Stock</h3>
                  <div class="category-overview">
                    <div class="category-stat-tile">
                      <h3>Total Stock Value</h3>
                      <p>$200.47</p>
                      <br>
                    </div>
                    <div class="category-stat-tile">
                      <h3>Total Items in Stock</h3>
                      <p>60 units</p>
                      
                    </div>
                    <div class="category-stat-tile">
                      <h3>Low Stock Items</h3>
                      <p>Canned Tomatoes - 5 units</p>
                      
                    </div>
                     <div class="category-stat-tile">
                      <h3>High Stock Items</h3>
                      <p>Frozen Peas - 60 units</p>
                    
                    </div>
                  </div>
      
                  <div class="category-chart-section">
                    <div class="category-chart-container">
                      <div id="stock-distribution"></div>
                      <div id="turnover-rate" style="width: 600px;"></div>
                    </div>
                  </div>
                  <h2 class="category-report-table-title">Inventory Stock Table </h2>
                  <table class="category-report-table">
                        <thead>
                          <tr>
                            <th>Item Code</th>
                            <th>Name</th>
                            <th>Dept</th>
                            <th>Current Stock Level</th>
                            <th>Reorder Threshold</th>
                            <th>Unit Cost</th>
                            <th>Total Stock Value</th>
                            <th>Stock Status</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>1001</td>
                            <td>Fresh Apples</td>
                            <td>Produce</td>
                            <td>50</td>
                            <td>20</td>
                            <td>$0.50</td>
                            <td>$25.00</td>
                            <td>Sufficient</td>
                          </tr>
                          <tr>
                            <td>2002</td>
                            <td>Whole Milk</td>
                            <td>Dairy</td>
                            <td>10</td>
                            <td>15</td>
                            <td>$1.20</td>
                            <td>$12.00</td>
                            <td>Low</td>
                          </tr>
                          <tr>
                            <td>3003</td>
                            <td>Baguette</td>
                            <td>Bakery</td>
                            <td>0</td>
                            <td>10</td>
                            <td>$1.00</td>
                            <td>$0.00</td>
                            <td>Out of Stock</td>
                          </tr>
                          <tr>
                            <td>4004</td>
                            <td>Ground Beef</td>
                            <td>Meat</td>
                            <td>30</td>
                            <td>20</td>
                            <td>$3.00</td>
                            <td>$90.00</td>
                            <td>Sufficient</td>
                          </tr>
                          <tr>
                            <td>5005</td>
                            <td>Frozen Peas</td>
                            <td>Frozen</td>
                            <td>60</td>
                            <td>25</td>
                            <td>$0.80</td>
                            <td>$48.00</td>
                            <td>Sufficient</td>
                          </tr>
                          <tr>
                            <td>6006</td>
                            <td>Canned Tomatoes</td>
                            <td>Pantry</td>
                            <td>5</td>
                            <td>10</td>
                            <td>$0.70</td>
                            <td>$3.50</td>
                            <td>Low</td>
                          </tr>
                          <tr>
                            <td>7007</td>
                            <td>Orange Juice</td>
                            <td>Beverages</td>
                            <td>15</td>
                            <td>20</td>
                            <td>$2.00</td>
                            <td>$30.00</td>
                            <td>Low</td>
                          </tr>
                          <tr>
                            <td>2003</td>
                            <td>Cheddar Cheese</td>
                            <td>Dairy</td>
                            <td>20</td>
                            <td>10</td>
                            <td>$2.50</td>
                            <td>$50.00</td>
                            <td>Sufficient</td>
                          </tr>
                          <tr>
                            <td>4008</td>
                            <td>Chicken Breast</td>
                            <td>Meat</td>
                            <td>45</td>
                            <td>20</td>
                            <td>$4.00</td>
                            <td>$180.00</td>
                            <td>Sufficient</td>
                          </tr>
                          <tr>
                            <td>5009</td>
                            <td>Ice Cream</td>
                            <td>Frozen</td>
                            <td>10</td>
                            <td>10</td>
                            <td>$3.50</td>
                            <td>$35.00</td>
                            <td>Low</td>
                          </tr>
                        </tbody>
                      </table>
                      
                      
                </div>
      
                <!-- business chart always at the bottom of the report -->
                <div class="sales-report-footer">
                  <h2 class="m-left">Top 10 High Value Items</h2>
                  <div id="high-inventory-chart"></div>
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





        document.addEventListener('DOMContentLoaded', function () {
            var options = {
                series: [35, 25, 15, 10, 15], // Example distribution percentages for departments
                chart: {
                    type: 'pie',
                    height: 300
                },
                labels: ['Produce', 'Dairy', 'Bakery', 'Meat', 'Frozen Foods'],
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
                    text: 'Stock Distribution by Department',
                    align: 'center',
                    style: {
                        fontFamily: 'Montserrat',
                        fontSize: '14px',
                        fontWeight: 700
                    }
                }
            };

            var stockDistributionChart = new ApexCharts(document.querySelector("#stock-distribution"), options);
            stockDistributionChart.render();
        });




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

            var turnoverRateChart = new ApexCharts(document.querySelector("#turnover-rate"), options);
            turnoverRateChart.render();
        });









        document.addEventListener('DOMContentLoaded', function () {
            var options = {
                series: [{
                    name: 'Growth',
                    data: [5000, 4500, 4000, 3500, 3200, 3000, 2800, 2500, 2400, 2200]
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
                colors: ['#28a745'],
                dataLabels: {
                    enabled: true,
                    offsetY: -20,
                    style: {
                        fontSize: '12px',
                        colors: ["#304758"]
                    }
                },
                xaxis: {
                    categories: ['Fresh Apples', 'Whole Milk', 'Baguette', 'Ground Beef', 'Frozen Peas', 'Canned Tomatoes', 'Orange Juice', 'Cheddar Cheese', 'Chicken Breast', 'Ice Cream'],
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

                    }
                },
                title: {
                    text: 'Stock Value',
                    floating: true,
                    offsetY: 330,
                    align: 'center',
                    style: {
                        color: '#444'
                    }
                }
            };

            var inventoryHighValueChart = new ApexCharts(document.querySelector("#high-inventory-chart"), options); // Updated ID reference
            inventoryHighValueChart.render();

        });

    </script>
  </body>
</html>

