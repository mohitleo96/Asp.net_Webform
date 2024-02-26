using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViewState
{
    public partial class Response : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RestoreButton_Click(object sender, EventArgs e)
        {
            if (ViewState["user"] != null)
            {
                RestoreUserTextBox.Text = ViewState["user"].ToString();
            }
            if (ViewState["pass"] != null)
            {
                PassRestoreTextBox.Text = ViewState["pass"].ToString();
            }
        }

    }
}