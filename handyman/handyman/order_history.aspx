<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="order_history.aspx.cs" Inherits="handyman.order_history" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
                 <style>
        .top-buttons {
            display: flex;
            justify-content: space-between;
            margin: 10px;
        }

        /* Scrollable, single-line navigation bar with mobile responsiveness */
        .nav-tabs {
            margin-top: 10px;
            overflow-x: auto;
            white-space: nowrap;
            display: flex;
            flex-wrap: nowrap;
            border-bottom: none; /* Remove bottom border */
        }
        .nav-tabs .nav-item {
            flex: 0 0 auto;
        }
        .nav-tabs .nav-link {
            padding: 10px;
            font-size: 14px;
        }

        /* Cards styling */
        .handyman-card {
            margin: 10px 0;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            display: none;
        }
        .handyman-card:target {
            display: block;
        }
        .status {
            font-weight: bold;
        }


        /* Responsive adjustments for mobile */
        @media (max-width: 576px) {
            .nav-tabs {
                font-size: 12px;
            }
        }
    </style>

    <div class="top-buttons"> 
        <a href="homepage.aspx" > <img src="icon/backarrow.png" /></a>
       <%-- <button class="btn btn-outline-primary" onclick="goBack()">Back</button>
        <button class="btn btn-outline-secondary" onclick="goHome()">Home</button>--%>
    </div>

     <ul class="nav nav-tabs" id="handymanNav" style="display:flex;">
        <li class="nav-item">
            <a class="nav-link active" href="#completed">Order Completed</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#in-progress">Order in Progress</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#cancelled">Cancelled</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#queue">Order in Queue</a>
        </li>
    </ul>

    <!-- Handyman Details Cards -->
    <div class="container">
        <!-- Completed Order -->
        <div class="card handyman-card" id="completed">
            <div class="row">
                <div class="col-md-4">
                    <img src="handyman1.jpg" class="img-fluid rounded" alt="John Doe">
                </div>
                <div class="col-md-8">
                    <h3 class="card-title">John Doe</h3>
                    <p class="card-text">Service: Plumbing Repair</p>
                    <p class="card-text">Scheduled Time: 03:00 PM, 12-10-2024</p>
                    <p class="card-text"><span class="status text-success">Order Status: Completed</span></p>
                </div>
            </div>
        </div>

        <!-- In Progress Order -->
        <div class="card handyman-card" id="in-progress">
            <div class="row">
                <div class="col-md-4">
                    <img src="handyman2.jpg" class="img-fluid rounded" alt="Jane Smith">
                </div>
                <div class="col-md-8">
                    <h3 class="card-title">Jane Smith</h3>
                    <p class="card-text">Service: Electrical Maintenance</p>
                    <p class="card-text">Scheduled Time: 01:00 PM, 12-11-2024</p>
                    <p class="card-text"><span class="status text-warning">Order Status: In Progress</span></p>
                </div>
            </div>
        </div>

        <!-- Cancelled Order -->
        <div class="card handyman-card" id="cancelled">
            <div class="row">
                <div class="col-md-4">
                    <img src="handyman3.jpg" class="img-fluid rounded" alt="Mike Brown">
                </div>
                <div class="col-md-8">
                    <h3 class="card-title">Mike Brown</h3>
                    <p class="card-text">Service: Furniture Assembly</p>
                    <p class="card-text">Scheduled Time: 10:00 AM, 12-12-2024</p>
                    <p class="card-text"><span class="status text-danger">Order Status: Cancelled</span></p>
                </div>
            </div>
        </div>

        <!-- Order in Queue -->
        <div class="card handyman-card" id="queue">
            <div class="row">
                <div class="col-md-4">
                    <img src="handyman4.jpg" class="img-fluid rounded" alt="Lisa White">
                </div>
                <div class="col-md-8">
                    <h3 class="card-title">Lisa White</h3>
                    <p class="card-text">Service: Painting Service</p>
                    <p class="card-text">Scheduled Time: 09:00 AM, 12-13-2024</p>
                    <p class="card-text"><span class="status text-primary">Order Status: In Queue</span></p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
