using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Student_Management_System.Student
{
    public partial class ChangePasswordForm : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["smsCon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
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
                    ViewState["Regno"] = txtRegNo.Text;
                    lblMessage.Text = "Password matched Successfully... Now You can Change your Password below.";
                    txtRegNo.Text = string.Empty;
                    txtPassword.Text = string.Empty;
                    Panel1.Visible = true;
                }
                else
                {
                    lblMessage.Text = "Wrong Password!! try again...";
                }
                cn.Close();
                
            }
            catch (SqlException ex1)
            {
                lblMessage.Text = ex1.Message;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("spUpdatePwdStudents", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Regno", ViewState["Regno"].ToString());
                cmd.Parameters.AddWithValue("@NewPassword",txtNewPassword.Text);
                int result = cmd.ExecuteNonQuery();
                if (result==1)
                {                 
                    lblMessage.Text = "Password Changed Successfully..";
                    txtRegNo.Text = string.Empty;
                    txtPassword.Text = string.Empty;
                }
                else
                {
                    lblMessage.Text = "Password Not Changed!! try again...";
                }
                cn.Close();

            }
            catch (SqlException ex1)
            {
                lblMessage.Text = ex1.Message;
            }
        }
    }
}