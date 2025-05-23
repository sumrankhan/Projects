<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="handyman.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <style>
    /* Base Styles */

    .filters {
      display: flex;
      gap: 8px;
      overflow-x: auto;
      padding-bottom: 10px;
      margin-bottom: 20px;
      margin-top:10px;
    }

    .filter-btn {
      padding: 8px 12px;
      border-radius: 20px;
      border: 1px solid #0b8b60;
      color: #0b8b60;
      font-weight: bold;
      cursor: pointer;
      white-space: nowrap;
      transition: background-color 0.3s, color 0.3s;
      font-size: 14px;
    }

    .filter-btn.active, .filter-btn:hover {
      background-color: #0b8b60;
      color: white;
    }

    .card {
      display: flex;
      align-items: center;
      background-color: #ffffff; /* Pure white card background */
      padding: 15px;
      border-radius: 10px;
      margin-bottom: 15px;
      box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); /* Box shadow */
flex-direction:row;
      width: 100%;
    }

    .bookingimg {
       width: 50px;
  height: 50px;
  border-radius: 50%;
  object-fit: cover;
    

    }

    .card-content {
      flex: 1;
      margin-left:10px;
      
    }

    .card-name {
      font-size: 14px;
      font-weight: bold;
      color: #333;
      margin-bottom:0px;
    }

    .booking-title {
      font-size: 13px;
      color: #666;
      margin: 5px 0;
    }

    .card-description {
      font-size: 12px;
      color: #777;
      margin: 5px 0;
    }

    .card-duration {
      font-size: 12px;
      color: #555;
    }

    .status-button {
      font-size: 12px;
      color: #fff;
      background-color: #0b8b60;
      padding: 5px 10px;
      border-radius: 5px;
      cursor: pointer;
      border: none;
      position: absolute;
      right: 7px;
      top: 50%;
      transform: translateY(-50%);
    }

    /* Mobile Styles */
    @media (max-width: 480px) {
      .filters {
        gap: 10px;
      }

      .filter-btn {
        padding: 6px 10px;
        font-size: 12px;
      }

      .card {
        padding: 10px;
        width: 100%;
      }

      .bookingimg {
        width: 45px;
        height: 45px;
       
      }

      .card-name {
        font-size: 13px;
        margin-bottom:0px;
      }

      .booking-title {
        font-size: 12px;
      }

      .card-description, .card-duration {
        font-size: 11px;
      }

      .status-button {
        font-size: 11px;
        padding: 4px 8px;
      }
    }
  </style>
    <div class="navbar d-flex justify-content-between align-items-center">
       <h1>Booking</h1>
       <div class="notification-icon"><img src="assets/img/bell.png" /></div>
   </div>
      <!-- Search Bar -->
<div class="container">
    <input type="text" class="form-control search-bar" placeholder="Search">
</div>

<div class="container">
  
  <div class="filters">
    <div class="filter-btn active">All</div>
    <div class="filter-btn">Completed</div>
    <div class="filter-btn">In Progress</div>
    <div class="filter-btn">Cancelled</div>
  </div>
  
  <div class="card">
      <div> <img src="assets/img/messages-3.jpg" alt="Profile" class="bookingimg"></div>
    <div class="card-content">
      <p class="card-name">Jenny Wilson</p>
      <p class="booking-title">House Cleaning</p>
      <p class="card-description">Professional cleaning services for home.</p>
      <p class="card-duration">Duration: 3 days from 2024-01-01 to 2024-01-04</p>
    </div>
      <div><button class="status-button">Status</button></div>
  </div>

  <div class="card">
     <img src="assets/img/messages-3.jpg" alt="Profile" class="bookingimg">
    <div class="card-content">
      <p class="card-name">Rayford Chenail</p>
      <p class="booking-title">AC Repairing</p>
      <p class="card-description">Expert AC repair services for all types of air <br />conditioners.</p>
      <p class="card-duration">Duration: 1 day on 2024-02-15</p>
    </div>
    <button class="status-button">Status</button>
  </div>

  <div class="card">
     <img src="assets/img/messages-3.jpg" alt="Profile" class="bookingimg">
    <div class="card-content">
      <p class="card-name">Janetta Rotolo</p>
      <p class="booking-title">Laundry Services</p>
      <p class="card-description">Quick and affordable laundry services.</p>
      <p class="card-duration">Duration: 2 days from 2024-03-10 to 2024-03-12</p>
    </div>
    <button class="status-button">Status</button>
  </div>

  <div class="card">
    <img src="assets/img/messages-3.jpg" alt="Profile" class="bookingimg">
    <div class="card-content">
      <p class="card-name">Freida Varnes</p>
      <p class="booking-title">Motorcycle Repairing</p>
      <p class="card-description">Efficient and affordable services.</p>
      <p class="card-duration">Duration: 4 days from 2024-04-05 to 2024-04-09</p>
    </div>
    <button class="status-button">Status</button>
  </div>
    <div class="card"></div>
</div>





</asp:Content>
