using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace LoginFormDemo
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["DbConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            String query = "insert into SignUpTable values(@fname,@lname,@gender,@email,@address,@username,@password)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@fname", FNTextBox.Text);
            cmd.Parameters.AddWithValue("@lname", LNTextBox.Text);
            cmd.Parameters.AddWithValue("@gender", GenderDropDownList.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
            cmd.Parameters.AddWithValue("@address", AddressTextBox.Text);
            cmd.Parameters.AddWithValue("@username", UsernameTextBox.Text);
            cmd.Parameters.AddWithValue("@password", passTextBox.Text);
            con.Open();
           int a = cmd.ExecuteNonQuery();
            if(a>0)
            {
            // ClientScript.RegisterStartupScript(typeof(Page),"script","alert('SignIn Successfull .. Your UserName is "+UsernameTextBox.Text+" and Your Password is "+passTextBox.Text+"')");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('SignIn Successfull .. Your UserName is " + UsernameTextBox.Text + " and Your Password is " + passTextBox.Text + "')</script>");
                ClearControl();
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('SignUp Failed')</script>");
            }
            con.Close();
        }

        void ClearControl()
        {
            FNTextBox.Text = LNTextBox.Text = EmailTextBox.Text = AddressTextBox.Text = UsernameTextBox.Text = passTextBox.Text =confpassTextBox.Text= "";
            GenderDropDownList.ClearSelection();
        }
    }
}