using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin_Panel.Sign_in
{
    public partial class Sign_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Any page load logic goes here
        }

        protected void SignInButton_Click(object sender, EventArgs e)
        {
            string email = EmailTextBox.Text; // Correct reference to EmailTextBox
            string password = PasswordTextBox.Text; // Correct reference to PasswordTextBox

            // Implement your sign-in logic here (e.g., check credentials)
            if (IsValidLogin(email, password))
            {
                // Redirect to the dashboard on successful login
                Response.Redirect("~/Dashboard.aspx");
            }
            else
            {
                // Display an error message (e.g., using a Label or JavaScript)
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid credentials.');", true);
            }
        }

        private bool IsValidLogin(string email, string password)
        {
            // Simulate login validation (replace with actual logic)
            return email == "user@example.com" && password == "password123"; // Example validation
        }

    }
}