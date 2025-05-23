<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" 	AutoEventWireup="true"	CodeFile="Dashboard.aspx.cs" Inherits="Admin_Panel.Dashboard" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
	<div class="content-container" 		id="mainContent">
		<header>
			<div class="breadcrumb">
				<h3>Dashboard</h3>
				<div>
					<asp:Label runat="server" Text="Home" />
					<p>/</p>
					<asp:Label runat="server"
						Text="Analytic" />
				</div>
			</div>
		</header>

		<div class="main-content">
			<div class="highlights-top-row">
				<div class="sub-card">
					<div>
						<h5>Total Sales <span style="font-size:9px">(Yearly)</span> </h5>
						<span
							class="round-bg-div">
							<i class="fa-solid fa-dollar-sign">
							</i></span>
					</div>
					<div class="trend-data-div">
						<h3>$1200.00</h3>

						<div
							class="small-trend-div">
							<span><i class="fa-solid fa-arrow-up-long"></i></span>
							<span>12%</span>
						</div>
					</div>
				</div>
				<!--  -->
				<div class="sub-card">
					<div>
						<h5>This Month Sales
						</h5>
						<span
							class="round-bg-div">
							<i class="fa-solid fa-truck">
							</i></span>
					</div>
					<div class="trend-data-div">
						<h3>$2200.00</h3>

						<div
							class="small-trend-div">
							<span><i class="fa-solid fa-arrow-up-long"></i></span>
							<span>24%</span>
						</div>
					</div>
				</div>
				<!--  -->
				<div
					class="sub-card">
					<div>
						<h5>Expected <span style="font-size:9px">(This Month)</span></h5>
						<span class="round-bg-div">
							<i class="fa-solid fa-truck">
							</i></span>
					</div>
					<div class="trend-data-div">
						<h3>$4200.00</h3>

						<div
							class="small-trend-div">
							<span><i class="fa-solid fa-arrow-up-long"></i></span>
							<span>14%</span>
						</div>
					</div>
				</div>
				<!--  -->
				<div
					class="sub-card">
					<div>
						<h5>Inventory Items </h5>
						<span class="round-bg-div">
							<i class="fa-solid fa-clipboard-list">
							</i></span>
					</div>
					<div class="trend-data-div">
						<h3>1560</h3>

						<div
							class="small-trend-div danger">
							<span><i
								class="fa-solid fa-arrow-down-long">
							</i></span>
							<span>12%</span>
						</div>
					</div>
				</div>
				<!--
