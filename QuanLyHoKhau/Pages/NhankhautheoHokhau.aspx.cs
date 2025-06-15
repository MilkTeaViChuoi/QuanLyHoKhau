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
    public partial class NhankhautheoHokhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Maho = Request.QueryString["MaCD"];
            string Diachi = @"Data Source=LNPEACH\SQLEXPRESS;Initial Catalog=QLHoKhau;Integrated Security=True;Encrypt=False";
            /* (): khởi tạo k tham số; khởi tạo 1 tham số; khởi tạo 3 tham số*/
            SqlConnection objketnoi = new SqlConnection(Diachi);
            //mở csdl
            objketnoi.Open();
            //tạo lệnh truy vấn
            string Lenhtruyvan = @"SELECT ThanhVien.MaThanhVien, ThanhVien.MaHo,
                HoTen, GioiTinh,NgheNghiep, QuanHeChuHo, HoKhau.MaHo
                FROM ThanhVien
                inner join HoKhau on ThanhVien.MaHo = HoKhau.MaHo
                Where HoKhau.MaHo = '" + Maho + "'" ;
            //khai báo đối tượng sqldataAdapter để lấy dữ liệu
            SqlDataAdapter objadapter = new SqlDataAdapter(Lenhtruyvan, objketnoi);
            //khai báo đối tượng dataset để chứa dl
            DataSet objds = new DataSet();
            //đẩy dl từ adapter và dataset
            objadapter.Fill(objds);
            //đóng csdl
            objketnoi.Close();
            //lấy dl và hiển thị lên gridview
            grvNktheoHk.DataSource = objds;
            grvNktheoHk.DataBind();
        }
    }
}