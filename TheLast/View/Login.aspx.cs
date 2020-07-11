using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheLast.View
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-R1D6EMM;Initial Catalog=StInfo;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select UserName from [userName] where UserName=@username and PassWord=@word", con);
            cmd.Parameters.AddWithValue("@username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@word", TextBox2.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            if (dt.Rows.Count > 0)
            {
                Session["UserName"] = TextBox1.Text;
                Response.Redirect("Index.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "incorrect";

            }

        }
    }
}