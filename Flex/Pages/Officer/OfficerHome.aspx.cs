using Flex.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flex.Pages.Officer
{
    public partial class OfficerHome : System.Web.UI.Page
    {
        private string RegNo;
        private string Pass;
        protected void Page_Load(object sender, EventArgs e)
        {
            RegNo = Session["username"].ToString();
            Pass = Session["Password"].ToString();
            // Check if auth ? 
            int found;
            myDAL objMyDal = new myDAL();
            DataTable DT = new DataTable();
            found = objMyDal.DirectorLogin(RegNo, Pass, ref DT);

            if (found == 1)
            {
                if (!IsPostBack)
                {
                    this.Bind_Grid();
                }
            }
            else
            {
                Response.Redirect("../Login/login.aspx");
            }
        }

        private void Bind_Grid()
        {
            int found;
            DataTable DT = new DataTable();
            myDAL objMyDal = new myDAL();
            found = objMyDal.DirectorLogin(RegNo, Pass, ref DT);
            StudentDetails.DataSource = DT;
            StudentDetails.DataBind();

        }
    }
}