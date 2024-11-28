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
    public partial class AddStudenForm : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["smsCon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            txtPassword.Text = "Badal139";
            try
            {
                dropDownCourse.AutoPostBack = true;
                if(!IsPostBack)
                {
                    LoadCourses();
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            
        }

        private void LoadCourses()
        {
            try
            {
                cn.Open();
                //Response.Write("Connected");
                string query = "select * from tblCourses";
                SqlCommand cmd = new SqlCommand(query, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                while(dr.Read())
                {
                    dropDownCourse.Items.Add(dr["CourseName"].ToString());
                }
                dr.Close();
                cn.Close();
            }
            catch(SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                StudentRegistration();
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        private void StudentRegistration()
        {
            //adding new record into tblStudents
            try
            {
                cn.Open();
                //Response.Write("Connected");               
                SqlCommand cmd = new SqlCommand("spInsertTblStudents", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                string gender;
                if (radioMale.Checked == true)
                    gender = "Male";
                else if (radioFemale.Checked == true)
                {
                    gender = "Female";
                }
                else
                {
                    gender = null;
                }
                if (gender != null)
                    cmd.Parameters.AddWithValue("@Gender",gender);
                
                cmd.Parameters.AddWithValue("@Course", dropDownCourse.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@FinalFee", txtFinalFee.Text);
                cmd.Parameters.AddWithValue("@FeePaid", txtFeePaid.Text);
                cmd.Parameters.AddWithValue("@PaymentMode",dropdownPaymentMode.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@MobileNo", txtMobile.Text);
                cmd.Parameters.AddWithValue("@EmailId", txtEmailId.Text);
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@Pincode", txtPinCode.Text);
                cmd.Parameters.AddWithValue("@Graduation", dropdownGraduation.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Branch", txtBranch.Text);
                cmd.Parameters.AddWithValue("@YOP", txtYOP.Text);
                cmd.Parameters.AddWithValue("@Percentage", txtPersentageGrad.Text);

                int result = cmd.ExecuteNonQuery();
                if(result==1)
                {
                    cn.Close();
                    int regno = GetStudentRegNo();
                    //lblMessage.Text = "Registration Success. your geg no: " + regno;
                    //passing regno and inserting record into tblTransactiontable
                    AddTransacton(regno);
                }
                else
                {
                    lblMessage.Text = "Registration is not done....!!!";
                }
                cn.Close();
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }

        private void AddTransacton(int regno)
        {
            try
            {
                cn.Open();
                //Response.Write("Connected");               
                SqlCommand cmd = new SqlCommand("spInsertTblTransactions", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Regno", regno);
                cmd.Parameters.AddWithValue("@Amount", txtFeePaid.Text);
                cmd.Parameters.AddWithValue("@PaymentMode",dropdownPaymentMode.SelectedItem.ToString());
                  
                int result = cmd.ExecuteNonQuery();
                if (result == 1)
                {
                    cn.Close();
                    
                    lblMessage.Text = "Registration Success. your reg no: " + regno;
                    
                }
                else
                {
                    lblMessage.Text = "Registration is not done....!!!";
                }
                cn.Close();
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
        }

        private int GetStudentRegNo()
        {
            int currRegno = 0;
            try
            {
                cn.Open();
                string query = "select max(regno) from tblStudents";
                SqlCommand cmd = new SqlCommand(query, cn);
                currRegno = Convert.ToInt32(cmd.ExecuteScalar());
                Response.Write(currRegno);
                cn.Close();

            }
            catch(SqlException ex)
            {
                Response.Write(ex.Message);
            }
            return currRegno;
        }

        protected void dropDownCourse_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                DisplayCourseFee();
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        private void DisplayCourseFee()
        {
            try
            {
                cn.Open();
                //Response.Write("Connected");
                string query = "select * from tblCourses where CourseName='"+dropDownCourse.SelectedValue+"'";
                SqlCommand cmd = new SqlCommand(query, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    lblShowCourseFee.Text = dr["fee"].ToString();
                }
                dr.Close();
                cn.Close();
            }
            catch (SqlException ex)
            {
                lblShowCourseFee.Text = "Course not found !!!";
            }
        }
    }

        
       
}