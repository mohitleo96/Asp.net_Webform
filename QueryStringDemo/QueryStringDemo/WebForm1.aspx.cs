using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QueryStringDemo
{
    public partial class QueryString : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SentButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx?id=" +IDTextBox.Text.Replace("&","%26") +"&name=" + NameTextBox.Text.Replace("&", "%26") + "&Age=" + AgeTextBox.Text.Replace("&", "%26")); //Query String "?" is the seprater.
        }
    }
}