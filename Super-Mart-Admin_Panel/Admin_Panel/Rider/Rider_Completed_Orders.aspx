<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Rider_Completed_Orders.aspx.cs" Inherits="Admin_Panel.Rider.Rider_Completed_Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
        	<div class="order-table card merge-row">
			<div class="top-row-sales">
				<h3>
					Completed Orders
				</h3>

				<div>
					<p>Total Completed Order: <span>5</span></p>
					
				</div>
			</div>
			<div class="order-table-div most-selling-card-table horizontal-scroll">
				<table class="table-w-100">
                    <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Customer Name</th>
                            <th>Order Date</th>
                            <th>Order Time</th>
                            <th>Completion Date</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>ORD001</td>
                            <td>John Doe</td>
                            <td>2024-10-01</td>
                            <td>10:30 AM</td>
                            <td>2024-10-01</td>
                            <td>Completed</td>
                        </tr>
                        <tr>
                            <td>ORD003</td>
                            <td>Michael Johnson</td>
                            <td>2024-10-03</td>
                            <td>1:00 PM</td>
                            <td>2024-10-03</td>
                            <td>Completed</td>
                        </tr>
                        <tr>
                            <td>ORD005</td>
                            <td>Emily Davis</td>
                            <td>2024-10-05</td>
                            <td>3:30 PM</td>
                            <td>2024-10-05</td>
                            <td>Completed</td>
                        </tr>
                        <tr>
                            <td>ORD007</td>
                            <td>Linda Brown</td>
                            <td>2024-10-07</td>
                            <td>5:15 PM</td>
                            <td>2024-10-07</td>
                            <td>Completed</td>
                        </tr>
                        <tr>
                            <td>ORD009</td>
                            <td>Olivia Taylor</td>
                            <td>2024-10-09</td>
                            <td>7:30 PM</td>
                            <td>2024-10-09</td>
                            <td>Completed</td>
                        </tr>
                    </tbody>
                </table>
			</div>
		</div>
</asp:Content>
