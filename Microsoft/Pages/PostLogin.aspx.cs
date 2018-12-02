using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Microsoft.Pages
{
    public partial class PostLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] != null)
            {
                loginname.Text = Session["login"].ToString();
                userType.Text = Session["type"].ToString();
                logoutbtn.Visible = true;

            }
            else
            {
                logoutbtn.Visible = false;
            }
        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Pages/Home.aspx");
        }
    }
}