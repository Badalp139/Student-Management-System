using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Student_Management_System.Student
{
    public partial class StudentLoginForm : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["smsCon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = string.Empty;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {             
                //lblMessage.Text = "connected";
                ValidateStudents();                             
            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }

        private void ValidateStudents()
        {
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("spStudentLoginTblStudent", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Regno", txtRegNo.Text);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read()) 
                {
                    Session["Regno"] = txtRegNo.Text;
                    Session["Name"] = dr["Name"].ToString();
                    Session["Course"] = dr["Course"].ToString();
                    Response.Redirect("StudentMainForm.aspx");
                }
                else
                {
                    lblMessage.Text = "Invalid Credentional";
                }
                dr.Close();
                cn.Close();
                

            }
            catch(SqlException ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
    }
}