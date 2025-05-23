<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="handyman.services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" >
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
       <div class="navbar d-flex justify-content-between align-items-center">
       <h1>Services</h1>
       <div class="notification-icon"><img src="assets/img/bell.png" /></div>
   </div>
         <!-- Search Bar -->
   <div class="container">
       <input type="text" class="form-control search-bar" placeholder="Search">
   </div>

   <!-- Services Section -->
   <div class="container">
       <br />
           <div class="row">
<div class="col-6">
     <h3 style="font-size: 18px; color:black">Top Services </h3>
</div>
        <div class="col-6" style="text-align:right;">
                <a href="#" style="text-decoration: none; font-size:15px; color:#0b8b60; font-weight:bold;">View All</a>
</div>
    </div>
      
       <div class="service-page-icons">
            <div class="service-icon cleaning">
                <i class="fas fa-broom"></i>
                <p>Cleaning</p>
            </div>
           <div class="service-icon repairing">
                <i class="fas fa-tools"></i>
                <p>Repairing</p>
            </div>
           <div class="service-icon vehicle">
                <i class="fas fa-car"></i>
                <p>Vehicle</p>
            </div>
           <div class="service-icon handyman">
                <i class="fas fa-male" style="width:47px"></i>
                <p>Handy Man</p>
            </div>
          
       </div>
   </div>

   <!-- Cleaning Services Section -->
   <div class="container"><br />
                     <div class="row">
                  <div class="col-6"> <h3 style="font-size: 18px; color:black">Cleaning Services </h3></div>
    
                  <div class="col-6" style="text-align:right;">
                      <a href="#" style="text-decoration: none; font-size:15px; color:#0b8b60; font-weight:bold; margin-top:5px;">View All</a></div>
</div>
       <div class="row service-cards">
           <div class="col-4">
               <img  src="assets/img/home_cleaning.png"  alt="House Cleaning" />
               <p class="text-center mt-1 ">House Cleaning</p>
           </div>
           <div class="col-4">
                 <img  src="assets/img/window-cleaning.jpg"  alt="House Cleaning" />
               <p class="text-center mt-1">Window Cleaning</p>
           </div>
           <div class="col-4">
                <img  src="assets/img/appliance_cleaning.jpg"  alt="House Cleaning" />
               <p class="text-center mt-1">Appliance Cleaning</p>
           </div>
       </div>
   </div>
   <!-- Cleaning Services Section -->
   <div class="container"><br />
                         <div class="row">
                  <div class="col-6"> <h3 style="font-size: 18px; color:black">Other Services </h3></div>
    
                  <div class="col-6" style="text-align:right;">
                      <a href="#" style="text-decoration: none; font-size:15px; color:#0b8b60; font-weight:bold; margin-top:5px;">View All</a></div>
</div>
       <div class="row service-cards">
           <div class="col-6 d-flex" style="text-align:center;">
               <img  src="assets/img/AC_cleaning.jpg" style="height:80px; width:100px;"  alt="House Cleaning" />
               
           </div>
            <div class="col-6 "  style="display: flex; justify-content: start; align-items: center;">
               
               <p class="text-center mt-1 float-end">A/C Cleaning</p>
           </div>
            <div class="col-6 d-flex">
               <img  src="assets/img/plumbering.jpg" style="height:80px; width:100px;"  alt="House Cleaning" />
               
           </div>
            <div class="col-6 "  style="display: flex; justify-content: start; align-items: center;">
               
               <p class="text-center mt-1 float-end">Plumbing</p>
           </div>
            <div class="col-6 d-flex">
               <img  src="assets/img/product-3.jpg  " style="height:80px; width:100px;"  alt="House Cleaning" />
               
           </div>
            <div class="col-6 "  style="display: flex; justify-content: start; align-items: center;">
               
               <p class="text-center mt-1 float-end">House Cleaning</p>
           </div>

         
       </div>
   </div>

</asp:Content>
