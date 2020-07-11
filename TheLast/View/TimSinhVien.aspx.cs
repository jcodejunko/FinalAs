using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheLast.View
{
    public partial class TimSinhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            IStu.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(Session["cs"].ToString());
            con.Open();
            string qr = "select * from [StudentInfo] where MSSV = '" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(qr, con);
            SqlDataReader dr = cmd.ExecuteReader();
            bool recordfound = dr.Read();
            if (!recordfound)
            {
                Label1.Visible = true;
                Label1.Text = "Nhập sai mã số sinh viên";
            }
            else
            {
                IStu.Visible = true;
               
                Label2.Text = dr["MSSV"].ToString();
                Label3.Text = dr["HoTen"].ToString();
                Label4.Text = dr["NgaySinh"].ToString();
                Label5.Text = dr["NoiSinh"].ToString();
                Label6.Text = dr["GioiTinh"].ToString();
                Label7.Text = dr["DanToc"].ToString();
                Label8.Text = dr["TonGiao"].ToString();
                Label9.Text = dr["DiaChiTT"].ToString();
                Label10.Text = dr["QuanHuyen"].ToString();
                Label11.Text = dr["Tinh"].ToString();
                Label12.Text = dr["QuocGia"].ToString();
                Label13.Text = dr["CMND"].ToString();
                Label14.Text = dr["NgayCapCMND"].ToString();
                Label15.Text = dr["DoanDang"].ToString();
                Label16.Text = dr["SDT"].ToString();
                Label17.Text = dr["Email"].ToString();
                Label18.Text = dr["TenCha"].ToString();
                Label19.Text = dr["NNCha"].ToString();
                Label10.Text = dr["TenMe"].ToString();
                Label21.Text = dr["NNMe"].ToString();
                Label22.Text = dr["KhoaHoc"].ToString();
                Label23.Text = dr["NganhHoc"].ToString();
                Label24.Text = dr["Lop"].ToString();
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}