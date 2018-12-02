using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.App_Code;

namespace Microsoft.Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Users user = ConnectionClass.LoginUser(txtLogin.Text, txtPassword.Text);
            if (user != null)
            {
                //Store login variable in session
                Session["login"] = user.name;
                Session["type"] = user.user_type;
                Session["email"] = user.email;
                Session["password"] = user.password;
                Response.Redirect("~/Pages/PostLogin.aspx");
            }
            else
            {
                lblError.Text = "Login Failed";
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Registration.aspx");
        }
    }
}