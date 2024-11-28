using System;
using System.Collections.Generic;
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
    public partial class ViewPaymentStatementForm : System.Web.UI.Page
    {
        SqlConnection cn=new SqlConnection(ConfigurationManager.ConnectionStrings["smsCon"].ToString());
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
                ShowStateMent();
            }
            catch (SqlException ex)
            {
                lblName.Text = ex.Message;
            }
        }

        private void ShowStateMent()
        {
            try
            {
                cn.Open();
                if (Session["Regno"] != null)
                {
                     SqlCommand cmd = new SqlCommand("select * from tblFeeTransactions where Regno=" + Session["Regno"].ToString(), cn);
                    if (Session["Nwme"] != null && Session["Course"] != null)
                        lblName.Text = "Student Name : " + Session["Name"].ToString() + "</br> Course :" + Session["Course"].ToString();

                    SqlDataReader dr = cmd.ExecuteReader();
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                    dr.Close();
                }
                else
                {
                    lblName.Text = "Regno Not Found!!!..";
                }
                cn.Close();
            }
            catch (Exception ex)
            {
                lblName.Text = ex.Message;
            }
        }
    }
}