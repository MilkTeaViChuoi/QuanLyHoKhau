using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyHoKhau.Pages
{
    public partial class Trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDashboardData();
            }
        }

        private void LoadDashboardData()
        {
            string Diachi = @"Data Source=LNPEACH\SQLEXPRESS;Initial Catalog=QLHoKhau;Integrated Security=True;Encrypt=False";

            using (SqlConnection conn = new SqlConnection(Diachi))
            {
                conn.Open();

                // Số hộ gia đình
                SqlCommand cmdHo = new SqlCommand("SELECT COUNT(*) FROM HoKhau", conn);
                lbSohogiadinh.Text = cmdHo.ExecuteScalar().ToString();

                // Số nhân khẩu
                SqlCommand cmdNK = new SqlCommand("SELECT COUNT(*) FROM ThanhVien", conn);
                lbSoNhanKhau.Text = cmdNK.ExecuteScalar().ToString();

                // Tổng tạm trú và tạm vắng
                SqlCommand cmdThongKe = new SqlCommand(@"
            SELECT 
                (SELECT COUNT(*) FROM TamTru) + 
                (SELECT COUNT(*) FROM TamVang)", conn);
                lbLinhTinh.Text = cmdThongKe.ExecuteScalar().ToString();
            }
        }

    }
}