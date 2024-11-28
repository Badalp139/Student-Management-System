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
    public partial class ViewFeeStatementForm : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["smsCon"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = string.Empty;
        }

        protected void btnShowStatement_Click(object sender, EventArgs e)
        {
            try
            {
                
                ShowFeeStatement();
                
            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }

        private void ShowFeeStatement()
        {
            try
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("spShowFeeStatement", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Regno", txtRegno.Text);
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                dr.Close();
                cn.Close();
            }
            catch(SqlException ex)
            {
                lblMessage.Text = ex.Message;
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            GridView1.DataSource = null;
            GridView1.DataBind();
        }
    }
}