-->
				<div
					class="sub-card">
					<div>
						<h5>Total Orders </h5>
						<span
							class="round-bg-div">
							<i class="fa-solid fa-cart-shopping">
							</i></span>
					</div>
					<div class="trend-data-div">
						<h3>400</h3>

						<div
							class="small-trend-div">
							<span><i class="fa-solid fa-arrow-up-long"></i></span>
							<span>12%</span>
						</div>
					</div>
				</div>
				<!--  -->
				<div
					class="sub-card">
					<div>
						<h5>Profit & Loss </h5>
						<span class="round-bg-div">
							<i class="fa-solid fa-dollar-sign">
							</i></span>
					</div>
					<div class="trend-data-div">
						<h3>$1200.00</h3>

						<div
							class="small-trend-div">
							<span><i class="fa-solid fa-arrow-up-long"></i></span>
							<span>12%</span>
						</div>
					</div>
				</div>
				<!--  -->
			</div>

			<!-- card 1 starts -->
			<div class="new-users card">
				<div
					class="top-row-new-users">
					<h3>Customers</h3>

					<div
						class="search-options ">
						<div
							class="search-ellipsis ">
							<i
								class="fa-solid fa-ellipsis dropdown-toggle"></i>
							<!-- Dropdown menu -->
							<div class="dropdown-menu">
								<ul>
									<li><a
										href="../Customers/Customer_List.aspx" target="_blank">
										View All</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="customer-table-div">
					<table>
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Email</th>
								<th>Contact</th>
								<th>Status</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>John Doe</td>
								<td><a
									href="mailto:johndoe@example.com">
									johndoe@example.com</a>
								</td>
								<td>+1 123-456-7890</td>
								<td><span
									class="status-active">
									Active</span></td>
							</tr>
							<tr>
								<td>2</td>
								<td>Jane Smith</td>
								<td><a href="mailto:janesmith@example.com">
									janesmith@example.com</a>
								</td>
								<td>+1 098-765-4321</td>
								<td><span
									class="status-inactive">
									Inactive</span></td>
							</tr>
							<tr>
								<td>3</td>
								<td>Sam Brown</td>
								<td><a
									href="mailto:sambrown@example.com">
									sambrown@example.com</a>
								</td>
								<td>+1 555-555-5555</td>
								<td><span class="status-active">
									Active</span></td>
							</tr>
							<tr>
								<td>4</td>
								<td>Alice Green</td>
								<td><a href="mailto:alicegreen@example.com">
									alicegreen@example.com</a>
								</td>
								<td>+1 234-567-8901</td>
								<td><span
									class="status-active">
									Active</span></td>
							</tr>
							<tr>
								<td>5</td>
								<td>Michael White</td>
								<td><a href="mailto:michaelwhite@example.com">
									michaelwhite@example.com</a>
								</td>
								<td>+1 345-678-9012</td>
								<td><span
									class="status-inactive">
									Inactive</span></td>
							</tr>
							<tr>
								<td>6</td>
								<td>Emily Davis</td>
								<td><a
									href="mailto:emilydavis@example.com">
									emilydavis@example.com</a>
								</td>
								<td>+1 456-789-0123</td>
								<td><span
									class="status-active">
									Active</span></td>
							</tr>
							<tr>
								<td>7</td>
								<td>Robert Johnson</td>
								<td><a href="mailto:robertjohnson@example.com">
									robertjohnson@example.com</a>
								</td> 
								<td>+1 567-890-1234</td>
								<td><span
									class="status-active">
									Active</span></td>
							</tr>
							<tr>
								<td>8</td>
								<td>Linda Brown</td>
								<td><a href="mailto:lindabrown@example.com">
									lindabrown@example.com</a>
								</td>
								<td>+1 678-901-2345</td>
								<td><span
									class="status-inactive">
									Inactive</span></td>
							</tr>
							<tr>
								<td>9</td>
								<td>Daniel Wilson</td>
								<td><a
									href="mailto:danielwilson@example.com">
									danielwilson@example.com</a>
								</td>
								<td>+1 789-012-3456</td>
								<td><span
									class="status-active">
									Active</span></td>
							</tr>
							<tr>
								<td>10</td>
								<td>Olivia Taylor</td>
								<td><a href="mailto:oliviataylor@example.com">
									oliviataylor@example.com</a>
								</td>
								<td>+1 890-123-4567</td>
								<td><span
									class="status-inactive">
									Inactive</span></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- card1 ends -->

			<!-- card2 starts -->
			<div class="sales-overview card">
				<div
					class="top-products-heading">
					<h3>Most Selling Products
					</h3>
				</div>
				<div class="scrollable-table-container">
					<table class="most-selling-card-table">
						<thead>
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Sales</th>
								<th>Price</th>
								<th>Qty</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td class="flex-div">
									<img src="images/wireless%20mouse.png"
										alt="Wireless Mouse"
										width="50" height="40">
									Wireless Mouse
								</td>
								<td>120</td>
								<td>$25.00</td>
								<td>15</td>
							</tr>
							<tr>
								<td>2</td>
								<td class="flex-div">
									<img src="images/Bluetooth%20Headphones.png"
										alt="Bluetooth Headphones"
										width="50" height="40">
									Bluetooth Headphones
								</td>
								<td>180</td>
								<td>$45.00</td>
								<td>8</td>
							</tr>
							<tr>
								<td>3</td>
								<td
									class="flex-div">
									<img
										src="images/gaming%20laptop.jpg"
										alt="USB-C Adapter"
										width="50" height="40">
									USB-C Adapter
								</td>
								<td>75</td>
								<td>$12.00</td>
								<td>30</td>
							</tr>
							<tr>
								<td>4</td>
								<td class="flex-div">
									<img src="images/Keyboard.png"
										alt="Keyboard" width="50"
										height="40">
									Keyboard
								</td>
								<td>100</td>
								<td>$30.00</td>
								<td>20</td>
							</tr>
							<tr>
								<td>5</td>
								<td
									class="flex-div">
									<img
										src="images/Portable%20Charger.png"
										alt="Portable Charger"
										width="50" height="40">
									Portable Charger
								</td>
								<td>250</td>
								<td>$20.00</td>
								<td>25</td>
							</tr>
							<!-- Add more rows to
