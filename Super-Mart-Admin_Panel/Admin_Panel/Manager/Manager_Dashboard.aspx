<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Manager_Dashboard.aspx.cs" Inherits="Admin_Panel.Manager.Manager_Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
    
<div class="content-container" id="mainContent">
        <header>
            <div class="breadcrumb">
                <h3>Manager Dashboard</h3>
                <div>
                    <asp:Label runat="server" Text="Home" />
                    <p>/</p>
                    <asp:Label runat="server" Text="Analytic" />
                </div>
            </div>
        </header>

        <div class="rider-main-content">
            <div class="highlights-top-row">
            <div class="sub-card">
                <div>
                    <h5>Total Orders </h5>
                    <span
                        class="round-bg-div">
                        <i class="fa-solid fa-truck"> </i>
                        </span>
                </div>
                <div class="trend-data-div">
                    <h3>52</h3>

                </div>
            </div>
            <!--  -->
             <div class="sub-card">
                <div>
                    <h5 style="font-size:smaller">To be Deliverd</h5>
                    <span class="round-bg-div">
                        <i class="fa-solid fa-dollar-sign"></i></span>
                </div>
                <div class="trend-data-div">
                    <h3>6</h3>

                </div>
            </div>
            <!--  -->
            <div class="sub-card">
                <div>
                    <h5>Delivered Orders</h5>
                    <span class="round-bg-div">
                        <i class="fa-solid fa-dollar-sign"></i></span>
                </div>
                <div class="trend-data-div">
                    <h3>46</h3>
                </div>
            </div>
          <!--  -->
            <div class="sub-card">
                <div>
                    <h5>Canceled Order </h5>
                    <span class="round-bg-div">
                        <i class="fa-solid fa-dollar-sign"></i></span>
                </div>
                <div class="trend-data-div">
                    <h3>5</h3>
                </div>
            </div>
        <!--  -->

            <div
                class="sub-card">
                <div>
                    <h5>Today's Earning </h5>
                    <span class="round-bg-div">
                        <i class="fa-solid fa-dollar-sign"></i></span>
                </div>
                <div class="trend-data-div">
                    <h3>PKR 42000</h3>

                </div>
            </div>
            <!--  -->
        </div>

            <div class="manager-dashboard-content">
                <div class="order-table-div most-selling-card-table horizontal-scroll">
                  <h3>New Orders</h3>
                  <table class="table-w-100">
                    <thead>
                      <tr>
                        <th>Order ID</th>
                        <th>Customer Name</th>
                        <th>Address</th>
                        <th>Phone</th>
                        <th>Time</th>
                        <th>Date</th>
                        <th>Status</th>
                        <th>View</th>
                        <th>Rider</th>  
                        <th>Action</th> 
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>#1001</td>
                        <td>John Doe</td>
                        <td>123 Elm St, Springfield, IL</td>
                        <td>(555) 123-4567</td>
                        <td>14:30</td>
                        <td>2024-11-18</td>
                        <td>Delivered</td>
                        <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td>
                        <td><a class="select-button" href="#popup1">Select</a></td>   
                        <td><button class="accept-btn">Accept</button></td>
                      </tr>
                      <tr>
                        <td>#1002</td>
                        <td>Jane Smith</td>
                        <td>456 Oak Ave, Portland, OR</td>
                        <td>(555) 987-6543</td>
                        <td>16:45</td>
                        <td>2024-11-18</td>
                        <td>Pending</td>
                        <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td>
                        <td><a class="select-button" href="#popup1">Select</a></td>   
                        <td><button class="accept-btn">Accept</button></td> 
                      </tr>
                      <tr>
                        <td>#1003</td>
                        <td>Michael Johnson</td>
                        <td>789 Pine Rd, Denver, CO</td>
                        <td>(555) 234-5678</td>
                        <td>11:00</td>
                        <td>2024-11-19</td>
                        <td>Shipped</td>
                        <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td>
                        <td><a class="select-button" href="#popup1">Select</a></td>   
                        <td><button class="accept-btn">Accept</button></td>
                      </tr>
                      <tr>
                        <td>#1004</td>
                        <td>Emily Davis</td>
                        <td>321 Maple Ln, Austin, TX</td>
                        <td>(555) 345-6789</td>
                        <td>13:15</td>
                        <td>2024-11-19</td>
                        <td>Delivered</td>
                        <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td>
                        <td><a class="select-button" href="#popup1">Select</a></td>   
                        <td><button class="accept-btn">Accept</button></td> 
                      </tr>
                      <tr>
                        <td>#1005</td>
                        <td>Daniel Lee</td>
                        <td>654 Birch Blvd, Miami, FL</td>
                        <td>(555) 567-8901</td>
                        <td>09:30</td>
                        <td>2024-11-20</td>
                        <td>Pending</td>
                        <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td>
                        <td><a class="select-button" href="#popup1">Select</a></td>   
                        <td><button class="accept-btn">Accept</button></td> 
                      </tr>
                    </tbody>
                  </table>
                    
                   <div id="popup1" class="overlay">
                    <div class="popup">
                        <h3>Available Riders</h3>
                        <a class="close" href="#">&times;</a>
                        <div class="content">
                            <!-- Search Bar -->
                            <div class="search-container">
                                <input 
                                    type="text" 
                                    id="riderSearch" 
                                    placeholder="Search riders by name or ID..." 
                                    class="search-input"
                                >
                            </div>
                            <div class="table-container">
                                <table class="table-w-100">
                                    <thead>
                                        <tr>
                                            <th>Select</th>
                                            <th>Rider ID</th>
                                            <th>Name</th>
                                        </tr>
                                    </thead>
                                   <tbody id="riderTableBody">
                                        <tr>
                                            <td><input type="radio" name="rider" value="101"></td>
                                            <td>101</td>
                                            <td>John Doe</td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="rider" value="102"></td>
                                            <td>102</td>
                                            <td>Jane Smith</td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="rider" value="103"></td>
                                            <td>103</td>
                                            <td>Michael Johnson</td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="rider" value="104"></td>
                                            <td>104</td>
                                            <td>Emily Davis</td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="rider" value="105"></td>
                                            <td>105</td>
                                            <td>Chris Brown</td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="rider" value="106"></td>
                                            <td>106</td>
                                            <td>Jessica Wilson</td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="rider" value="107"></td>
                                            <td>107</td>
                                            <td>David Garcia</td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="rider" value="108"></td>
                                            <td>108</td>
                                            <td>Sophia Martinez</td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="rider" value="109"></td>
                                            <td>109</td>
                                            <td>Daniel Lee</td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="rider" value="110"></td>
                                            <td>110</td>
                                            <td>Olivia Clark</td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="rider" value="111"></td>
                                            <td>111</td>
                                            <td>James White</td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="rider" value="112"></td>
                                            <td>112</td>
                                            <td>Ava Harris</td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="rider" value="113"></td>
                                            <td>113</td>
                                            <td>Ethan Walker</td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="rider" value="114"></td>
                                            <td>114</td>
                                            <td>Isabella Robinson</td>
                                        </tr>
                                        <tr>
                                            <td><input type="radio" name="rider" value="115"></td>
                                            <td>115</td>
                                            <td>Alexander Lewis</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="flex-center p-10">
                                <button class="save-btn closed">Done</button>
                            </div>
                        </div>
                    </div>
                </div>
                </div>

                <div class="order-table-div most-selling-card-table horizontal-scroll">
                    <h3>Pending For Delivery</h3>
                    <table class="table-w-100">
                        <thead>
                            <tr>
                            <th>Order ID</th>
                            <th>Customer Name</th>
                            <th>Address</th>
                            <th>Phone</th>
                            <th>Time</th>
                            <th>Date</th>
                            <th>Status</th>
                            <th>Rider ID</th>  <!-- New Rider column with specific rider names -->
                            <th>View</th>
                            <th>Action</th> <!-- New Action column -->
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                            <td>#1002</td>
                            <td>Jane Smith</td>
                            <td>456 Oak Ave, Portland, OR</td>
                            <td>(555) 987-6543</td>
                            <td>16:45</td>
                            <td>2024-11-18</td>
                            <td>Pending</td>
                            <td>R001</td>   <!-- Specific Rider Name -->
                            <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td>
                            <td><a class="select-button" href="#popup2">Select</a></td>   
                            </tr>
                            <tr>
                            <td>#1005</td>
                            <td>Daniel Lee</td>
                            <td>654 Birch Blvd, Miami, FL</td>
                            <td>(555) 567-8901</td>
                            <td>09:30</td>
                            <td>2024-11-20</td>
                            <td>Pending</td>
                            <td>R002</td>   <!-- Specific Rider Name -->
                            <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td>
                            <td><a class="select-button" href="#popup2">Select</a></td>   
                            </tr>
                        </tbody>
                    </table>
                    <div id="popup2" class="overlay">
                     <div class="popup">
                        <h3>Select Order Status</h3>
                        <a class="close" href="#">&times;</a>
                       <div class="content">
                        <!-- Radio Buttons for Delivered and Canceled -->
                        <div class="radio-group flex-div just-btw m-top-bottom-10">
                            <label>
                                <input type="radio" name="order-status" value="delivered" class="status-radio" id="delivered">
                                Delivered
                            </label>
                            <label>
                                <input type="radio" name="order-status" value="canceled" class="status-radio" id="canceled">
                                Canceled
                            </label>
                        </div>

                        <!-- Textarea for comments (Initially hidden) -->
                        <div class="comments-section " id="comments-section" style="display: none;">
                            <label for="comments">Please provide a reason for cancellation:</label><br>
                            <textarea  class="comment-txtarea-w100" id="comments" rows="4" cols="50" placeholder="Enter your comments here..."></textarea>
                        </div>

                        <!-- Done Button -->
                        <div class="flex-center p-10">
                            <button class="save-btn closed">Done</button>
                        </div>
                    </div>


                        </div>
                    </div>
                </div>
           
                <div class="order-table-div most-selling-card-table horizontal-scroll">
                    <h3>Delivered Orders</h3>
                    <table class="table-w-100">
                     <thead>
                       <tr>
                         <th>Order ID</th>
                         <th>Customer Name</th>
                         <th class="w-35 ">Address</th>
                         <th>Phone</th>
                         <th>Delivered Time</th>
                         <th>Date</th>
                         <th>Status</th>
                         <th>Rider ID</th>  
                         <th>Rider Name</th> 
                         <th>View</th>
                       </tr>
                     </thead>
                    <tbody>
                        <tr>
                        <td>ORD12345</td>
                        <td>John Doe</td>
                        <td class="w-35">123 Elm Street, Springfield, IL</td>
                        <td>(555) 123-4567</td>
                        <td>12:30 PM</td>
                        <td>2024-11-20</td>
                        <td>Delivered</td>
                        <td>RDR001</td>
                        <td>Jane Smith</td>
                        <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td>
                        </tr>
                        <tr>
                        <td>ORD12346</td>
                        <td>Mary Johnson</td>
                        <td class="w-35 ">456 Oak Avenue, Lincoln, NE</td>
                        <td>(555) 234-5678</td>
                        <td>1:45 PM</td>
                        <td>2024-11-20</td>
                        <td>Delivered</td>
                        <td>RDR002</td>
                        <td>Mark Lee</td>
                        <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td>
                        </tr>
                        <tr>
                        <td>ORD12347</td>
                        <td>David Brown</td>
                        <td class="w-35 ">789 Pine Street, Omaha, NE</td>
                        <td>(555) 345-6789</td>
                        <td>2:00 PM</td>
                        <td>2024-11-20</td>
                        <td>Delivered</td>
                        <td>RDR003</td>
                        <td>Emily Clark</td>
                        <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td>
                        </tr>
                        <tr>
                        <td>ORD12348</td>
                        <td>Sarah White</td>
                        <td class="w-35 ">321 Maple Drive, Aurora, CO</td>
                        <td>(555) 456-7890</td>
                        <td>3:15 PM</td>
                        <td>2024-11-20</td>
                        <td>Delivered</td>
                        <td>RDR004</td>
                        <td>Chris Johnson</td>
                        <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td>
                        </tr>
                        <tr>
                        <td>ORD12349</td>
                        <td>Michael Green</td>
                        <td class="w-35 ">654 Cedar Lane, Boulder, CO</td>
                        <td>(555) 567-8901</td>
                        <td>4:00 PM</td>
                        <td>2024-11-20</td>
                        <td>Delivered</td>
                        <td>RDR005</td>
                        <td>Amy Davis</td>
                        <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td>
                        </tr>
                    </tbody>

                 
                   </table>
                </div>

                <div class="order-table-div most-selling-card-table horizontal-scroll bg-color">
                  <h3>Canceled Orders</h3>
                    <table class="table-w-100">
                       <thead>
                         <tr>
                           <th>Order ID</th>
                           <th>Customer Name</th> <!-- Customer Name column -->
                           <th>Customer Number</th> <!-- Customer Number column -->
                           <th>Comments</th> <!-- Comments column -->
                           <th>View</th> <!-- View column -->
                         </tr>
                       </thead>
                       <tbody>
                         <tr>
                           <td>ORD54321</td>
                           <td>John Doe</td> <!-- Customer Name -->
                           <td>+1234567890</td> <!-- Customer Number -->
                           <td>Customer canceled due to delay.</td> <!-- Comments -->
                           <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td> <!-- View link -->
                         </tr>
                         <tr>
                           <td>ORD54322</td>
                           <td>Jane Smith</td> <!-- Customer Name -->
                           <td>+1987654321</td> <!-- Customer Number -->
                           <td>Incorrect address provided.</td> <!-- Comments -->
                           <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td> <!-- View link -->
                         </tr>
                         <tr>
                           <td>ORD54323</td>
                           <td>Michael Johnson</td> <!-- Customer Name -->
                           <td>+1122334455</td> <!-- Customer Number -->
                           <td>Order was duplicated.</td> <!-- Comments -->
                           <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td> <!-- View link -->
                         </tr>
                         <tr>
                           <td>ORD54324</td>
                           <td>Emily Brown</td> <!-- Customer Name -->
                           <td>+1223344556</td> <!-- Customer Number -->
                           <td>Customer changed their mind.</td> <!-- Comments -->
                           <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td> <!-- View link -->
                         </tr>
                         <tr>
                           <td>ORD54325</td>
                           <td>David Lee</td> <!-- Customer Name -->
                           <td>+1456789012</td> <!-- Customer Number -->
                           <td>Payment issue.</td> <!-- Comments -->
                           <td><a href="../Customers/Order_Invoice.aspx" target="_blank">Invoice</a></td> <!-- View link -->
                         </tr>
                       </tbody>
                    </table>

                </div>
            </div>
    </div>
