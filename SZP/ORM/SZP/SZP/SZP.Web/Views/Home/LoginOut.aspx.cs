using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SZP.Web.Views.Home
{
    public partial class LoginOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Config.LoginHelper.Logout();
            Response.Redirect("LoginOn.aspx");
        }
    }
}