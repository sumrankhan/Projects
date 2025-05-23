<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Statement.aspx.cs" Inherits="Admin_Panel.Statement.Statement" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sample Statement</title>
    <link href="../css/styles.css" rel="stylesheet" />
   
</head>
<body>
    <div class="statement-container">
        <div class="statement-main-content">
            <div class="order-table-div most-selling-card-table horizontal-scroll min-h300">
                <h3>Business Statement</h3>
                <p>The following invoices are included in your statement.</p>

                <p>This statement was issued on <span id="date" class="bold-font">November 2, 2024</span> based on the invoices below.</p>


                <div class="download-action-container">
                   
                    <button onclick="window.print()">Print this page</button>
                </div>
                 <table class="table-w-100">
                    <thead>
                        <tr>
                            <th>S.No#</th>
                            <th>Order ID</th>
                            <th>Customer Name</th>
                            <th>Date</th>
                            <th>Time</th>
                            <th>Commission %</th>
                            <th>Original Amount</th>
                            <th>Commission Amount (PKR)</th>
                            <th>Remarks</th>
                        </tr>
                    </thead>
                 <thead>
                <tbody id="tableBody">
                    <tr>
                        <td>1</td>
                        <td><a href="../Customers/Order_Invoice.aspx" target="_blank">ORD12345</a></td>
                        <td>John Doe</td>
                        <td>2024-11-22</td>
                        <td>14:30</td>
                        <td>10%</td>
                        <td>1000 USD</td>
                        <td>10,000 PKR</td>
                        <td>
                            <select>
                                <option value="completed">Completed</option>
                                <option value="pending">Pending</option>
                                <option value="canceled">Canceled</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><a href="../Customers/Order_Invoice.aspx" target="_blank">ORD12346</a></td>
                        <td>Jane Smith</td>
                        <td>2024-11-21</td>
                        <td>11:00</td>
                        <td>12%</td>
                        <td>1200 USD</td>
                        <td>12,500 PKR</td>
                        <td>
                            <select>
                                <option value="completed">Completed</option>
                                <option value="pending">Pending</option>
                                <option value="canceled">Canceled</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><a href="../Customers/Order_Invoice.aspx" target="_blank">ORD12347</a></td>
                        <td>Mike Johnson</td>
                        <td>2024-11-20</td>
                        <td>16:45</td>
                        <td>15%</td>
                        <td>1500 USD</td>
                        <td>15,000 PKR</td>
                        <td>
                            <select>
                                <option value="completed">Completed</option>
                                <option value="pending">Pending</option>
                                <option value="canceled">Canceled</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td><a href="../Customers/Order_Invoice.aspx" target="_blank">ORD12348</a></td>
                        <td>Alice Brown</td>
                        <td>2024-11-19</td>
                        <td>09:30</td>
                        <td>8%</td>
                        <td>800 USD</td>
                        <td>8,000 PKR</td>
                        <td>
                            <select>
                                <option value="completed">Completed</option>
                                <option value="pending">Pending</option>
                                <option value="canceled">Canceled</option>
                            </select>
                        </td>
                    </tr>
                </tbody>
                </table>
            </div>
              
        </div>
    </div>
</body>
</html>
