using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.App_Code;

namespace Microsoft.Pages
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Users user = new Users(txtName.Text,txtEmail.Text, txtPassword.Text, "user");

            lblResult.Text = ConnectionClass.RegisterUser(user);
        }
    }
}