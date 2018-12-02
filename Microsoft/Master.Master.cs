using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Microsoft
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["login"]!=null)
            {
                logstatus.Visible = true;
                logstatus.Text = Session["login"].ToString();
                log.Visible = true;
                log.Text = "Logout";
            }
            else
            {
                logstatus.Visible = false;
                log.Visible = false;
    
            }
        }

        protected void log_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Pages/Home.aspx");
        }
    }
}