</div>
    <%-- End of the Dashboard --%>
    <div class="dashboard-footer">
        <span>Powered By <a href="https://www.trivsmart.com/">Smart Tech Solution</a></span>
    </div>
 <script>
     document.getElementById('riderSearch').addEventListener('input', function () {
         const filter = this.value.toLowerCase();
         const rows = document.querySelectorAll('#riderTableBody tr');

         rows.forEach(row => {
             const id = row.cells[1].textContent.toLowerCase();
             const name = row.cells[2].textContent.toLowerCase();

             if (id.includes(filter) || name.includes(filter)) {
                 row.style.display = '';
             } else {
                 row.style.display = 'none';
             }
         });
     });

     // Function to toggle the visibility of the comments section
     function toggleCommentsSection() {
         // Get the radio buttons and comments section
         const canceledRadio = document.getElementById('canceled');
         const commentsSection = document.getElementById('comments-section');

         // Show or hide the comments section based on the selected radio button
         if (canceledRadio.checked) {
             commentsSection.style.display = 'block';  // Show textarea
             console.log('The order is canceled. Please provide a reason.');
         } else {
             commentsSection.style.display = 'none';  // Hide textarea
         }
     }
     console.log('hello')
     // Add event listeners to the radio buttons
     document.getElementById('canceled').addEventListener('click', toggleCommentsSection);
     document.getElementById('delivered').addEventListener('click', toggleCommentsSection);

 </script>
</asp:Content>
