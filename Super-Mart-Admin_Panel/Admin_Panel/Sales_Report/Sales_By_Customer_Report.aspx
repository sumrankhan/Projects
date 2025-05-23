<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sales_By_Customer_Report.aspx.cs" Inherits="Admin_Panel.Sales_Report.Sales_By_Customer_Report" %>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

      <link href="../css/styles.css"
          rel="stylesheet" />
      <script src="../script.js"></script>
<link
  rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
/>
  <script src="../chart_script/apexcharts.min.js"></script>
      <script src="../chart_script/highcharts/highcharts.js"></script>
    <title>Sales by customer Report</title>
  </head>

  <body class="sales-report-body-bg">
    <div class="main-container">
      <div class="sales-content-container">
        <header class="sales-report-color-bar">
          <div class="logo-div">
            <img src="/images/logo.png" width="190" alt="logo" />
          </div>
          <div class="sales-report-title">
            <h1>Sales By Customer Report</h1>
          </div>
        </header>
        <div class="sales-report-container">
          <div class="category-report-container">
            <div class="category-overview">
              <div class="category-stat-tile">
                <h3>Total Customers</h3>
                <p>250 people</p>
              </div>
              <div class="category-stat-tile">
                <h3>Repeat Purchase Rate</h3>
                <p>45%</p>
              </div>
              <div class="category-stat-tile">
                <h3>Customer Retention Rate</h3>
                <p>60%</p>
              </div>
              <div class="category-stat-tile">
                <h3>Total Sales Revenue</h3>
                <p>$120k</p>
              </div>
            </div>

            <div class="category-chart-section">
              <div class="customer-chart-container">
                <div id="container"></div>
                <div id="customerrevenuechart"></div>
              </div>
            </div>

            <table class="category-report-table">
              <thead>
                <tr>
                  <th>Name</th>
                  <th>Region</th>
                  <th>Number of Orders</th>
                  <th>value of Orders</th>
                  <th>Refunds</th>
                  <th>Last Active</th>
                  <th>Ranking</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>John</td>
                  <td>G10 Islamabad</td>
                  <td>5</td>
                  <td>$22</td>
                  <td>0</td>
                  <td>2024-10-31</td>
                  <td>8</td>
                </tr>
                <tr>
                  <td>Sana</td>
                  <td>G10 Islamabad</td>
                  <td>4</td>
                  <td>$88</td>
                  <td>5</td>
                  <td>2024-10-31</td>
                  <td>21</td>
                </tr>

                <tr>
                  <td>Sam</td>
                  <td>G10 Islamabad</td>
                  <td>3</td>
                  <td>$33</td>
                  <td>2</td>
                  <td>2024-10-31</td>
                  <td>19</td>
                </tr>
                <!-- Additional rows as needed -->
              </tbody>
            </table>
          </div>
          <div class="sales-report-footer">
            <br>
            <br>
            <h2>Customers Order Trends</h2>
            <br>
            <div id="customer-order-trend"></div>
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
     <script>
         // Customer Sales Chart Section (Left Chart)
         document.addEventListener("DOMContentLoaded", function () {
             initializeCharts();
         });

         function initializeCharts() {
             Highcharts.chart("container", {
                 colors: ["#01BAF2", "#71BF45", "#FAA74B", "#B37CD2"],
                 chart: {
                     type: "pie",
                     width: 360,
                 },
                 title: null,
                 credits: {
                     enabled: false,
                 },
                 plotOptions: {
                     pie: {
                         allowPointSelect: true,
                         cursor: "pointer",
                         dataLabels: {
                             enabled: true,
                             format: "{point.name}: {y} %",
                         },
                         showInLegend: true,
                     },
                 },
                 series: [{
                     name: "Percentage",
                     colorByPoint: true,
                     innerSize: "75%",
                     data: [
                         { name: "Occasional Buyers", y: 78 },
                         { name: "Regular Buyers", y: 20 },
                         { name: "New Customers", y: 2 },
                     ],
                 }],
             });
         }

         // Right Chart (Total Revenue, AOV, Total Purchased Products)
         var options = {
             series: [
                 {
                     name: "Total Revenue",
                     type: "column",
                     data: [4300, 5070, 5750, 8020, 8200, 10000, 15000, 16500],
                 },
                 {
                     name: "AOV",
                     type: "column",
                     data: [130, 180, 190, 220, 250, 280, 315, 360],
                 },
                 {
                     name: "Total Purchased Products",
                     type: "line",
                     data: [9, 25, 23, 42, 37, 50, 49, 64],
                 },
             ],
             chart: {
                 height: 350,
                 width: 580,
                 type: "line",
                 stacked: false,
                 toolbar: {
                     show: false
                 },
             },
             dataLabels: {
                 enabled: false
             },
             stroke: {
                 width: [1, 1, 4],
             },
             xaxis: {
                 categories: ["John", "Peter", "Lily", "Mary", "Doe", "Jake", "Davi", "Lee"],
             },
             yaxis: [
                 {
                     seriesName: "TR",
                     axisTicks: { show: true },
                     axisBorder: { show: true, color: "#008FFB" },
                     labels: {
                         style: { colors: "#008FFB" },
                         formatter: function (value) { return "$" + value.toLocaleString(); },
                     },
                     title: { text: "Total Revenue", style: { color: "#008FFB" } },
                 },
                 {
                     seriesName: "AOV",
                     opposite: true,
                     axisTicks: { show: true },
                     axisBorder: { show: true, color: "#00E396" },
                     labels: {
                         style: { colors: "#00E396" },
                         formatter: function (value) { return "$" + value.toLocaleString(); },
                     },
                     title: { text: "Average Order Value", style: { color: "#00E396" } },
                 },
                 {
                     seriesName: "Total Purchased Products",
                     opposite: true,
                     axisTicks: { show: true },
                     axisBorder: { show: true, color: "#FEB019" },
                     labels: { style: { colors: "#FEB019" } },
                     title: { text: "Total Purchased Products", style: { color: "#FEB019" } },
                 },
             ],
             tooltip: {
                 y: [
                     { formatter: function (value) { return "$" + value.toLocaleString(); } },
                     { formatter: function (value) { return "$" + value.toLocaleString(); } },
                 ],
                 fixed: {
                     enabled: true,
                     position: "topLeft", // options: topRight, topLeft, bottomRight, bottomLeft
                     offsetY: 30,
                     offsetX: 60,
                 },
             },
             legend: {
                 horizontalAlign: "left",
                 offsetX: 40,
             },
         };

         var revenueChart = new ApexCharts(document.querySelector("#customerrevenuechart"), options);
         revenueChart.render();

         // Customers Orders Trends (Bottom Chart)
         var options = {
             series: [
                 {
                     name: "Customer Order Trends",
                     data: [23000, 31000, 40000, 91000, 40000, 36000, 32000, 23000, 14000, 60000, 35000, 72000],
                 },
             ],
             chart: {
                 type: "bar",
                 height: "100%",
                 width: "100%",
                 toolbar: { show: false },
             },
             responsive: [
                 {
                     breakpoint: 768,
                     options: {
                         chart: {
                             height: "300px",
                         },
                     },
                 },
             ],
             plotOptions: {
                 bar: {
                     borderRadius: 8,
                     dataLabels: { position: "top" },
                 },
             },
             colors: ["#28a745"],
             dataLabels: {
                 enabled: true,
                 formatter: function (val) {
                     if (val >= 100000) {
                         return "1 lac";
                     } else {
                         return (val / 1000) + "k";
                     }
                 },
                 offsetY: -20,
                 style: {
                     fontSize: "12px",
                     colors: ["#304758"],
                 },
             },
             xaxis: {
                 categories: [
                     "4/10/24", "7/10/24", "8/10/24", "11/10/24", "15/10/24",
                     "16/10/24", "19/10/24", "20/10/24", "22/10/24", "26/10/24", "30/10/24", "31/10/24"
                 ],
                 position: "top",
                 axisBorder: { show: false },
                 axisTicks: { show: false },
             },
             yaxis: {
                 min: 10000,
                 max: 100000,
                 labels: {
                     formatter: function (val) {
                         if (val === 100000) {
                             return "1 lac";
                         } else {
                             return (val / 1000) + "k";
                         }
                     },
                 },
             },
             title: {
                 text: "Customer Order Trends",
                 floating: true,
                 offsetY: 330,
                 align: "center",
                 style: {
                     color: "#444",
                 },
             },
         };

         var customerOrderTrends = new ApexCharts(document.querySelector("#customer-order-trend"), options);
         customerOrderTrends.render();
     </script>

  </body>
</html>



