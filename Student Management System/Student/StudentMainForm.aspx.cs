using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management_System.Student
{
    public partial class StudentMainForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"]!=null)
            {
                lblStudentName.Text = "Wecome " + Session["Name"].ToString();
            }
        }
    }
}