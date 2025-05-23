<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_in.aspx.cs" Inherits="Admin_Panel.Sign_in.Sign_in" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <link href="../css/styles.css" rel="stylesheet" />
    <title>Carrefour Sign In</title>
  </head>
  <body>
    <div class="main-div-active">
      <div class="login-div">
        <div class="login-div-greeting">
          <div class="login-div-logo">
            <img
              src="../images/logo.png"
              width="250px"
              height="70px"
              alt="Description of the image"
            />
          </div>

          <div class="login-div-heading">
            <h3>Welcome Back!</h3>
            <h1>Sign In</h1>
          </div>
        </div>
         <!-- Form for login with ASP.NET controls -->
            <!-- Login form with ASP.NET controls -->
            <form id="form1" runat="server" class="login-form">
                <asp:TextBox
                    ID="EmailTextBox"
                    runat="server"
                    CssClass="login-input"
                    Placeholder="Enter your email"
                    TextMode="Email"
                    Required="true" />

                <asp:TextBox
                    ID="PasswordTextBox"
                    runat="server"
                    CssClass="login-input"
                    Placeholder="Enter your password"
                    TextMode="Password"
                    Required="true" />

                <asp:Button
                    ID="SignInButton"
                    runat="server"
                    Text="Sign In"
                    CssClass="login-button"
                    OnClientClick="redirectToDashboard(); return false;" />
            </form>

        <div class="signup-prompt">
          <p>
            Don't have an account!
              <a href="../Sign_up/Sign_up.aspx">Create one here!</a>
          </p>
        </div>
      </div>
    </div>
    <script>
        function redirectToDashboard() {
            window.location.href = "../Dashboard.aspx"; // Redirect to dashboard.html
      }
    </script>
  </body>
</html>

