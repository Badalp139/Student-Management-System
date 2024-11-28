using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.CodeDom;

namespace Student_Management_System.Admin
{
    public partial class AddNewCourses : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["smsCon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string coursename = txtCourseName.Text;
            double fee = Convert.ToDouble(txtFee.Text);
            string duration = txtDuration.Text;
            int result=AddNewCourse(coursename, fee, duration);
            if (result == 1)
                lblMessage.Text = "Course Added  Successfully!";
            else 
                lblMessage.Text = "Course Not Found!!!!";
            
        }

        private int AddNewCourse(string coursename, double fee, string duration)
        {
            int result=0;
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("spAddCourseTblCourses", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CourseName", coursename);
                cmd.Parameters.AddWithValue("@Fee", fee);
                cmd.Parameters.AddWithValue("@Duration", duration);

                result= cmd.ExecuteNonQuery();

                cn.Close();

                
               
            }
            catch(SqlException ex)
            {
                lblMessage.Text = ex.Message;
            }

            return result;
        }
    }
}