simulate 10 products
-->
							<tr>
								<td>6</td>
								<td
									class="flex-div">
									<img
										src="images/wireless%20mouse.png"
										alt="Wireless Mouse"
										width="50" height="40">
									Wireless Mouse
								</td>
								<td>120</td>
								<td>$25.00</td>
								<td>15</td>
							</tr>
							<tr>
								<td>7</td>
								<td class="flex-div">
									<img src="images/Bluetooth%20Headphones.png"
										alt="Bluetooth Headphones"
										width="50" height="40">
									Bluetooth Headphones
								</td>
								<td>180</td>
								<td>$45.00</td>
								<td>8</td>
							</tr>
							<tr>
								<td>8</td>
								<td
									class="flex-div">
									<img
										src="images/gaming%20laptop.jpg"
										alt="USB-C Adapter"
										width="50" height="40">
									USB-C Adapter
								</td>
								<td>75</td>
								<td>$12.00</td>
								<td>30</td>
							</tr>
							<tr>
								<td>9</td>
								<td class="flex-div">
									<img src="images/Keyboard.png"
										alt="Keyboard" width="40"
										height="50">
									Keyboard
								</td>
								<td>100</td>
								<td>$30.00</td>
								<td>20</td>
							</tr>
							<tr>
								<td>10</td>
								<td
									class="flex-div">
									<img
										src="images/Portable%20Charger.png"
										alt="Portable Charger"
										width="50" height="40">
									Portable Charger
								</td>
								<td>250</td>
								<td>$20.00</td>
								<td>25</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- card2 ends -->

			<!-- card3 starts -->
			<div class="order-analytics merge card ">
				<div
					class="top-row-sales">
					<h3>Order Analytics</h3>
					<div class="search-ellipsis">
						<i class="fa-solid fa-ellipsis dropdown-toggle">
						</i>
						<!-- Dropdown menu -->
						<div class="dropdown-menu">
							<ul>
								<li><a
									href="Sales_Report/Sales_By_Category_Report.aspx" target="_blank">
									View Report</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="chart-container">
					<div id="ordersChart">
					</div>
				</div>
			</div>
			<!-- card3 ends -->

			<!-- card4 starts -->
			 <div class="user-engagement card">
	<div class="user-analytics">
		<!-- Total Customers Card -->
		<div class="user-stats card">
			<div class="icon-bar bar1">
				<i class="fa-solid fa-users icon"></i>
			</div>
			<div class="stats-data">
				<span>15800</span>
				<p>Total Customers</p>
			</div>
		</div>

		<!-- New Customers Card -->
		<div class="user-stats card">
			<div class="icon-bar bar2">
				<i class="fa-regular fa-user icon"></i>
			</div>
			<div class="stats-data">
				<span>15800</span>
				<p>New Customers</p>
			</div>
		</div>

		<!-- Active Customers Card -->
		<div class="user-stats card">
			<div class="icon-bar bar3">
				<i class="fa-regular fa-face-smile icon"></i>
			</div>
			<div class="stats-data">
				<span>15800</span>
				<p>Active Customers</p>
			</div>
		</div>

		<!-- Inactive Customers Card -->
		<div class="user-stats card">
			<div class="icon-bar bar4">
				<i class="fa-regular fa-face-frown icon"></i>
			</div>
			<div class="stats-data">
				<span>15800</span>
				<p>Inactive Customers</p>
			</div>
		</div>

		<!-- Most Searched Items Section -->
		<h4>Most Recent Orders</h4>
		<div class="scrollable-item-table-container card">
		<table class="most-selling-card-table">
	<thead>
		<tr>
			<th>ID</th>
			<th>Customer Name</th>
			<th>View Invoice</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td class="flex-div">John Doe</td>
			<td><a href="Customers/Order_Invoice.aspx" target="_blank">View Invoice</a></td>
		</tr>
		<tr>
			<td>2</td>
			<td class="flex-div">Jane Smith</td>
			<td><a href="Customers/Order_Invoice.aspx"  target="_blank">View Invoice</a></td>
		</tr>
		<tr>
			<td>3</td>
			<td class="flex-div">Michael Johnson</td>
			<td><a href="Customers/Order_Invoice.aspx"  target="_blank">View Invoice</a></td>
		</tr>
		<tr>
			<td>4</td>
			<td class="flex-div">Emily Davis</td>
			<td><a href="Customers/Order_Invoice.aspx"  target="_blank">View Invoice</a></td>
		</tr>
		<tr>
			<td>5</td>
			<td class="flex-div">Chris Lee</td>
			<td><a href="Customers/Order_Invoice.aspx"  target="_blank">View Invoice</a></td>
		</tr>
	</tbody>
