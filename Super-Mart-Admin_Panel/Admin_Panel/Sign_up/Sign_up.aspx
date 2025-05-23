<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_up.aspx.cs" Inherits="Admin_Panel.Sign_up.Sign_up" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="../colors.css" />
      <link href="../css/styles.css" rel="stylesheet" />
    <title>Carrefour Sign Up</title>
  </head>
  <body>
    <div class="signup-container">
      <div class="signup-card">
        <div class="signup-header">
          <div class="signup-logo">
            <img
              src="../images/logo.png"
              width="250px"
              height="70px"
              alt="Carrefour logo"
            />
          </div>

          <div class="signup-heading">
            <h1>Create Your Account</h1>
          </div>
        </div>
         <!-- Sign-up form with ASP.NET controls -->
            <form id="form1" runat="server" class="signup-form">
                <asp:TextBox
                    ID="NameTextBox"
                    runat="server"
                    CssClass="signup-input"
                    Placeholder="Enter your name"
                    Required="true" />

                <asp:TextBox
                    ID="EmailTextBox"
                    runat="server"
                    CssClass="signup-input"
                    Placeholder="Enter your email"
                    TextMode="Email"
                    Required="true" />

                <asp:TextBox
                    ID="PasswordTextBox"
                    runat="server"
                    CssClass="signup-input"
                    Placeholder="Enter your password"
                    TextMode="Password"
                    Required="true" />

                <asp:Button
                    ID="SignUpButton"
                    runat="server"
                    Text="Sign Up"
                    CssClass="signup-button"
                    OnClientClick="redirectToDashboard(); return false;" />
            </form>

        <div class="login-prompt">
          <p>
            Already have an account?
              <a href="../Sign_in/Sign_in.aspx">Sign in here!</a>
          </p>
        </div>
      </div>
    </div>
    <script>
      function redirectToDashboard() {
          window.location.href = "../Dashboard.aspx";
      }
    </script>
  </body>
</html>

