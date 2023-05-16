using Flex.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flex.Pages.Student
{
    public partial class StudentTranscript : System.Web.UI.Page
    {
        string RegNo;
        private string Pass;
        public void Page_Load(object sender, EventArgs e)
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
                System.Diagnostics.Debug.WriteLine("TRANSCRIPT VIEWD !");
                RegNo = Session["username"].ToString();
                this.BindGrid(RegNo);
                lblErrorMessage.Visible = false;
            }
            else
            {
                Response.Redirect("../Login/login.aspx");
            }

        }
        private int Check_and_insert_grade(double num, int index)
        {
            if (num >= 80)      //Grade A
            {
                Transcript.Rows[index].Cells[3].Text = "A";
                return 4;       //4 credits returned
            }
            else if (num >= 70) //Grade B
            {
                Transcript.Rows[index].Cells[3].Text = "B";
                return 3;   //3 credits returned
            }
            else if (num >= 60) //Grade C
            {
                Transcript.Rows[index].Cells[3].Text = "C";
                return 2; //credits returned
            }
            else if (num >= 50) //Grade D
            {
                Transcript.Rows[index].Cells[3].Text = "D";
                return 1; //1 credit returned
            }
            else //grade F
            {
                Transcript.Rows[index].Cells[3].Text = "F";
                return 0;   //0 credits returned
            }

        }

        public void BindGrid(string r)
        {
            try
            {
                System.Diagnostics.Debug.WriteLine(r);
                DataTable DT = new DataTable();
                myDAL d = new myDAL();
                RegNo = Session["username"].ToString();
                int Found;
                d.GetTranscript(RegNo, ref DT);






                Transcript.DataSource = DT;
                Transcript.DataBind();
                double gpa = 0;
                for (int i = 0; i < Transcript.Rows.Count; i++)
                {
                    int totalmarks = Convert.ToInt32(Transcript.Rows[i].Cells[2].Text);
                    int obtained = Convert.ToInt32(Transcript.Rows[i].Cells[1].Text);

                    double sum = ((double)obtained / (double)totalmarks) * 100;
                     
                    gpa += Check_and_insert_grade(sum, i);
                }
                gpa = gpa / Transcript.Rows.Count;
                CGPA.Text = "Current CGPA = "+ gpa.ToString();
            }
            catch
            {
                CGPA.Text = "No Courses Enrolled";
                lblErrorMessage.Visible = true;

            }

        }
    }
}