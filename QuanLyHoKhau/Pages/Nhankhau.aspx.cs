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
    public partial class Nhankhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string Diachi = @"Data Source=LNPEACH\SQLEXPRESS;Initial Catalog=QLHoKhau;Integrated Security=True;Encrypt=False";
                SqlConnection conn = new SqlConnection(Diachi);
                string query = @"
            SELECT 
                tv.MaThanhVien,
                tv.HoTen,
                tv.GioiTinh,
                tv.NgaySinh,
                tv.NgheNghiep,
                tv.QuanHeChuHo,
                hk.MaHo,
                hk.TenChuHo,
                hk.DiaChi
            FROM 
                ThanhVien tv
            JOIN 
                HoKhau hk ON tv.MaHo = hk.MaHo
            ORDER BY 
                hk.MaHo, 
                CASE tv.QuanHeChuHo WHEN N'Chủ hộ' THEN 0 ELSE 1 END, 
                tv.HoTen";

                SqlDataAdapter da = new SqlDataAdapter(query, conn);
                DataSet ds = new DataSet();
                da.Fill(ds);

                grvNhankhau.DataSource = ds;
                grvNhankhau.DataBind();
            }
        }

    }
}