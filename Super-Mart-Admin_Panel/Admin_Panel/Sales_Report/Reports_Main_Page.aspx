<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Reports_Main_Page.aspx.cs" Inherits="Admin_Panel.Sales_Report.Reports_Main_Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <script src="../script.js"></script>
 
  <div class="content-container" >
     <div class="m-lt-6 w-90">
  <!-- div to write your content -->
  <div class="reports-landing-page">
    <h3 class="page-title">Reports Dashboard</h3>
    <div class="reports-container">
      <!-- Report Card 1: Overall Sales Report -->
      <div class="report-card" onclick="window.open('Total_Sales_Report.aspx', '_blank')">
          <h2>1- Overall Sales Report</h2>
          <p>Shows overall sales over a specific period.</p>
        </div>

      <!-- Report Card 2: Top Product Sales Report -->
<div class="report-card" onclick="window.open('Sales_By_Top_Product_Report.aspx', '_blank')">
  <h2>2- Top Product Sales Report</h2>
  <p>Breaks down sales by top sold products.</p>
</div>

<!-- Report Card 3: Sales by Category Report -->
<div class="report-card" onclick="window.open('Sales_By_Category_Report.aspx', '_blank')">
  <h2>3- Sales by Category Report</h2>
  <p>Summarizes sales by product categories.</p>
</div>

<!-- Report Card 4: Product Sales Report -->
<div class="report-card" onclick="window.open('Sales_By_Specific_Product_Report.aspx', '_blank')">
  <h2>4- Product Sales Report</h2>
  <p>Breaks down sales for specific products.</p>
</div>

<!-- Report Card 5: Orders Report -->
<div class="report-card" onclick="window.open('Orders_Report.aspx', '_blank')">
  <h2>5- Orders Report</h2>
  <p>Summarizes order history.</p>
</div>

<!-- Report Card 6: Category-wise Sales Report -->
<div class="report-card" onclick="window.open('Sales_By_Specific_Category_Report.aspx', '_blank')">
  <h2>6- Category-wise Sales Report</h2>
  <p>Summarizes sales by product categories.</p>
</div>

<!-- Report Card 7: Sales by Customer Report -->
<div class="report-card" onclick="window.open('Sales_By_Customer_Report.aspx', '_blank')">
  <h2>7- Sales by Customer Report</h2>
  <p>Provides sales data based on customer segments.</p>
</div>

<!-- Report Card 8: Sales by Region Report -->
<div class="report-card" onclick="window.open('Sales_By_Region_Report.aspx', '_blank')">
  <h2>8- Sales by Region Report</h2>
  <p>Breaks down sales by geographic location.</p>
</div>

<!-- Report Card 9: Daily/Weekly/Monthly Sales Trend Report -->
<div class="report-card" onclick="window.open('Daily_Weekly_Monthly_Sales_Report.aspx', '_blank')">
  <h2>9- Daily/Weekly/Monthly Sales Trend Report</h2>
  <p>Visualizes sales trends over time.</p>
</div>

<!-- Report Card 10: Abandoned Cart Report -->
<div class="report-card" onclick="window.open('Abondoned_Cart_Report.aspx', '_blank')">
  <h2>10- Abandoned Cart Report</h2>
  <p>Shows potential sales lost due to abandoned carts.</p>
</div>

<!-- Report Card 11: Returns and Refunds Report -->
<div class="report-card" onclick="window.open('Returns_Refunds_Report.aspx', '_blank')">
  <h2>11- Returns and Refunds Report</h2>
  <p>Tracks the number of returns and refunds with reasons.</p>
</div>

<!-- Report Card 12: Profit Margin Report -->
<div class="report-card" onclick="window.open('Profit_margin_report.aspx', '_blank')">
  <h2>12- Profit Margin Report</h2>
  <p>Shows profit margins for individual products or overall.</p>
</div>

<!-- Report Card 13: Discounts and Coupons Usage Report -->
<div class="report-card" onclick="window.open('Discount_Coupon_Report.aspx', '_blank')">
  <h2>13- Discounts and Coupons Usage Report</h2>
  <p>Analyzes the impact of discounts on sales.</p>
</div>

<!-- Report Card 14: Conversion Rate Report -->
<div class="report-card" onclick="window.open('Conversion_Rate_Report.aspx', '_blank')">
  <h2>14- Conversion Rate Report</h2>
  <p>Measures the percentage of visitors who made a purchase.</p>
</div>

<!-- Report Card 15: Payment Method Report -->
<div class="report-card" onclick="window.open('Payment_Method_Report.aspx', '_blank')">
  <h2>15- Payment Method Report</h2>
  <p>Shows commonly used payment methods.</p>
</div>

<!-- Report Card 16: Inventory and Stock Report -->
<div class="report-card" onclick="window.open('Inventory_Stock_Report.aspx', '_blank')">
  <h2>16- Inventory and Stock Report</h2>
  <p>Monitors stock levels in relation to sales.</p>
</div>

<!-- Report Card 17: Sales by Channel Report -->
<div class="report-card" onclick="window.open('Sales_By_Channel_Report.aspx', '_blank')">
  <h2>17- Sales by Channel Report</h2>
  <p>Breaks down sales by different sales channels.</p>
</div>

<!-- Report Card 18: Customer Lifetime Value (CLV) Report -->
<div class="report-card" onclick="window.open('Customer_Lifetime_Value_Report.aspx', '_blank')">
  <h2>18- Customer Lifetime Value (CLV) Report</h2>
  <p>Calculates long-term customer value.</p>
</div>

    </div>
  </div>
</div>

   </div>
    
</asp:Content>
 