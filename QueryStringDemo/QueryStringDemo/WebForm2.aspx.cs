using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QueryStringDemo
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //We need to request value from the QueryString(URL) to get the value which is on index [0];
            // IDTextBoxWF2.Text = Request.QueryString[0]; 
            //another way We need to request value from the QueryString(URL) to get the value which is of name "id";
            IDTextBoxWF2.Text = Request.QueryString["id"];
            NameTextBoxWF2.Text = Request.QueryString["name"];
            AgeTextBoxWF2.Text = Request.QueryString["Age"];

        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}