</table>

		</div>
	</div>
</div>
			<!-- card ends -->

			<!-- card5 starts -->
			<div class="sales-overview card">
				<div class="top-row-sales">
					<h3>
						Sales Overview (Monthly)
					</h3>
					<div class="search-ellipsis">
						<i class="fa-solid fa-ellipsis dropdown-toggle"></i>
						<!-- Dropdown menu -->
						<div class="dropdown-menu">
							<ul>
								<li><a
									href="Sales_Report/Daily_Weekly_Monthly_Sales_Report.aspx" target="_blank">
									View Report</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- Progress Chart-->
				<div class="progress-chart">
					<div
						id="progressChart">
					</div>
				</div>
			</div>
			<!-- card5 ends -->

			<!-- card6 starts -->
			<div class="order-analytics merge-last card">
				<div
					class="top-row-sales">
					<h2>Product Analytics
						<span
							id="timePeriod">(Monthly)</span>
					</h2>

					<div
						class="search-ellipsis">
						<i class="fa-solid fa-ellipsis dropdown-toggle"></i>
						<!-- Dropdown menu -->
						<div class="dropdown-menu">
							<ul>
								<li><a
									href="Sales_Report/Profit_Margin_Report.aspx" target="_blank">
									View Report</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div id="productAnalyticsChart">
				</div>
			</div>
			<!-- card6 ends -->

			<!-- card7 starts -->
			<div class="fake-order-table card merge-row horizontal-scroll ">
				<div class="top-row-sales ">
					<h3 >
						Current Month Orders
					</h3>
					<div class="search-ellipsis">
						<i class="fa-solid fa-ellipsis dropdown-toggle"></i>
						<!-- Dropdown menu -->
						<div class="dropdown-menu">
							<ul>
								<li><a href="../Fake_Orders/Fake_Orders.aspx" target="_blank">Fake Orders</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="order-table-div most-selling-card-table ">
					<table>
   <thead>
      <tr>
         <th>Order ID</th>
         <th>Customer Name</th>
         <th>Email</th>
         <th>Phone</th>
         <th>Date</th>
         <th>Status</th>
         <th>Invoice</th>
      </tr>
   </thead>
   <tbody>
      <tr>
         <td>ORD001</td>
         <td>John Doe</td>
         <td><a href="mailto:johndoe@example.com">johndoe@example.com</a></td>
         <td>+1 123-456-7890</td>
         <td>2024-10-01</td>
         <td>Delivered</td>
         <td><a href="Customers/Order_Invoice.aspx" target="_blank">View Invoice</a></td>
      </tr>
      <tr>
         <td>ORD002</td>
         <td>Jane Smith</td>
         <td><a href="mailto:janesmith@example.com">janesmith@example.com</a></td>
         <td>+1 098-765-4321</td>
         <td>2024-10-02</td>
         <td>Process</td>
         <td><a href="Customers/Order_Invoice.aspx" target="_blank">View Invoice</a></td>
      </tr>
      <tr>
         <td>ORD003</td>
         <td>Michael Johnson</td>
         <td><a href="mailto:michaelj@example.com">michaelj@example.com</a></td>
         <td>+1 555-555-5555</td>
         <td>2024-10-03</td>
         <td>Delivered</td>
         <td><a href="Customers/Order_Invoice.aspx" target="_blank">View Invoice</a></td>
      </tr>
      <tr>
         <td>ORD004</td>
         <td>Alice Green</td>
         <td><a href="mailto:alicegreen@example.com">alicegreen@example.com</a></td>
         <td>+1 234-567-8901</td>
         <td>2024-10-04</td>
         <td>Process</td>
         <td><a href="Customers/Order_Invoice.aspx" target="_blank">View Invoice</a></td>
      </tr>
      <tr>
         <td>ORD005</td>
         <td>Emily Davis</td>
         <td><a href="mailto:emilydavis@example.com">emilydavis@example.com</a></td>
         <td>+1 456-789-0123</td>
         <td>2024-10-05</td>
         <td>Delivered</td>
         <td><a href="Customers/Order_Invoice.aspx" target="_blank">View Invoice</a></td>
      </tr>
      <tr>
         <td>ORD006</td>
         <td>Robert Johnson</td>
         <td><a href="mailto:robertjohnson@example.com">robertjohnson@example.com</a></td>
         <td>+1 567-890-1234</td>
         <td>2024-10-06</td>
         <td>Process</td>
         <td><a href="Customers/Order_Invoice.aspx" target="_blank">View Invoice</a></td>
      </tr>
      <tr>
         <td>ORD007</td>
         <td>Linda Brown</td>
         <td><a href="mailto:lindabrown@example.com">lindabrown@example.com</a></td>
         <td>+1 678-901-2345</td>
         <td>2024-10-07</td>
         <td>Delivered</td>
         <td><a href="Customers/Order_Invoice.aspx" target="_blank">View Invoice</a></td>
      </tr>
      <tr>
         <td>ORD008</td>
         <td>Daniel Wilson</td>
         <td><a href="mailto:danielwilson@example.com">danielwilson@example.com</a></td>
         <td>+1 789-012-3456</td>
         <td>2024-10-08</td>
         <td>Process</td>
         <td><a href="Customers/Order_Invoice.aspx" target="_blank">View Invoice</a></td>
      </tr>
      <tr>
         <td>ORD009</td>
         <td>Olivia Taylor</td>
         <td><a href="mailto:oliviataylor@example.com">oliviataylor@example.com</a></td>
         <td>+1 890-123-4567</td>
         <td>2024-10-09</td>
         <td>Delivered</td>
         <td><a href="Customers/Order_Invoice.aspx" target="_blank">View Invoice</a></td>
      </tr>
      <tr>
         <td>ORD010</td>
         <td>James Anderson</td>
         <td><a href="mailto:jamesanderson@example.com">jamesanderson@example.com</a></td>
         <td>+1 901-234-5678</td>
         <td>2024-10-10</td>
         <td>Process</td>
         <td><a href="Customers/Order_Invoice.aspx" target="_blank">View Invoice</a></td>
      </tr>
   </tbody>
