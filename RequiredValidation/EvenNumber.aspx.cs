using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RequiredValidation
{
    public partial class EvenNumber : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Here source is defined for where this code is coming and args is for storing the value.
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int valueofargs = Convert.ToInt32(args.Value);
            if(valueofargs % 2==0)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}