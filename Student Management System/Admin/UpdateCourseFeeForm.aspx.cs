using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Student_Management_System.Admin
{
    public partial class UpdateCourseFeeForm : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["smsCon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadAllCourses();
            }

        }

        private void LoadAllCourses()
        {
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("Select coursename from tblCourses", cn);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    dropdownCourses.Items.Add(dr[0].ToString());
                }
                dr.Close();
                cn.Close();
            }
            catch (SqlException ex)
            {
                lblMessage.Text = ex.Message;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void dropdownCourses_SelectedIndexChanged(object sender, EventArgs e)
        {
            string CourseName = dropdownCourses.SelectedItem.ToString();
            DisplayCourseFee(CourseName);
        }

        private void DisplayCourseFee(string CourseName)
        {
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("tblCourseFee", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CourseName", CourseName);
                double oldFee = Convert.ToDouble(cmd.ExecuteScalar());
                lblOldFee.Text = oldFee.ToString();
                cn.Close();
            }
            catch(SqlException ex)
            {
                lblMessage.Text = ex.Message;
            }
            {

            }


        }

    }
}
