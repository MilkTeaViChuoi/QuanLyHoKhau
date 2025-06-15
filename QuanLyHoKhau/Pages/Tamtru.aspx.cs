using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyHoKhau.Pages
{
    public partial class Tamtru : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Diachi = @"Data Source=LNPEACH\SQLEXPRESS;Initial Catalog=QLHoKhau;Integrated Security=True;Encrypt=False";
                SqlConnection ketnoi = new SqlConnection(Diachi);
                ketnoi.Open();

                string Lenhtruyvan = @"SELECT 
                                TamTru.MaTamTru,
                                TamTru.MaThanhVien,
                                ThanhVien.HoTen,
                                TamTru.MaHo,
                                TamTru.DiaChiTamTru,
                                TamTru.NgayBatDau,
                                TamTru.NgayKetThuc
                              FROM TamTru
                              INNER JOIN ThanhVien ON TamTru.MaThanhVien = ThanhVien.MaThanhVien";

                SqlDataAdapter adapter = new SqlDataAdapter(Lenhtruyvan, ketnoi);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                ketnoi.Close();

                grvTamtru.DataSource = ds;
                grvTamtru.DataBind();
            }
        }

    }
}