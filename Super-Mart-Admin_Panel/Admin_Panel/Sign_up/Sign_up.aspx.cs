using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin_Panel.Sign_up
{
    public partial class Sign_up : System.Web.UI.Page
    {
        public partial class SignUp : Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                // Any page load logic goes here
            }

            protected void SignUpButton_Click(object sender, EventArgs e)
            {
                string name = "";
                string email = "";
                string password = "";

                // Implement your sign-up logic here (e.g., save user data to a database)
                if (IsValidSignUp(name, email, password))
                {
                    // Redirect to dashboard on successful sign-up
                    Response.Redirect("~/Dashboard.aspx");
                }
                else
                {
                    // Show an error message (you can use a Label for this)
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error during sign-up.');", true);
                }
            }

            private bool IsValidSignUp(string name, string email, string password)
            {
                // Implement your validation logic here (e.g., check if email already exists)
                return true; // Example validation
            }
        }
    }
}