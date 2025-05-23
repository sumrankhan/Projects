<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Fake_Orders.aspx.cs" Inherits="Admin_Panel.Fake_Orders.Fake_Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    	<div class="order-table card merge-row">
			<div class="top-row-sales">
				<h3>
					Fake Orders
				</h3>

				<div>
					<p>Total Fake Order: <span>231</span></p>
					
				</div>
			</div>
			<div class="order-table-div most-selling-card-table">
				<table class="table-w-100">
					<thead>
						<tr>
							<th>Order ID</th>
							<th>Customer Name</th>
							<th>Email</th>
							<th>Phone</th>
							<th>Address</th>
							<th>Order No.</th>
							<th>Order Date</th>
							<th>Order Time</th>
							<th>IP</th>
							<th>Device Name</th>
							<th>Option</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>ORD001</td>
							<td>John Doe</td>
							<td><a href="mailto:johndoe@example.com">johndoe@example.com</a></td>
							<td>+1 123-456-7890</td>
							<td>123 Main St, New York, NY 10001</td>
							<td>12345</td>
							<td>2024-10-01</td>
							<td>10:30 AM</td>
							<td>192.168.1.1</td>
							<td>iPhone 14</td>
							<td class="delete-circle" >
								<button title="Delete"  >
									<img src="https://cdn-icons-png.flaticon.com/512/1828/1828843.png" alt="Delete">
								</button>
							</td>
						</tr>
						<tr>
							<td>ORD002</td>
							<td>Jane Smith</td>
							<td><a href="mailto:janesmith@example.com">janesmith@example.com</a></td>
							<td>+1 098-765-4321</td>
							<td>456 Oak St, Los Angeles, CA 90001</td>
							<td>12346</td>
							<td>2024-10-02</td>
							<td>11:15 AM</td>
							<td>192.168.1.2</td>
							<td>Samsung Galaxy S22</td>
																					<td class="delete-circle" >
								<button title="Delete"  >
    <img src="https://cdn-icons-png.flaticon.com/512/1828/1828843.png" alt="Delete">
</button>
							</td>
						</tr>
						<tr>
							<td>ORD003</td>
							<td>Michael Johnson</td>
							<td><a href="mailto:michaelj@example.com">michaelj@example.com</a></td>
							<td>+1 555-555-5555</td>
							<td>789 Pine St, Chicago, IL 60007</td>
							<td>12347</td>
							<td>2024-10-03</td>
							<td>1:00 PM</td>
							<td>192.168.1.3</td>
							<td>Google Pixel 7</td>
																					<td class="delete-circle" >
								<button title="Delete"  >
    <img src="https://cdn-icons-png.flaticon.com/512/1828/1828843.png" alt="Delete">
</button>
							</td>
						</tr>
						<tr>
							<td>ORD004</td>
							<td>Alice Green</td>
							<td><a href="mailto:alicegreen@example.com">alicegreen@example.com</a></td>
							<td>+1 234-567-8901</td>
							<td>101 Birch Rd, Miami, FL 33101</td>
							<td>12348</td>
							<td>2024-10-04</td>
							<td>2:45 PM</td>
							<td>192.168.1.4</td>
							<td>OnePlus 9</td>
																					<td class="delete-circle" >
								<button title="Delete"  >
    <img src="https://cdn-icons-png.flaticon.com/512/1828/1828843.png" alt="Delete">
</button>
							</td>
						</tr>
						<tr>
							<td>ORD005</td>
							<td>Emily Davis</td>
							<td><a href="mailto:emilydavis@example.com">emilydavis@example.com</a></td>
							<td>+1 456-789-0123</td>
							<td>202 Maple Ave, Dallas, TX 75201</td>
							<td>12349</td>
							<td>2024-10-05</td>
							<td>3:30 PM</td>
							<td>192.168.1.5</td>
							<td>iPad Pro</td>
																					<td class="delete-circle" >
								<button title="Delete"  >
    <img src="https://cdn-icons-png.flaticon.com/512/1828/1828843.png" alt="Delete">
</button>
							</td>
						</tr>
						<tr>
							<td>ORD006</td>
							<td>Robert Johnson</td>
							<td><a href="mailto:robertjohnson@example.com">robertjohnson@example.com</a></td>
							<td>+1 567-890-1234</td>
							<td>303 Cedar St, San Francisco, CA 94102</td>
							<td>12350</td>
							<td>2024-10-06</td>
							<td>4:00 PM</td>
							<td>192.168.1.6</td>
							<td>MacBook Pro</td>
																					<td class="delete-circle" >
								<button title="Delete"  >
    <img src="https://cdn-icons-png.flaticon.com/512/1828/1828843.png" alt="Delete">
</button>
							</td>
						</tr>
						<tr>
							<td>ORD007</td>
							<td>Linda Brown</td>
							<td><a href="mailto:lindabrown@example.com">lindabrown@example.com</a></td>
							<td>+1 678-901-2345</td>
							<td>404 Pine St, Seattle, WA 98101</td>
							<td>12351</td>
							<td>2024-10-07</td>
							<td>5:15 PM</td>
							<td>192.168.1.7</td>
							<td>Windows Laptop</td>
																					<td class="delete-circle" >
								<button title="Delete"  >
    <img src="https://cdn-icons-png.flaticon.com/512/1828/1828843.png" alt="Delete">
</button>
							</td>
							</td>
						</tr>
						<tr>
							<td>ORD008</td>
							<td>Daniel Wilson</td>
							<td><a href="mailto:danielwilson@example.com">danielwilson@example.com</a></td>
							<td>+1 789-012-3456</td>
							<td>505 Elm St, Boston, MA 02108</td>
							<td>12352</td>
							<td>2024-10-08</td>
							<td>6:00 PM</td>
							<td>192.168.1.8</td>
							<td>Surface Pro 8</td>						
							<td class="delete-circle" >
								<button title="Delete"  >
    <img src="https://cdn-icons-png.flaticon.com/512/1828/1828843.png" alt="Delete">
</button>
							</td>
						</tr>
						<tr>
							<td>ORD009</td>
							<td>Olivia Taylor</td>
							<td><a href="mailto:oliviataylor@example.com">oliviataylor@example.com</a></td>
							<td>+1 890-123-4567</td>
							<td>606 Oak Rd, Phoenix, AZ 85001</td>
							<td>12353</td>
							<td>2024-10-09</td>
							<td>7:30 PM</td>
							<td>192.168.1.9</td>
							<td>iPhone 13</td>		
							<td class="delete-circle" >
								<button title="Delete"  >
    <img src="https://cdn-icons-png.flaticon.com/512/1828/1828843.png" alt="Delete">
</button>
							</td>
						</tr>
						<tr>
							<td>ORD010</td>
							<td>James Anderson</td>
							<td><a href="mailto:jamesanderson@example.com">jamesanderson@example.com</a></td>
							<td>+1 901-234-5678</td>
							<td>707 Maple Ln, Denver, CO 80202</td>
							<td>12354</td>
							<td>2024-10-10</td>
							<td>8:15 PM</td>
							<td>192.168.1.10</td>
							<td>Huawei P40</td>
							<td class="delete-circle" >
								<button title="Delete"  >
    <img src="https://cdn-icons-png.flaticon.com/512/1828/1828843.png" alt="Delete">
</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
</asp:Content>
