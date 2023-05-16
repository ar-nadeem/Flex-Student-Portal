using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flex.Pages.Student
{
    public partial class Student : System.Web.UI.MasterPage
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{

        //}

        protected void LogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Pages/Login/login.aspx");
        }
    }
}