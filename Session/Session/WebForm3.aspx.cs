using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Session
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Application["user"] != null)
            {
                Response.Write("Hello " + Application["user"].ToString() + " this is page three");
            }
            else
            {
                Response.Redirect("WebForm1.aspx");
            }
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            if(Application["user"]!=null)
            {
                Application["user"] = null;
                Response.Redirect("Webform1.aspx");
            }
        }
    }
}