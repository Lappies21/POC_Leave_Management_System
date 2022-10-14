using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POC_Leave_Management_System
{
    public partial class POCForm : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-FPSAHJE;Initial Catalog=POC;Integrated Security=True");
        public int totalLeave = 21;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblSuccessMessage.Visible = false;

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (conn.State == System.Data.ConnectionState.Closed)
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("POCInsert", conn);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Firstname",txtFname.Text);
                cmd.Parameters.AddWithValue("@Lastname",txtLname.Text);
                cmd.Parameters.AddWithValue("@LeaveStartDate",CalLStart.SelectedDate.ToShortDateString());
                cmd.Parameters.AddWithValue("@LeaveEndDate",CalLEnd.SelectedDate.ToShortDateString());
                cmd.Parameters.AddWithValue("@TypeOfLeave",ddType.Text);
                cmd.Parameters.AddWithValue("@Reason",txtReason.Text);
                cmd.Parameters.AddWithValue("@TotalLeave",leave());
                cmd.Parameters.AddWithValue("@TotalLeaveLeft",LeaveLeft());
                cmd.ExecuteNonQuery();
                conn.Close();

                lblSuccessMessage.Visible = true;
                clear();
            }
        }

        public void clear()
        {
            txtFname.Text = "";
            txtLname.Text = "";
            txtReason.Text = "";
            ddType.Text = "none";
            CalLStart.SelectedDates.Clear();
            CalLEnd.SelectedDates.Clear();
            btnSubmit.Text = "Submitted";
            lblSuccessMessage.Visible = false;
        }

        public int leave()
        {
            int leave = CalLEnd.SelectedDate.Day - CalLStart.SelectedDate.Day;
            return leave;
        }

        public int LeaveLeft()
        {
            int left = Math.Abs((CalLEnd.SelectedDate.Day - CalLStart.SelectedDate.Day) - totalLeave);
            return left;
        }
    }
}