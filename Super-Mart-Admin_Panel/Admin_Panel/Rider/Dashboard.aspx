<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Admin_Panel.Rider.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">
        <div class="content-container" id="mainContent">
            <header>
                <div class="breadcrumb">
                    <h3>Rider Dashboard</h3>
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
                        <h5>Deliveries Today </h5>
                        <span
                            class="round-bg-div">
                            <i class="fa-solid fa-truck"> </i>
                            </span>
                    </div>
                    <div class="trend-data-div">
                        <h3>15</h3>

                    </div>
                </div>
                <!--  -->
                <div
                    class="sub-card">
                    <div>
                        <h5>Total Deliveries
                        </h5>
                        <span
                            class="round-bg-div">
                            <i class="fa-solid fa-truck">
                            </i></span>
                    </div>
                    <div class="trend-data-div">
                        <h3>232</h3>

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
                        <h3>$420.00</h3>

                    </div>
                </div>
                <!--  -->
                <div class="sub-card">
                    <div>
                        <h5>Total Earning </h5>
                        <span class="round-bg-div">
                            <i class="fa-solid fa-dollar-sign"></i></span>
                    </div>
                    <div class="trend-data-div">
                        <h3>$1560</h3>
                    </div>
                </div>
            </div>
                <div class="flex-div just-btw">
                    <h3 class="p-lt-18">Your Orders</h3>
                    <div ><a href="Rider_Completed_Orders.aspx" class="accept-btn">View History</a></div>
                </div>
                <div class="rider-dashboard-content">
                    <div class="rider-order-card">
                        <div>
                            <p>Order ID: </p>
                            <h3>OR12</h3>
                        </div>
                        <div>
                            <p>Mart: </p>
                            <h3>Mart 17</h3>
                        </div> 
                        <div>
                            <p>Total Amount: </p>
                            <h3>PKR 5540</h3>
                        </div>
                        <div>
                            <p>Delivery Address: </p>
                            <h3>h#12 s#23 block#4R phase#12 D17 Isl</h3>
                        </div>
                       
                        <div class="rider-card-action-div">
                            <div><a href="Rider_View_Order.aspx">Return</a></div>
                            <div><button>Delivered</button></div>
                        </div>
                    </div>
                    <div class="rider-order-card">
                        <div>
                            <p>Order ID: </p>
                            <h3>OR12</h3>
                        </div>
                        <div>
                            <p>Mart: </p>
                            <h3>Mart 17</h3>
                        </div> 
                        <div>
                            <p>Total Amount: </p>
                            <h3>PKR 5540</h3>
                        </div>
                        <div>
                            <p>Delivery Address: </p>
                            <h3>h#12 s#23 block#4R phase#12 D17 Isl</h3>
                        </div>
                       
                        <div class="rider-card-action-div">
                            <div><a href="Rider_View_Order.aspx">Return</a></div>
                            <div><button>Delivered</button></div>
                        </div>
                    </div>
                    <div class="rider-order-card">
                        <div>
                            <p>Order ID: </p>
                            <h3>OR12</h3>
                        </div>
                        <div>
                            <p>Mart: </p>
                            <h3>Mart 17</h3>
                        </div> 
                        <div>
                            <p>Total Amount: </p>
                            <h3>PKR 5540</h3>
                        </div>
                        <div>
                            <p>Delivery Address: </p>
                            <h3>h#12 s#23 block#4R phase#12 D17 Isl</h3>
                        </div>
                       
                        <div class="rider-card-action-div">
                            <div><a href="Rider_View_Order.aspx">Return</a></div>
                            <div><button>Delivered</button></div>
                        </div>
                    </div>
                    <div class="rider-order-card">
                        <div>
                            <p>Order ID: </p>
                            <h3>OR12</h3>
                        </div>
                        <div>
                            <p>Mart: </p>
                            <h3>Mart 17</h3>
                        </div> 
                        <div>
                            <p>Total Amount: </p>
                            <h3>PKR 5540</h3>
                        </div>
                        <div>
                            <p>Delivery Address: </p>
                            <h3>h#12 s#23 block#4R phase#12 D17 Isl</h3>
                        </div>
                       
                        <div class="rider-card-action-div">
                            <div><a href="Rider_View_Order.aspx">Return</a></div>
                            <div><button>Delivered</button></div>
                        </div>
                    </div>
                    <div class="rider-order-card">
                        <div>
                            <p>Order ID: </p>
                            <h3>OR12</h3>
                        </div>
                        <div>
                            <p>Mart: </p>
                            <h3>Mart 17</h3>
                        </div> 
                        <div>
                            <p>Total Amount: </p>
                            <h3>PKR 5540</h3>
                        </div>
                        <div>
                            <p>Delivery Address: </p>
                            <h3>h#12 s#23 block#4R phase#12 D17 Isl</h3>
                        </div>
                       
                        <div class="rider-card-action-div">
                            <div><a href="Rider_View_Order.aspx">Return</a></div>
                            <div><button>Delivered</button></div>
                        </div>
                    </div>
                    <div class="rider-order-card">
                        <div>
                            <p>Order ID: </p>
                            <h3>OR12</h3>
                        </div>
                        <div>
                            <p>Mart: </p>
                            <h3>Mart 17</h3>
                        </div> 
                        <div>
                            <p>Total Amount: </p>
                            <h3>PKR 5540</h3>
                        </div>
                        <div>
                            <p>Delivery Address: </p>
                            <h3>h#12 s#23 block#4R phase#12 D17 Isl</h3>
                        </div>
                       
                        <div class="rider-card-action-div">
                            <div><a href="Rider_View_Order.aspx">Return</a></div>
                            <div><button>Delivered</button></div>
                        </div>
                    </div>
                    <div class="rider-order-card">
                        <div>
                            <p>Order ID: </p>
                            <h3>OR12</h3>
                        </div>
                        <div>
                            <p>Mart: </p>
                            <h3>Mart 17</h3>
                        </div> 
                        <div>
                            <p>Total Amount: </p>
                            <h3>PKR 5540</h3>
                        </div>
                        <div>
                            <p>Delivery Address: </p>
                            <h3>h#12 s#23 block#4R phase#12 D17 Isl</h3>
                        </div>
                       
                        <div class="rider-card-action-div">
                            <div><a href="Rider_View_Order.aspx">Return</a></div>
                            <div><button>Delivered</button></div>
                        </div>
                    </div>
                    <div class="rider-order-card">
                        <div>
                            <p>Order ID: </p>
                            <h3>OR12</h3>
                        </div>
                        <div>
                            <p>Mart: </p>
                            <h3>Mart 17</h3>
                        </div> 
                        <div>
                            <p>Total Amount: </p>
                            <h3>PKR 5540</h3>
                        </div>
                        <div>
                            <p>Delivery Address: </p>
                            <h3>h#12 s#23 block#4R phase#12 D17 Isl</h3>
                        </div>
                       
                        <div class="rider-card-action-div">
                            <div><a href="Rider_View_Order.aspx">Return</a></div>
                            <div><button>Delivered</button></div>
                        </div>
                    </div>
                    <div class="rider-order-card">
                        <div>
                            <p>Order ID: </p>
                            <h3>OR12</h3>
                        </div>
                        <div>
                            <p>Mart: </p>
                            <h3>Mart 17</h3>
                        </div> 
                        <div>
                            <p>Total Amount: </p>
                            <h3>PKR 5540</h3>
                        </div>
                        <div>
                            <p>Delivery Address: </p>
                            <h3>h#12 s#23 block#4R phase#12 D17 Isl</h3>
                        </div>
                       
                        <div class="rider-card-action-div">
                            <div><a href="Rider_View_Order.aspx">Return</a></div>
                            <div><button>Delivered</button></div>
                        </div>
                    </div>
                    <div class="rider-order-card">
                        <div>
                            <p>Order ID: </p>
                            <h3>OR12</h3>
                        </div>
                        <div>
                            <p>Mart: </p>
                            <h3>Mart 17</h3>
                        </div> 
                        <div>
                            <p>Total Amount: </p>
                            <h3>PKR 5540</h3>
                        </div>
                        <div>
                            <p>Delivery Address: </p>
                            <h3>h#12 s#23 block#4R phase#12 D17 Isl</h3>
                        </div>
                       
                        <div class="rider-card-action-div">
                            <div><a href="Rider_View_Order.aspx">Return</a></div>
                            <div><button>Delivered</button></div>
                        </div>
                    </div>
                    
                </div>



    </div>
        <%-- End of the Dashboard --%>
        <div class="dashboard-footer">
            <span>Powered By <a href="https://www.trivsmart.com/">Smart Tech Solution</a></span>
        </div>
        </div>
</asp:Content>
