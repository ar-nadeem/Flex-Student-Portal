using Flex.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flex.Pages.Teacher
{
    public partial class TeacherSearchStudent : System.Web.UI.Page
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
            found = objMyDal.TeacherLogin(RegNo, Pass, ref DT);

            if (found == 1)
            {
                if (!IsPostBack)
                {
                    StudentDetails.Visible = false;
                    Error_1.Visible = false;
                    BasicInfo.Visible = false;
                }
            }
            else
            {
                Response.Redirect("../Login/login.aspx");
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string RegNo = StudentRegNo.Text.Trim();        //student registration number 
            int found;
            DataTable DT = new DataTable();
            myDAL objMyDal = new myDAL();
            found = objMyDal.SearchStudent(RegNo, ref DT);
            StudentDetails.DataSource = DT;
            StudentDetails.DataBind();


            if (found > 0)
            {
                StudentDetails.Visible = true;
                Error_1.Visible = false;
                BasicInfo.Visible = true;
            }
            else
            {
                StudentDetails.Visible = false;
                Error_1.Visible = true;
                BasicInfo.Visible = false;
            }
        }
    }
}