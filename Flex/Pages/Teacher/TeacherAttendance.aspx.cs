﻿using Flex.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Flex.Pages.Teacher
{
    public partial class TeacherAttendance : System.Web.UI.Page
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
                RegNo = Session["username"].ToString();
                lblErrorMessage.Visible = false;
                Error_no_course.Visible = false;
                AttendPercentage.Visible = false;
                if (!IsPostBack)
                {
                    this.Bind_Grid_Current();


                }
            }
            else
            {
                Response.Redirect("../Login/login.aspx");
            }



        }
        private void Bind_Grid(string cid)
        {
            int found;
            DataTable DT = new DataTable();
            myDAL objMyDal = new myDAL();
            found = objMyDal.TeacherAttendance(RegNo, cid, ref DT);

            if (found > 0)
            {
                TeacherDetails.DataSource = DT;
                TeacherDetails.DataBind();
                TeacherDetails.Visible = true;
                lblErrorMessage.Visible = false;

                AttendPercentage.Text = "Attendance Percentage: " + (objMyDal.TeacherAttendancePercentage(RegNo, cid)).ToString() + "%";


                AttendPercentage.Visible = true;


            }
            else
            {

                TeacherDetails.DataSource = null;
                TeacherDetails.DataBind();
                lblErrorMessage.Visible = true;
                TeacherDetails.Visible = false;
                AttendPercentage.Visible = false;
            }
        }
        private void Bind_Grid_Current()
        {
            int found;
            DataTable DT = new DataTable();
            myDAL objMyDal = new myDAL();
            found = objMyDal.CurrentTeacherCourses(RegNo, ref DT);
            if (found > 0)
            {
                CurrentCourses.DataSource = DT;
                CurrentCourses.DataBind();

            }
            else
            {
                CurrentCourses.DataSource = null;
                CurrentCourses.DataBind();

                Error_no_course.Visible = true;
                CurrentCourses.Visible = false;
            }
        }

        protected void AttendanceSelected_CheckedChanged(object sender, EventArgs e)
        {

            RadioButton checkstatus = (RadioButton)sender;

            GridViewRow row = (GridViewRow)checkstatus.NamingContainer;



            for (int i = 0; i < CurrentCourses.Rows.Count; i++)
            {
                RadioButton insert = (RadioButton)CurrentCourses.Rows[i].Cells[2].FindControl("AttendanceSelected");
                if (insert.Checked)
                {
                    string courseID = CurrentCourses.Rows[i].Cells[0].Text;
                    myDAL objMyDal = new myDAL();
                    this.Bind_Grid(courseID);
                    insert.Checked = false;


                }
            }


        }
    }
}