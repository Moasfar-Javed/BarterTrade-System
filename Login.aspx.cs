using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;   
using System.Configuration;
using System.Data;

namespace BarterOEL
{
    public partial class Login1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            //try
            //{
                string user = username.Text;
                string pass = password.Text;
                con.Open();
                string qry = "select id from [login] where [Username]='" + user + "' and [Password]='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                sda.Fill(dt);
                int userId = Convert.ToInt32(cmd.ExecuteScalar());
                if (dt.Rows.Count > 0)
                {
                    Session["uid"] = dt.Rows[0]["user"].ToString();
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Label4.Text = "Username and Password do not match";
                }
                con.Close();
            //}
            //catch
            //{
            //    Label4.Text = "Connection unsuccessful";
            //}
            
        }

        protected void noacc_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}