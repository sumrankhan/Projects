<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order_Invoice.aspx.cs" Inherits="Admin_Panel.Customers.Order_Invoice" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">
    <title></title>
    <link href="../css/styles.css"
        rel="stylesheet" />
</head>
<body>
  <div class="body">
  <div class="mainclass">
    <!-- Main content --> 
    <div class="Customer-invoice-main-heading">
        <div class="watermark">
            <h1>Delivered</h1>
        </div>
        <h2>Invoice No: order12570</h2>
        <div class="invoice-print-option">
            <a href="../Customers/Order_Invoice.aspx" class="save-btn">Print A4</a>
            <a  href="../Customers/Thermal_Recipt.aspx" class="save-btn">Thermal Recipt</a>
        </div>
    </div>
    <div class="customer-invoice-section">
      <div class="customer-invoice-left-panel">
        <div class="customer-invoice-details">
          <div class="customer-invoice-img-container">
            <img  src="../images/logo.png" width="250" alt="company logo" />
          </div>
          <ul class="customer-invoice-address">
            <li>Packages Mall, Main Walton Rd, Nishtar Town</li>
            <li>Contact us: 080049737</li>
            <li>direction-communication-groupe@carrefour.com</li>
          </ul>
        </div>
        <div class="customer-invoice-bill">
          <div class="customer-invoice-billed-to-section">
            <div class="customer-invoice-number-section">
              <h3>Invoice Number</h3>
              <div class="customer-invoice-number">
                <p>AG 2541420</p>
                <p>Issued Date: 10 Apr 2022</p>
                <p>Due Date: 20 Apr 2022</p>
              </div>
            </div>
            <div class="customer-invoice-billed-to">
              <h3>Billed to</h3>
              <p>Sajib Rahman</p>
              <p>3471 Rainy Day Drive</p>
              <p>Needham, MA 02192</p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Item Details -->
    <div class="customer-invoice-item-details">
      <h3 class="customer-invoice-heading">Item Details</h3>
      <h5 class="customer-invoice-heading-detail">Detailed items with more info</h5>
      <div class="customer-table-div ">
    <table class="customer-invoice-table">
  <thead>
    <tr>
      <th class="customer-invoice-srno">Sr. No.</th>
      <th class="customer-invoice-items">Item</th>
      <th class="customer-invoice-qty">Quantity</th>
      <th class="customer-invoice-rate">Rate</th>
      <th class="customer-invoice-discount">Discount</th>
      <th class="customer-invoice-gst">GST (5%)</th>
      <th class="customer-invoice-amount">Amount</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="srno">1</td>
      <td class="items">Laptop</td>
      <td>1</td>
      <td>$45,000</td>
      <td>$0.00</td> <!-- No discount for the laptop -->
      <td>$2,250</td> <!-- 5% GST on the laptop -->
      <td>$45,000</td>
    </tr>
    <tr>
      <td class="srno">2</td>
      <td class="items">Wireless Mouse</td>
      <td>2</td>
      <td>$1,200</td>
      <td>$0.00</td> <!-- No discount for the wireless mouse -->
      <td>$120</td> <!-- 5% GST on the wireless mouse -->
      <td>$2,400</td>
    </tr>
    <tr>
      <td class="srno">3</td>
      <td class="items">Keyboard</td>
      <td>1</td>
      <td>$2,500</td>
      <td>$0.00</td> <!-- No discount for the keyboard -->
      <td>$125</td> <!-- 5% GST on the keyboard -->
      <td>$2,500</td>
    </tr>
    <tr>
      <td class="srno">4</td>
      <td class="items">USB Cable</td>
      <td>3</td>
      <td>$300</td>
      <td>$0.00</td> <!-- No discount for the USB cables -->
      <td>$45</td> <!-- 5% GST on the USB cables -->
      <td>$900</td>
    </tr>
  </tbody>
  <tfoot>
    <tr></tr>
    <tr></tr>
    <tr>
      <td colspan="5"></td>
      <td><strong>Total Discount</strong></td>
      <td><strong>$0.00</strong></td>
    </tr>
    <tr>
      <td colspan="5"></td>
      <td><strong>Total GST (5%)</strong></td>
      <td><strong>$2,540</strong></td>
    </tr>
    <tr>
      <td colspan="5"></td>
      <td><strong>Total Amount</strong></td>
      <td><strong>$53,840</strong></td>
    </tr>
  </tfoot>
</table>



      </div>
    </div>
  </div>
</div>

</body>
</html>
