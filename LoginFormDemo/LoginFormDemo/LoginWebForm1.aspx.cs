using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace LoginFormDemo
{
    public partial class LoginWebForm1 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["loginDbConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select * from LoginTable where Username = @user and Password = @pass";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user", UserNameTextBox.Text);
            cmd.Parameters.AddWithValue("@pass", PassTextBox.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
                Session["user"] = UserNameTextBox.Text;
                // Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Successfull')</script>");
                Response.Redirect("Home.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed')</script>");
            }
            con.Close();

        }
    }
}