</table>

				</div>
			</div>

			<!-- card8 starts -->
			<div class="order-analytics  card">
				<div
					class="top-row-sales">
					<h2>Orders Summary</h2>

					<div
						class="search-ellipsis">
						<i class="fa-solid fa-ellipsis dropdown-toggle"></i>
						<!-- Dropdown menu -->
						<div class="dropdown-menu">
							<ul>
								<li><a
									href="Sales_Report/Orders_Report.aspx" target="_blank">
									View Report</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div id="orders-summary-chart" style="max-width: 400px; margin: auto;"></div>
			</div>
			<!-- card8 ends -->

			<div class="business-growth-card merge-all card">
				<div
				class="top-row-sales">
				<h2>Monthly Gross Revenue Report</h2>

				<div
					class="search-ellipsis">
					<i class="fa-solid fa-ellipsis dropdown-toggle"></i>
					<!-- Dropdown menu -->
					<div class="dropdown-menu">
						<ul>
							<li><a
								href="Sales_Report/Profit_Margin_Report.aspx" target="_blank">
								View Report</a></li>
						</ul>
					</div>
				</div>
</div>
				<div id='gross-business-revenue-chart'></div>
			</div>

		</div>



		<%-- End of the Dashboard --%>
		<div class="dashboard-footer">
			<span>Powered By <a href="https://www.trivsmart.com/">Smart Tech Solution</a></span>
		</div>
	</div>

	<script>

        function grossBusinessGrowthChart() {
            var options = {
                series: [{
                    name: 'Commission',
                    data: [200, 150, 180, 220, 210, 230, 250, 210, 190, 240, 220, 200, 210, 250, 240, 200, 180, 220, 210, 240, 230, 210, 250, 240, 230, 220, 210, 200, 190, 230]
                }, {
                    name: 'Gross Revenue',
                    data: [2000, 1800, 2100, 2400, 2200, 2500, 2700, 2600, 2500, 2800, 2700, 2600, 2800, 2900, 3000, 2700, 2500, 2600, 2800, 3000, 2900, 2800, 3000, 2900, 2700, 2800, 2900, 3000, 2800, 2700]
                }],
                chart: {
                    type: 'bar',
                    height: 350,
                    stacked: true,
                    toolbar: {
                        show: true
                    },
                    zoom: {
                        enabled: true
                    }
                },
                responsive: [{
                    breakpoint: 480,
                    options: {
                        legend: {
                            position: 'bottom',
                            offsetX: -10,
                            offsetY: 0
                        }
                    }
                }],
                plotOptions: {
                    bar: {
                        horizontal: false,
                        borderRadius: 0, // Remove rounding to keep bars squared
                        columnWidth: '50%', // Adjust width to make bars squared
                        dataLabels: {
                            enabled: false // Disable data labels
                        }
                    },
                },
                xaxis: {
                    categories: [
                        1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30
                    ], 
                },
                legend: {
                    position: 'right',
                    offsetY: 40
                },
                fill: {
                    opacity: 1
                },
                dataLabels: {
                    enabled: false // Disable global data labels
                }
            };

            var chart = new ApexCharts(document.querySelector("#gross-business-revenue-chart"), options);
            chart.render();
        }

        // Listen for the DOMContentLoaded event and call the renderOrdersSummaryChart function
        document.addEventListener("DOMContentLoaded", function () {
            grossBusinessGrowthChart();
        });


		// Function to render the Orders Summary Radial Bar Chart
		function renderOrdersSummaryChart() {
			var options = {
				series: [25, 300, 150, 50], // Fake Orders, Total Orders, Delivered Orders, Orders in Queue
				chart: {
					height: 300,
					type: 'radialBar',
				},
				plotOptions: {
					radialBar: {
						offsetY: 30,
						startAngle: 0,
						endAngle: 290,
						hollow: {
							margin: 5,
							size: '40%',
							background: 'transparent',
						},
						dataLabels: {
							name: {
								show: false,
							},
							value: {
								show: false,
							}
						},
						barLabels: {
							enabled: true,
							useSeriesColors: true,
							offsetX: -18,
							fontSize: '12px',
							formatter: function (seriesName, opts) {
								return seriesName + ":  " + opts.w.globals.series[opts.seriesIndex];
							},
						},
					}
				},
				colors: ['#FF4560', '#008FFB', '#00E396', '#FEB019'], // Unique colors for each category
				labels: ['Fake Orders', 'Total Orders', 'Delivered Orders', 'Orders in Queue'],
				responsive: [{
					breakpoint: 480,
					options: {
						legend: {
							show: false
						}
					}
				}]
			};

			var chart = new ApexCharts(document.querySelector("#orders-summary-chart"), options);
			chart.render();
		}

		// Call the function when the DOM is fully loaded
		document.addEventListener("DOMContentLoaded", function () {
			renderOrdersSummaryChart();
		});



		
        // Line Chart Options
        var options = {
            series: [
                {
                    name: "Last Month Sales",
                    data: [30, 40, 35, 90,], // Sales data for week 1
                },
                {
                    name: "Prior Month Sales",
                    data: [10, 41, 35, 61,], // Sales data for week 2
                },
            ],
            chart: {
                height: 350,
                type: "line",
                zoom: {
                    enabled: false, // Disable zoom
                },
                toolbar: {
                    show: false, // Disable the toolbar
                },
            },
            dataLabels: {
                enabled: false, // Disable data labels
            },
            stroke: {
                curve: "smooth", // Use smooth line curve (can be 'straight' as well)
            },
            title: {
                text: "Last Two Months Trend",
                align: "left",
            },
            grid: {
                row: {
                    colors: ["#f3f3f3", "transparent"], // Alternating row colors
                    opacity: 0.5,
                },
            },
            xaxis: {
                categories: ["1", "10", "20", "30"], // Days of the week
            },
            yaxis: {
                title: {
                    text: "Sales Amount ($)", // Custom y-axis title
                    style: {
                        fontSize: '14px', // Change font size
                        color: '#333', // Change font color
                        fontWeight: 600, // Change font weight
                    },
                },
                min: 0, // Minimum value for the y-axis
                max: 100, // Maximum value for the y-axis (adjust as needed)
                tickAmount: 4, // Number of ticks on the y-axis
            },
            tooltip: {
                shared: true, // Allows displaying tooltips for both lines at the same point
                intersect: false, // Enables tooltip for both lines when hovered
            },
        };

        // Render Line Chart
        var progressChart = new ApexCharts(document.querySelector("#progressChart"), options);
        progressChart.render();

		// Line Chart ends

        // Order Chart - New Line Chart

        var options = {
            chart: {
                type: 'line',
                height: 350, // Default height (it will be overridden in CSS for mobile)
                toolbar: {
                    show: false, // Disable the toolbar
                },
            },
            series: [
                {
                    name: "Pending Orders",
                    data: [10, 20, 15, 5, 10, 7],
                    color: "#FF9F40",
                },
                {
                    name: "Returning Orders",
                    data: [5, 10, 8, 12, 14, 6],
                    color: "#FF6384",
                },
                {
                    name: "Completed Orders",
                    data: [50, 60, 70, 90, 85, 100],
                    color: "#4BC0C0",
                },
            ],
            xaxis: {
                categories: ["January", "February", "March", "April", "May", "June"],
                labels: {
                    style: {
                        fontSize: '12px', // Default font size for x-axis labels
                    },
                },
            },
            yaxis: {
                min: 0,
                labels: {
                    style: {
                        fontSize: '12px', // Default font size for y-axis labels
                    },
                },
            },
            grid: {
                borderColor: '#e7e7e7',
                padding: {
                    top: 10,
                    right: 10,
                    bottom: 10,
                    left: 10,
                },
            },
            markers: {
                size: 5,
            },
            stroke: {
                width: 2,
            },
            tooltip: {
                shared: true,
                intersect: false,
            },
        };

        // Render the chart
        var ordersChart = new ApexCharts(document.getElementById("ordersChart"), options);
        ordersChart.render();

		// Chart for the Product Analytics

        document.addEventListener("DOMContentLoaded", function () {
            const salesData = {
                month: {
                    labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                    most: [1200, 1500, 1400, 1600, 1800, 1900, 2100, 2000, 2300, 2500, 2700, 2900],
                    least: [200, 250, 220, 240, 260, 280, 300, 290, 310, 330, 350, 380],
                    productNames: [
                        "iPhone 14 Pro",
                        "Samsung Galaxy S23",
                        "MacBook Air M2",
                        "PlayStation 5",
                        "Nintendo Switch OLED",
                        "Dyson V15 Vacuum",
                        "Fitbit Charge 5",
                        "Apple Watch Ultra",
                        "Bose QuietComfort 45",
                        "Kindle Paperwhite",
                        "Sony Alpha a7 IV",
                        "LG C3 OLED TV",
                    ],
                },
            };

            let chart; // Declare chart outside the renderChart function

            function renderChart(labels, mostData, leastData) {
                const options = {
                    chart: {
                        type: 'bar',
                        height: 350,
                        toolbar: {
                            show: false,
                        },
                    },
                    series: [
                        {
                            name: 'Most Selling Products',
                            data: mostData,
                        },
                        {
                            name: 'Least Selling Products',
                            data: leastData,
                        },
                    ],
                    xaxis: {
                        categories: labels,
                    },
                    yaxis: {
                        title: {
                            text: 'No. Of Orders',
                            style: {
                                fontSize: '14px',
                                color: '#333',
                                fontWeight: 600,
                            },
                        },
                    },
                    fill: {
                        opacity: 0.8,
                    },
                    colors: ['rgba(54, 162, 235, 0.6)', 'rgba(255, 99, 132, 0.6)'],
                    tooltip: {
                        shared: true,
                        intersect: false,
                        x: {
                            formatter: (value) => `${value}`,
                        },
                        y: {
                            formatter: (value, { seriesIndex }) => {
                                const productName = salesData.month.productNames[seriesIndex];
                                return `${value} (${productName})`;
                            },
                        },
                    },
                    dataLabels: {
                        enabled: true,
                        style: {
                            fontSize: '8px',
                            fontWeight: 300,
                            colors: ['#fff'],
                        },
                        formatter: (value) => {
                            return `${value}`;
                        },
                    },
                };

                chart = new ApexCharts(document.querySelector("#productAnalyticsChart"), options); // Initialize chart here
                chart.render();
            }

            function updateChart(labels, mostData, leastData, timePeriod) {
                chart.updateOptions({
                    xaxis: {
                        categories: labels,
                    },
                    series: [
                        {
                            name: 'Most Selling Products',
                            data: mostData,
                        },
                        {
                            name: 'Least Selling Products',
                            data: leastData,
                        },
                    ],
                });
                document.getElementById("timePeriod").textContent = `(${timePeriod})`;
            }

            // Initial render
            renderChart(salesData.month.labels, salesData.month.most, salesData.month.least);

            // Event listeners for buttons
            document.getElementById("byMonth").addEventListener("click", function () {
                updateChart(salesData.month.labels, salesData.month.most, salesData.month.least, "Month");
            });
        });



		// Chart for Product Analytics ends

    </script>
</asp:Content>
