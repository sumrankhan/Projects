<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="View_Statement.aspx.cs" Inherits="Admin_Panel.Statement.View_Statement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    <div class="content-container">
        <div class="statement-main-content">
            <div class="order-table-div most-selling-card-table horizontal-scroll min-h300">
                <h2>Outstanding Balance</h2>
                <table class="table-w-100">
                    <thead>
                        <tr>
                            <th>S.No</th>
                            <th>Document Name</th>
                            <th>Order Number</th>
                            <th>Period</th>
                            <th>Payment Date</th>
                            <th>Action</th>
                            <th>Status</th>
                            <th>Amount</th>
                        </tr>
                    </thead>
                    <tbody id="tableBody">
                        <!-- Data rows will be inserted here -->
                    </tbody>
                </table>
            </div>
              <div class="order-table-div most-selling-card-table horizontal-scroll ">
                  <h2>Invoice Summary</h2>
                  <table class="table-w-100 td-color">
                      <thead>
                          <tr>
                              <th>S.No</th>
                              <th>Document Name</th>
                              <th>Order Number</th>
                              <th>Period</th>
                              <th>Payment Date</th>
                              <th>Action</th>
                              <th>Status</th>
                              <th>Amount</th>
                          </tr>
                      </thead>
                  <tbody>
    <tr>
        <td>1</td>
        <td>Invoice #001</td>
        <td>ORD12345</td>
        <td>January 2024</td>
        <td>2024-01-15</td>
        <td><a class="accept-btn" href="Statement.aspx" target="_blank">View</a></td>
        <td>Paid</td>
        <td>$500.00</td>
    </tr>
    
    <tr>
        <td>2</td>
        <td>Invoice #002</td>
        <td>ORD12346</td>
        <td>February 2024</td>
        <td>2024-02-20</td>
        <td><a class="accept-btn" href="Statement.aspx" target="_blank">View</a></td>
        <td>Paid</td>
        <td>$750.00</td>
    </tr>
    <tr>
        <td>3</td>
        <td>Invoice #003</td>
        <td>ORD12347</td>
        <td>March 2024</td>
        <td>2024-03-10</td>
        <td><a class="accept-btn" href="Statement.aspx" target="_blank">View</a></td>
        <td>Paid</td>
        <td>$1200.00</td>
    </tr>
    <tr>
        <td>4</td>
        <td>Invoice #004</td>
        <td>ORD12348</td>
        <td>April 2024</td>
        <td>2024-04-05</td>
        <td><a class="accept-btn" href="Statement.aspx" target="_blank">View</a></td>
        <td>Paid</td>
        <td>$600.00</td>
    </tr>
    <tr>
        <td>5</td>
        <td>Invoice #005</td>
        <td>ORD12349</td>
        <td>May 2024</td>
        <td>2024-05-15</td>
        <td><a class="accept-btn" href="Statement.aspx" target="_blank">View</a></td>
        <td>Paid</td>
        <td>$450.00</td>
    </tr>
</tbody>

                  </table>
              </div>
        </div>
    </div>
    <script>
        // Example: Check if there's data in the table
        const tableBody = document.getElementById("tableBody");
        const data = []
        //const data = [{
        //    "sno": 1,
        //    "documentName": "Invoice #001",
        //    "orderNumber": "ORD12345",
        //    "period": "January 2024",
        //    "paymentDate": "2024-01-15",
        //    "action": "View",
        //    "status": "Paid",
        //    "amount": "$500.00"
        //}];

        if (data.length === 0) {
            const row = document.createElement("tr");
            const cell = document.createElement("td");
            cell.colSpan = 8; // Span across all columns
            cell.classList.add("no-data"); 
            cell.style.textAlign = "center"; // Centers the image horizontally
            cell.style.verticalAlign = "middle"; // Centers the image vertically
            cell.innerHTML = '<img src="../images/GIF/nice.gif" style="width: auto; height: 100px;"  />';
            row.appendChild(cell);
            tableBody.appendChild(row);
            // Add the message below the GIF
            const message = document.createElement("p");
            message.textContent = "You are all clear";
            message.style.fontSize = "14px"; // Optional: Style the text
            message.style.fontWeight = "italic"; // Optional: Make the text bold
            cell.appendChild(message); // Append the message to the cell

            row.appendChild(cell);
            tableBody.appendChild(row);
        } else {
            data.forEach(item => {
                const row = document.createElement("tr");
                row.innerHTML = `
            <td>${item.sno}</td>
            <td>${item.documentName}</td>
            <td>${item.orderNumber}</td>
            <td>${item.period}</td>
            <td>${item.paymentDate}</td>
            <td><button>${item.action}</button></td>
            <td>${item.status}</td>
            <td>${item.amount}</td>
        `;
                tableBody.appendChild(row);
            });
        }
    </script>
</asp:Content>
