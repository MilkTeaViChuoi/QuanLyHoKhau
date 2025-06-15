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
    public partial class TamtrutheoNhankhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Maho = Request.QueryString["MaHo"];/* trong [] ddeer MaCD cx ddc hoawcj theo id vdu 1,2,3...*/
            string Diachi = @"Data Source = LNPEACH\SQLEXPRESS; Initial Catalog = QLHoKhau; Integrated Security = True; Encrypt = False";
            SqlConnection objketnoi = new SqlConnection(Diachi);
            objketnoi.Open();
            string Lenhtruyvan = @"SELECT TamTru.MaTamTru, TamTru.MaHo,
                DiaChiTamTru, NgayBatDau, NgayKetThuc, HoKhau.MaHo
                FROM TamTru
                inner join HoKhau on TamTru.MaHo = HoKhau.MaHo
                Where HoKhau.MaHo =  '" + Maho + "'";

            SqlDataAdapter objadapter = new SqlDataAdapter(Lenhtruyvan, objketnoi);
            DataSet objds = new DataSet();
            objadapter.Fill(objds);
            objketnoi.Close();
            grvTamtrutheoHokhau.DataSource = objds;
            grvTamtrutheoHokhau.DataBind();
        }
    }
}
