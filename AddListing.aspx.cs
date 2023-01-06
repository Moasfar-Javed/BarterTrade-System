using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BarterOEL
{
    public partial class AddListing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/" + str));
                string Image = "~/Upload/" + str.ToString();
                string Name = name.Text;
                int Price = int.Parse(price.Text);

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
                SqlCommand cmd = new SqlCommand("insert into [listings] (u_id, name, price, imagedata) values (@uid, @name, @price, @imagedata);", con);
                cmd.Parameters.AddWithValue("@uid", Session["uid"] as string);
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@price", price);
                cmd.Parameters.AddWithValue("Image", Image);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("HomePage.aspx");
            }

            else
            {
                //Label1.Text = "Please Upload your Image";
                //Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}