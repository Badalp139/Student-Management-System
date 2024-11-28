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
    public partial class PaymentDueForm : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["smsCon"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            lblName.Text = string.Empty;
            lblMobile.Text= string.Empty;
            lblCourse.Text= string.Empty;
            lblFinalFeeAmount.Text= string.Empty;
            lblFeePaid.Text= string.Empty;
            LblDueAmount.Text= string.Empty;
            lblMessage.Text= string.Empty;
            lblStudentResult.Text = string.Empty;

        }

        protected void btnShow_Click(object sender, EventArgs e)
        {
            try
            {
                cn.Open();
                //lblMessage.Text = "connected";
                string regno = txtRegNo.Text;
                SqlCommand cmd = new SqlCommand("spGetStudentFeeInfotblStudents", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Regno", txtRegNo.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    lblName.Text ="Name: "+ dr["Name"].ToString();
                    lblCourse.Text = "Course: "+ dr["Course"].ToString();
                    lblMobile.Text ="MobileNo: "+  dr["MobileNo"].ToString();
                    lblFinalFeeAmount.Text ="FinalFee: " + dr["FinalFee"].ToString();
                    lblFeePaid.Text = "Paid Fee: " + dr["FeePaid"].ToString();
                    double totalFee, paidFee, dueAmt;
                    totalFee =Convert.ToDouble( dr["FinalFee"]);
                    paidFee = Convert.ToDouble(dr["FeePaid"]);
                    dueAmt = totalFee - paidFee;
                    LblDueAmount.Text = "Due Amount: " + dueAmt;
                    
                }
                else
                {
                    lblStudentResult.Text = "Regno not found !!!...";
                }
                cn.Close();
            }
            catch(SqlException ex)
            {
                lblStudentResult.Text = ex.Message;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //updating fee in tblstudent table and adding new record tblfeeTransaction Table
            try
            {
                UpdateStudentFee();
            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
            
        }

        private void UpdateStudentFee()
        {
            try
            {
                try
                {
                    cn.Open();
                    //lblMessage.Text = "connected";
                    string regno = txtRegNo.Text;
                    SqlCommand cmd = new SqlCommand("spUpdateFeeDetails", cn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Regno", txtRegNo.Text);
                    cmd.Parameters.AddWithValue("@Amount", txtAmount.Text);
                    cmd.Parameters.AddWithValue("@PaymentMode", DropDownList1.SelectedItem.Text);
                    int result = cmd.ExecuteNonQuery();
                    if (result != 0)
                    {
                        lblMessage.Text = "Fee Paid Successfully";
                    }
                    else
                    {
                        lblStudentResult.Text = "Regno not found!!...";
                    }
                }
                catch (SqlException ex)
                {
                    lblStudentResult.Text = ex.Message;
                }
            }
            catch(SqlException ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
    }
}