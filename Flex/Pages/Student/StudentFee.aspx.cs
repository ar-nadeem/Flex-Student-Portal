using Flex.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flex.Pages.Student
{
    public partial class StudentFee : System.Web.UI.Page
    {
        string RegNo;
        private string Pass;
        protected void Page_Load(object sender, EventArgs e)
        {
            RegNo = Session["username"].ToString();
            Pass = Session["Password"].ToString();
            // Check if auth ? 
            int found;
            myDAL objMyDal = new myDAL();
            DataTable DT = new DataTable();
            found = objMyDal.StudentLogin(RegNo, Pass, ref DT);

            if (found == 1)
            {

                RegNo = Session["username"].ToString();
                DataTable DTT = new DataTable();
                myDAL obj = new myDAL();
                obj.CurrentStudentCourses(RegNo, ref DTT);


                int num_of_course = DTT.Rows.Count;
                Num_of_couses.Text = num_of_course.ToString();

                num_of_course = num_of_course * 7500;
                Total_Payable.Text = num_of_course.ToString() + " Rs";
            }
            else
            {
                Response.Redirect("../Login/login.aspx");
            }



        }
    }
}