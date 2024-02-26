using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViewState
{
    public partial class View_State : System.Web.UI.Page
    {
        string a, b;

       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void Submit_Click(object sender, EventArgs e)
        {
            ViewState["user"] = UserTextBox.Text;
            ViewState["pass"] = PassTextBox.Text;

            UserTextBox.Text = string.Empty;
            PassTextBox.Text = string.Empty;

            Response.Redirect("Restore.aspx");
        }
        protected void RestoreButton_Click(object sender, EventArgs e)
        {
            if (ViewState["user"]!=null)
            {
                UserTextBox.Text = ViewState["user"].ToString();
            }
            if (ViewState["pass"] != null)
            {
                PassTextBox.Text = ViewState["pass"].ToString();
            }
        }
    }
}