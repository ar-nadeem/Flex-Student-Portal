﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flex.Pages.Officer
{
    public partial class Officer : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Pages/Login/login.aspx");
        }
    }
}