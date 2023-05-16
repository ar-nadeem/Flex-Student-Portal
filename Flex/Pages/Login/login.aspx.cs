﻿using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Flex.DAL;

namespace Flex.Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            int found;
            DataTable DT = new DataTable();
            myDAL objMyDal = new myDAL();

            String RegNo = txtRegNo.Text.Trim();
            String Pass = txtPassword.Text.Trim();


            if (RadioButton1.Checked == true)       //if student is checked
            {
                found = objMyDal.StudentLogin(RegNo, Pass, ref DT);
                if (found > 0)
                {
                    Session["username"] = txtRegNo.Text.Trim();     //this will save the Registration number to be used on cross pages
                    Session["Password"] = txtPassword.Text.Trim();
                    Response.Redirect("../Student/StudentHome.aspx");

                }
            }
            else if (RadioButton2.Checked == true)  //if teacher is checked
            {
                found = objMyDal.TeacherLogin(RegNo, Pass, ref DT);
                if (found > 0)
                {
                    Session["username"] = txtRegNo.Text.Trim();     //this will save the Registration number to be used on cross pages
                    Session["Password"] = txtPassword.Text.Trim();
                    Response.Redirect("../Teacher/TeacherHome.aspx");

                }

            }
            else if (RadioButton3.Checked == true)                            //if director is checked
            {
                found = objMyDal.DirectorLogin(RegNo, Pass, ref DT);
                if (found > 0)
                {
                    Session["username"] = txtRegNo.Text.Trim();     //this will save the Registration number to be used on cross pages
                    Session["Password"] = txtPassword.Text.Trim();
                    Response.Redirect("../Officer/OfficerHome.aspx");

                }
            }









            lblErrorMessage.Visible = true;


            
        }




    }


}