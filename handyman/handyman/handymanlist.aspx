<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="handymanlist.aspx.cs" Inherits="handyman.handymanlist" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
    .card {
            border-radius: 15px;
            overflow: hidden;
            background-color: white;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }
        .card-header {
            background-color: #343a40;
            color: white;
            text-align: center;
            padding: 10px;
        }
        .card-header img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
        }
        .card-body {
            padding: 20px;
        }
        .card-body .title {
            font-size: 12px;
            font-weight: bold;
            margin-bottom: 5px;
            text-overflow:ellipsis;
            white-space:nowrap;
            overflow:hidden;
            width:100%
        }
        .card-body .rating {
            color: #f39c12;
            font-size: 10px;
            margin-bottom: 5px;
        }
        .card-body .experience {
            font-size: 10px;
            color: #6c757d;
        }
        .card-body .btn-hire {
            background-color: #0b8b60;
            color: white;
            font-weight: bold;
            border-radius: 50px;
            padding: 10px 20px;
            width: 100%;
            border: none;
            transition: all 0.3s;
        }
        .card-body .btn-hire:hover {
            background-color: #218838;
        }
    </style>
     <div class="navbar d-flex justify-content-between align-items-center " style="height:9vh;">
        <h1>Handyman List</h1>
         <div class="notification-icon"><img src="assets/img/bell.png" /></div>
    </div>
          <!-- Search Bar -->
    <div class="container">
        <input type="text" class="form-control search-bar" placeholder="Search">
    </div>

    <div class="container" style="overflow:auto; height:78vh">
     
    <div class="row">
        <div class="col-6">
            <div class="card">
                <div class="card-header">
       
                    <img src="assets/img/messages-3.jpg" alt="Handyman Photo">
                    <h5>John Doe</h5>
                </div>
                <div class="card-body">
                    <div class="title" >Plumbing & Electrical Expert</div>
                    <div class="rating">
                        <span>Rating: 4.5/5</span>
                    </div>
                    <div class="experience">Experience: 3 Years</div>
                    <asp:Button runat="server" ID="Button1" Text="Hire now" CssClass="btn-hire" PostBackUrl="~/Hirenow.aspx" />
                  
                </div>
            </div>
        </div>
        <div class="col-6">
            <div class="card">

                <div class="card-header">
                    <img src="assets/img/messages-3.jpg" alt="Handyman Photo">
                    <h5>Jane Smith</h5>
                </div>
                <div class="card-body">
                    <div class="title">Carpentry & Furniture</div>
                    <div class="rating">
                        <span>Rating: 4.2/5</span>
                    </div>
                    <div class="experience">Experience: 2 Years</div>
                    <asp:Button runat="server" ID="Button2" Text="Hire now" CssClass="btn-hire" PostBackUrl="~/Hirenow.aspx" />
                </div>
            </div>
        </div> <div class="col-6">
            <div class="card">

                <div class="card-header">
                    <img src="assets/img/messages-3.jpg" alt="Handyman Photo">
                    <h5>Jane Smith</h5>
                </div>
                <div class="card-body">
                    <div class="title">Carpentry & Furniture</div>
                    <div class="rating">
                        <span>Rating: 4.2/5</span>
                    </div>
                    <div class="experience">Experience: 2 Years</div>
                    <asp:Button runat="server" ID="Button3" Text="Hire now" CssClass="btn-hire" PostBackUrl="~/Hirenow.aspx" />
                </div>
            </div>
        </div> <div class="col-6">
            <div class="card">

                <div class="card-header">
                    <img src="assets/img/messages-3.jpg" alt="Handyman Photo">
                    <h5>Jane Smith</h5>
                </div>
                <div class="card-body">
                    <div class="title">Carpentry & Furniture</div>
                    <div class="rating">
                        <span>Rating: 4.2/5</span>
                    </div>
                    <div class="experience">Experience: 2 Years</div>
                    <asp:Button runat="server" ID="Button4" Text="Hire now" CssClass="btn-hire" PostBackUrl="~/Hirenow.aspx" />
                </div>
            </div>
        </div> <div class="col-6">
            <div class="card">

                <div class="card-header">
                    <img src="assets/img/messages-3.jpg" alt="Handyman Photo">
                    <h5>Jane Smith</h5>
                </div>
                <div class="card-body">
                    <div class="title">Carpentry & Furniture</div>
                    <div class="rating">
                        <span>Rating: 4.2/5</span>
                    </div>
                    <div class="experience">Experience: 2 Years</div>
                    <asp:Button runat="server" ID="Button5" Text="Hire now" CssClass="btn-hire" PostBackUrl="~/Hirenow.aspx" />
                </div>
            </div>
        </div> <div class="col-6">
            <div class="card">

                <div class="card-header">
                    <img src="assets/img/messages-3.jpg" alt="Handyman Photo">
                    <h5>Jane Smith</h5>
                </div>
                <div class="card-body">
                    <div class="title">Carpentry & Furniture</div>
                    <div class="rating">
                        <span>Rating: 4.2/5</span>
                    </div>
                    <div class="experience">Experience: 2 Years</div>
                    <asp:Button runat="server" ID="Button6" Text="Hire now" CssClass="btn-hire" PostBackUrl="~/Hirenow.aspx" />
                </div>
            </div>
        </div> <div class="col-6">
            <div class="card">

                <div class="card-header">
                    <img src="assets/img/messages-3.jpg" alt="Handyman Photo">
                    <h5>Jane Smith</h5>
                </div>
                <div class="card-body">
                    <div class="title">Carpentry & Furniture</div>
                    <div class="rating">
                        <span>Rating: 4.2/5</span>
                    </div>
                    <div class="experience">Experience: 2 Years</div>
                    <asp:Button runat="server" ID="Button7" Text="Hire now" CssClass="btn-hire" PostBackUrl="~/Hirenow.aspx" />
                </div>
            </div>
        </div> <div class="col-6">
            <div class="card">

                <div class="card-header">
                    <img src="assets/img/messages-3.jpg" alt="Handyman Photo">
                    <h5>Jane Smith</h5>
                </div>
                <div class="card-body">
                    <div class="title">Carpentry & Furniture</div>
                    <div class="rating">
                        <span>Rating: 4.2/5</span>
                    </div>
                    <div class="experience">Experience: 2 Years</div>
                    <asp:Button runat="server" ID="Button8" Text="Hire now" CssClass="btn-hire" PostBackUrl="~/Hirenow.aspx" />
                </div>
            </div>
        </div>
    </div>
</div>
    <script>
  document.getElementById("hireNowButton").addEventListener("click", function() {
    window.location.href = "Hirenow.aspx";
  });
</script>
</asp:Content>
