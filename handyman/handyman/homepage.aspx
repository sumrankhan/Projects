<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="handyman.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>

        .container {
            width: 100%;
            margin: auto;
            padding: 20px;
        }

        /* Special Offers Card */
        .special-offers {
            background: linear-gradient(135deg, #a867db, #7928ca);
            color: #fff;
            border-radius: 15px;
            padding: 20px;
            display: flex;
            align-items: center;
            margin-bottom: 20px;
            position: relative;
            height: 145px;
        }

        .special-offers img {
            width: 135px;
            height: 150px;
/*            border-radius: 50%;*/
            object-fit: cover;
/*            margin-right: 15px;*/
        }

        .special-offers-text {
            flex: 1;
        }

        .special-offers-text p {
            margin: 5px 0 0;
            font-size: 12px;
        }

        /* Services Section */
        .services {
            background-color: #fff;
            border-radius: 15px;
            padding: 2px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .services h3 {
            display: flex;
            justify-content: space-between;
            font-size: 18px;
            color: #333;
        }

        .service-icons {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 15px;
            margin-top: 15px;
        }

        .service-icon {
            text-align: center;
            flex: 1 1 20%;
            max-width: 80px;
        }

        .service-icon i {
            font-size: 24px;
            color: white;
            padding: 10px;
            border-radius: 50%;
            background-color: #9b59b6; /* Default color */
            margin-bottom: 5px;
            display: inline-block;
        }
        .service-icon.cleaning i { background-color: #730cf5; }
        .service-icon.repairing i { background-color: #fc9001; }
        .service-icon.painting i { background-color: #239fe6; }
        .service-icon.laundry i { background-color: #f1c40f; }
        .service-icon.appliance i { background-color: #e74c3c; }
        .service-icon.plumbing i { background-color: #24a03f; }
        .service-icon.shifting i { background-color: #239fe6; }
        .service-icon.beauty i { background-color: #9b59b6; }
        .service-icon.ac-repair i { background-color: #1abc9c; }
        .service-icon.vehicle i { background-color: #3498db; }
        .service-icon.electronics i { background-color: #f39c12; }
        .service-icon.massage i { background-color: #e74c3c; }
        .service-icon.mens-salon i { background-color: #9b59b6; }

        /* Most Popular Services */
        .most-popular-services {
            background-color: #fff;
            border-radius: 15px;
            padding: 0px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        .most-popular-services h3 {
            font-size: 18px;
            color: #333;
            display: flex;
            justify-content: space-between;
        }

        /* Responsive Adjustments */
        @media (max-width: 400px) {
            .container {
                padding: 10px;
            }
        }
        .filter-buttons {
        display: flex;
        gap: 10px;
        margin: 10px 0;
    }

    .filter {
        padding: 8px 16px;
        border: 2px solid #0b8b60;
        border-radius: 20px;
        background-color: #fff;
        color: #0b8b60;
        font-size: 14px;
        cursor: pointer;
    }

    .filter.active {
        background-color: #0b8b60;
        color: #fff;
    }

    /* Service Card Styling */
    .service-card {
        display: flex;
        align-items: center;
        background-color: #fff;
        border-radius: 15px;
        padding: 10px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        margin-bottom: 15px;
        position: relative;
    }

    .service-card img {
        width: 60px;
        height: 60px;
        border-radius: 50%;
        object-fit: cover;
        margin-right: 15px;
    }

    .service-info h4 {
        font-size: 16px;
        margin: 0;
        color: #333;
    }

    .service-info .price {
        color: #0b8b60;
        font-size: 16px;
        font-weight: bold;
    }

    .service-info .rating {
        color: #555;
        font-size: 14px;
    }

    .bookmark {
        position: absolute;
        top: 10px;
        right: 10px;
        color: #0b8b60;
        font-size: 18px;
    }
    </style>
     <div class="navbar d-flex justify-content-between align-items-center">
        <h1>Hi, Guest</h1>
       <div class="notification-icon"><img src="assets/img/bell.png" /></div>
    </div>
          <!-- Search Bar -->
    <div class="container">
        <input type="text" class="form-control search-bar" placeholder="Search">
    </div>
<div class="container" style="overflow:auto; height:71vh;">
    <div class="row">
<div class="col-6">
    <h3 style="font-size: 18px;">Special Offers</h3>
</div>
        <div class="col-6" style="text-align:right;">
                <a href="#" style="color:black; text-decoration: none;font-size:15px; color:#0b8b60; font-weight:bold;">See All</a>
</div>
    </div>

    <!-- Special Offers Card -->
    <div class="special-offers">
        <div class="special-offers-text">
            <h1>30%</h1><h5>Today's Special!</h5>
            <p>Get discount for every order, only valid for today.</p>
        </div>
        <img src="assets/img/ladycleaning2.png" alt="Offer">
        
    </div>


    <div class="services">
        <h3>Services <a href="#" style="text-decoration: none; font-size:15px; color:#0b8b60; font-weight:bold;">See All</a></h3>
        <div class="service-icons">
            <div class="service-icon cleaning">
                <i class="fas fa-broom"></i>
                <p>Cleaning</p>
            </div>
            <div class="service-icon repairing">
                <i class="fas fa-tools"></i>
                <p>Repairing</p>
            </div>
            <div class="service-icon painting">
                <i class="fas fa-paint-roller"></i>
                <p>Painting</p>
            </div>
            <div class="service-icon laundry">
                <i class="fas fa-tshirt"></i>
                <p>Laundry</p>
            </div>
            <div class="service-icon appliance">
                <i class="fas fa-blender"></i>
                <p>Appliance</p>
            </div>
            <div class="service-icon plumbing">
                <i class="fas fa-wrench"></i>
                <p>Plumbing</p>
            </div>
            <div class="service-icon shifting">
                <i class="fas fa-truck"></i>
                <p>Shifting</p>
            </div>
            <div class="service-icon">
                <i class="fas fa-ellipsis-h" style="color:#fff;"></i>
                <p>More</p>
            </div>
        </div>
    </div>

    <!-- Most Popular Services Section -->
    <div class="most-popular-services">
        <h3>Most Popular Services <a href="#" style="text-decoration: none; font-size:15px; color:#0b8b60; font-weight:bold;">See All</a></h3>
        <!-- Booking list styling can be added here -->
           <!-- Filter Buttons -->
   <div class="filter-buttons">
       <button class="filter active">All</button>
       <button class="filter">Cleaning</button>
       <button class="filter">Repairing</button>
       <button class="filter">Painting</button>
   </div>

   <!-- Service Cards -->
   <div class="service-card">
       <div class="service-icon cleaning">
    <i class="fas fa-broom"></i>
</div>
       <div class="service-info">
           <h4>House Cleaning</h4>
           <p class="price">$24</p>
           <p class="rating">⭐ 4.8 | 1,289 reviews</p>
       </div>
       <div class="bookmark">
           <i class="far fa-bookmark"></i>
       </div>
   </div>
   
   <div class="service-card">
        <div class="service-icon ac-repair">
                <i class="fas fa-fan"></i>
            </div>
       <div class="service-info">
           <h4>AC Repairing</h4>
           <p class="price">$26</p>
           <p class="rating">⭐ 4.9 | 6,832 reviews</p>
       </div>
       <div class="bookmark">
           <i class="far fa-bookmark"></i>
       </div>
   </div>
           <div class="service-card">
      <div class="service-icon vehicle">
                <i class="fas fa-car"></i>
            </div>
       <div class="service-info">
           <h4>Vehicle Repairing</h4>
           <p class="price">$26</p>
           <p class="rating">⭐ 4.9 | 6,832 reviews</p>
       </div>
       <div class="bookmark">
           <i class="far fa-bookmark"></i>
       </div>
   </div>

           <div class="service-card">
       <div class="service-icon electronics">
                <i class="fas fa-plug"></i>
            </div>
       <div class="service-info">
           <h4>Electronic Repairing</h4>
           <p class="price">$26</p>
           <p class="rating">⭐ 4.9 | 6,832 reviews</p>
       </div>
       <div class="bookmark">
           <i class="far fa-bookmark"></i>
       </div>
   </div>

           <div class="service-card">
        <div class="service-icon massage">
                <i class="fas fa-spa"></i>
            </div>
       <div class="service-info">
           <h4>Massage</h4>
           <p class="price">$26</p>
           <p class="rating">⭐ 4.9 | 6,832 reviews</p>
       </div>
       <div class="bookmark">
           <i class="far fa-bookmark"></i>
       </div>
   </div>

   
   <!-- Additional service cards can be added similarly -->
    </div>
</div>

</asp:Content>
