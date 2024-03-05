using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRUD_Operation_GRID
{
    public partial class StudentCRUDWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Name"].DefaultValue = 
                ((TextBox)GridView1.FooterRow.FindControl("FooterNameTextBox")).Text;
            SqlDataSource1.InsertParameters["Gender"].DefaultValue =
                ((DropDownList)GridView1.FooterRow.FindControl("FooterDDLGender")).SelectedValue;
            SqlDataSource1.InsertParameters["Class"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("FooterClass")).Text;
            SqlDataSource1.InsertParameters["Sec"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("FooterSec")).Text;
            SqlDataSource1.InsertParameters["Phone"].DefaultValue =
                ((TextBox)GridView1.FooterRow.FindControl("FooterPhone")).Text;

            //It will Directly Insert row without any message.
            SqlDataSource1.Insert();

            //Insert method returns some value(0 or 1) so we create conditions also
            //int a=SqlDataSource1.Insert();

            //We Use condition when we need to show some message or something.

            //if (a > 0)
            //{
            //    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Insert Successfully')</script>");
            //}
            //else
            //{
            //    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Error on Insering')</script>");
            //}
        }

       
    }
}