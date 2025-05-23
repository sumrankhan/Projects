<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_Profile.aspx.cs" Inherits="handyman.Edit_Profile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Edit Profile</title>
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
        .container {
            width: 100%;
          
            text-align: center;
            padding: 20px;
           
        }
        .back-arrow {
            font-size: 20px;
            color: #0b8b60;
            position: absolute;
            top: 39px;
            left: 20px;
            cursor: pointer;
        }
        h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 30px;
            text-align:left;
            margin-left:30px;
          
        }
        .form-group {
            margin-bottom: 20px;
            position: relative;
        }

        .form-group input {
            width: 100%;
            padding: 15px 20px;
            border: 1px solid #afafaf;
            border-radius: 8px;
            font-size: 16px;
        }
        .form-group input:focus {
            border-color: #0b8b60;
            outline: none;
        }
        .icon {
           margin-bottom:50px;
        }
        .continue-btn {
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
        .continue-btn:hover {
            background-color: #0a7a50;
        }

    </style>
    <style>
    .overlay {
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.3);
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .popup {
        background-color: white;
        width: 300px;
        padding: 20px;
        border-radius: 20px;
        text-align: center;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        position: relative;
    }

    .close-btn {
        position: absolute;
        top: 15px;
        right: 15px;
        font-size: 18px;
        color: #999;
        cursor: pointer;
        background: none;
        border: none;
    }
    .close-btn:hover {
        color: #555;
    }

    .icon {
        width: 80px;
        height: 80px;
        background-color: #8b4de5;
        color: white;
        font-size: 40px;
        border-radius: 50%;
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 0 auto 20px;
        position: relative;
    }
    .icon::before, .icon::after {
        content: '';
        position: absolute;
        width: 120px;
        height: 120px;
        background: radial-gradient(circle, rgba(139, 77, 229, 0.2), transparent);
        top: -30px;
        left: -20px;
        border-radius: 50%;
    }
    .popup h2 {
        color: #8b4de5;
        font-size: 24px;
        margin-bottom: 10px;
    }
    .popup p {
        color: #555;
        font-size: 16px;
        margin-bottom: 20px;
    }

    .button {
        display: inline-block;
        padding: 10px 30px;
        font-size: 16px;
        color: white;
        background-color: #8b4de5;
        border-radius: 20px;
        text-decoration: none;
        cursor: pointer;
        margin-top: 10px;
    }
    .icon1{
        margin-bottom:20px;
        position:relative;
    }
    .edit{
       left:59%;
       top:70%;
        position:absolute;
    }
</style>
</head>
<body>
    <div class="container">
        <a href="Profile.aspx" class="back-arrow">
            <img src="assets/img/left-arrow.png" style="width:26px; height:26px;"/></a>
        
        <h2>Edit Your Profile</h2>
        <div class="icon1">

    <img src="assets/img/avatar.png" style=" width:100px;height:100px;" /><img src="assets/img/editprofile.png" class="edit" />
</div>
        <div class="form-group">
           
            <input type="text" value="John" />
        </div>
        
        <div class="form-group">
          
            <input type="date" id="date" name="date" />
        </div>
        
        <div class="form-group">
           
            <input type="email" value="example@gmail.com" />
        </div>
        <div class="form-group">
          
            <input type="tel" value="+923314509894" />

        </div>
        
        <div class="form-group">
            
            <input type="text" value="Islamabad" />
        </div>
        
        <div class="form-group">
            
            <input type="text" value="D17 Block B Islamabad" />
        </div>
<button type="submit" class="continue-btn">Submit</button>
        
    </div>
    <div class="overlay" id="overlay" style="display:none;">
    <div class="popup">
        <button class="close-btn" onclick="closePopup()">✖</button>
        <div class="icon">👤</div>
        <h2>Congratulations!</h2>
        <p>Your account is ready to use. You will be redirected to the Home page in a few seconds.</p>
    </div>
       
</div>
            <script>
                function closePopup() {
                 
                    document.getElementById('overlay').style.display = 'none';
                }
</script>
</body>
</html>



