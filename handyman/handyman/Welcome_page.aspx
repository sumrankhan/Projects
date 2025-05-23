<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome_page.aspx.cs" Inherits="handyman.Welcome_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Sign up</title>
 <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <style>
/* General reset */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body styling */
body {
    font-family: Arial, sans-serif;
    background-color: #fff;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
}

/* Container holding the form */
.container {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 100%;
    padding: 20px;
    box-sizing: border-box;
}

/* Signup box styling */
.signup-box {
    background-color: transparent;
    padding: 40px;
    width: 50%;
/*    max-width: 500px;*/
    text-align: center;
}

/* Title */
.signup-box h2 {
    margin-bottom: 70px;
    font-size: 43px;
    color: #333;
    text-align:left;
}

/* Textbox styling (input fields) */
.textbox {
    margin-bottom: 20px;
    position: relative;
}

.textbox input {
    width: 100%;
    padding: 12px 40px; /* Added extra padding to accommodate the icons */
    border: none;
    border-radius: 5px;
    font-size: 16px;
    box-sizing: border-box;
}

.textbox input:focus {
    outline: none;
    border:1px solid #0b8b60; 
    border-radius:10px;
    background-color:rgba(11, 139, 96, 0.1);
}

/* Icon positioning */
.icon {
    position: absolute;
    top: 50%;
    left: 10px;
    transform: translateY(-50%);
    font-size: 18px;
    color: #bbb;
}
.icon:hover{
color:#0b8b60;
}

/* Checkbox styling */
.checkbox {
    text-align: center;
    margin-bottom: 20px;
    
}

.checkbox input {
    margin-right: 10px;
}

/* Button styling */
.btn {
    width: 100%;
    padding: 15px;
    background-color: #0b8b60;
    border: none;
    border-radius: 25px;
    font-size: 18px;
    color: #fff;
    cursor: pointer;
    transition: background-color 0.3s;
}

.btn:hover {
    background-color: #0a7a50;
}

/* Link to Login */
.login-link {
    font-size: 14px;
    margin-top: 20px;
}

.login-link a {
    color: #0b8b60;
    text-decoration: none;
}

.login-link a:hover {
    text-decoration: underline;
}

/* Responsive styles */
@media (max-width: 768px) {
    .signup-box {
        width:100%;
        padding: 30px;
       
    }

    .textbox input {
        padding: 10px 35px;
    }

    .btn {
        padding: 12px;
        font-size: 16px;
    }

   
}

/*@media (max-width: 390px) {
    
    .signup-box {
        width: 90%; 
        padding: 20px; 
    }
    .textbox input {
        padding: 12px 35px;
        font-size: 16px;
    }

    .btn {
        padding: 15px; 
        font-size: 18px; 
    }

  
}
@media (max-width: 576px) {

    .signup-box {
        width: 95%;
        padding: 25px;
    }*/

    /* Increase size of input fields */
    /*.textbox input {
        padding: 14px 40px;*/ /* More padding for better touch comfort */
        /*font-size: 18px;*/ /* Larger font for readability */
    /*}*/

    /* Larger button with increased padding */
    /*.btn {
        padding: 16px;
        font-size: 18px;*/ /* Larger button text */
    /*}*/

   
    /* Adjust the social buttons size */
    /*.social-buttons .social-btn {
        width: 55px;
        height: 55px;
        font-size: 22px;
    }
}*/
@media (max-width: 576px) {
    .container .signup-box {
        width: 95%;
        padding: 25px;
    }
   
}

.separator {
    font-size: 14px;
    color: #888;
    margin: 20px 0;
    text-align: center;
    position: relative;
}

.separator::before, .separator::after {
    content: "";
    height: 1px;
    width: 40%;
    background-color: #ddd;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
}

.separator::before {
    left: 0;
}

.separator::after {
    right: 0;
}

/* Social buttons container */
.social-buttons {
    display: flex;
    justify-content: center;
    gap: 10px;
    margin-bottom: 20px;
}

/* Social button styling */
.social-btn {
    width: 50px;
    height: 50px;
    border: none;
    border-radius: 50%;
    background-color: transparent;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 20px;
    cursor: pointer;
    transition: background-color 0.3s;
}

/* Specific colors for each platform */
.facebook {
    color:#3b5998;
    
}

.google {
    color: #db4437;
}

.apple {
    color: #000;
}

.social-btn:hover {
    opacity: 0.9;
}
    </style>

</head>
<body>
     <div class="container">
        <div class="signup-box">
            <h2>Create your Account</h2>
            <form action="#" method="post">
                        <div class="textbox">
                    <input type="email" placeholder="Email" name="email"/>
                    <i class="fas fa-envelope icon"></i>
                </div>
                <div class="textbox">
                    <input type="password" placeholder="Password" name="password"/>
                    <i class="fas fa-lock icon"></i>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="remember"/> Remember Me
                    </label>
                </div>
                <button type="submit" class="btn" onclick="window.location.href='Sign_in.aspx';">Sign Up</button>
            </form>
            <div class="separator">or continue with</div>
            <div class="social-buttons">
                <button class="social-btn facebook"><i class="fab fa-facebook-f"></i></button>
                <button class="social-btn google"><i class="fab fa-google"></i></button>
                <button class="social-btn apple"><i class="fab fa-apple"></i></button>
            </div>
            <p class="login-link">Already have an account? <a href="Sign_in.aspx">Sign in</a></p>
        </div>
    </div>
</body>
</html>
