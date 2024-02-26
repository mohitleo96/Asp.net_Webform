using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginFormDemo
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"]!=null)
            {
                Response.Write("Welcome " + Session["user"].ToString());
            }
            else
            {
                Response.Redirect("LoginWebForm1.aspx");
            }
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            if(Session["user"]!=null)
            {
                Session["user"] = null;
                Response.Redirect("LoginWebForm1.aspx");
            }
        }
    }
}