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
    public partial class ViewDueAmountForm : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["smsCon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

           
            try
            {
                string regno;
                if (Session["Regno"] != null && Session["Name"] != null)
                {
                    regno = Session["Regno"].ToString();
                    lblName.Text = "Student Name: " + Session["Name"].ToString();
                }
                ShowDueAmount();
            }
            catch (SqlException ex)
            {
                lblName.Text = ex.Message;
            }
        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            
        }

        private void ShowDueAmount()
        {
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("select * from tblStudents where Regno=" + Session["Regno"].ToString(),cn);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    lblName.Text = "Name : " + dr["Name"].ToString() +"</br> Course :" + dr["Course"].ToString();
                    lblTotalFee.Text = "Total Fee:" + dr["FinalFee"].ToString();
                    lblFeePaid.Text = "Fee Paid:" + dr["FeePaid"].ToString();
                    double dueAmt =Convert.ToDouble( dr["FinalFee"] )- Convert.ToDouble(dr["FeePaid"]);
                    lblDueAmount.Text = "Due Amount :" + dueAmt;
                }
                else
                {
                    lblName.Text = "Regno Not Found!!!..";
                }
                cn.Close();
            }
            catch(Exception ex)
            {
                lblName.Text = ex.Message;
            }
        }
    }
}