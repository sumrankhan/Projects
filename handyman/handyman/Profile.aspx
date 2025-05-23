<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="handyman.Profile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Profile</title>
    <style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: Arial, sans-serif;
        background-color: #fff;
        display: flex;
        min-height: 100vh;
        padding: 20px;
        margin: 0;
    }

    .container-profile {
        width: 100%;
      
        text-align: center;
        padding: 20px;
       
    }
    .profile-back-arrow {
        font-size: 20px;
        color: #0b8b60;
        position: absolute;
        top: 39px;
        left: 20px;
        cursor: pointer;
    }
    .profile-h2 {
        font-size: 24px;
        color: #333;
        margin-bottom: 30px;
        text-align:left;
        margin-left:30px;
      
    }

    .profile-form-group {
        margin-bottom: 20px;
        position: relative;
    }

    .profile-form-group input {
        width: 100%;
        padding: 15px 20px;
        border: 1px solid #afafaf;
        border-radius: 8px;
        font-size: 16px;
    }

    .profile-form-group input:focus {
        border-color: #0b8b60;
        outline: none;
    }
    .profile-edit-btn {
        width: 100%;
        padding: 15px;
        background-color: #0b8b60;
        border: none;
        border-radius: 25px;
        font-size: 18px;
        color: #fff;
        cursor: pointer;
        margin-top: 20px;
    }
    .profile-edit-btn:hover {
        background-color: #0a7a50;
    
        }
    .profile-icon{
    margin-bottom:20px;
    position:relative;
}
.profile-edit{
   left:59%;
   top:70%;
    position:absolute;
}

</style>
</head>
<body>
            <div class="container-profile">
        <a href="Account_page.aspx" class="profile-back-arrow">
            <img src="assets/img/left-arrow.png" style="width:26px; height:26px;"/></a>
        
        <h2 class="profile-h2">My Profile</h2>
        <div class="profile-icon">

    <img src="assets/img/avatar.png" style=" width:100px;height:100px;" /><img src="assets/img/editprofile.png" class="profile-edit" />
</div>
        <div class="profile-form-group">
           
            <input type="text" value="John" readonly />
        </div>
        
        <div class="profile-form-group">
          <input type="date" id="date" name="date" readonly/>
            
        </div>
        
        <div class="profile-form-group">
           
            <input type="email" value="example@gmail.com"  readonly/>
        </div>
        <div class="profile-form-group">
          
            <input type="tel" value="+923314509894" readonly />

        </div>
        
        <div class="profile-form-group">
            
            <input type="text" value="Islamabad" readonly />
        </div>
        
        <div class="profile-form-group">
            
            <input type="text" value="D17 Block B Islamabad" readonly/>
        </div>
                <button id="profile_button" class="profile-edit-btn" onclick="window.location.href='Edit_Profile.aspx';">Edit</button>

               </div>
     <script>
     window.onload = function () {
         const now = new Date();
         const dateInput = document.getElementById('date');

         dateInput.value = now.toISOString().split('T')[0];
     };
     </script>
</body>
</html>
