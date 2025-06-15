using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyHoKhau.Pages
{
    public partial class QuanLyTamVang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void lblThem_Click(object sender, EventArgs e)
        {
            DateTime ngayBD, ngayKT;
            if (string.IsNullOrWhiteSpace(tbMaTamVang.Text) || string.IsNullOrWhiteSpace(tbMaThanhVien.Text) || string.IsNullOrWhiteSpace(tbMaHo.Text) || string.IsNullOrWhiteSpace(tbNgayBD.Text) || string.IsNullOrWhiteSpace(tbNgayKT.Text))
            {
                lbtb.Text = "Vui lòng nhập đầy đủ thông tin!";
                if (!DateTime.TryParse(tbNgayBD.Text.Trim(), out ngayBD) || !DateTime.TryParse(tbNgayKT.Text.Trim(), out ngayKT))
                {
                    lbtb.Text = "Sai định dạng ngày";
                    return;
                }
                return;
            }
            string diachi = @"Data Source=LNPEACH\SQLEXPRESS;Initial Catalog=QLHoKhau;Integrated Security=True;Encrypt=False";
            SqlConnection objketnoi = new SqlConnection(diachi);
            /*try
            {*/
            objketnoi.Open();
            string Lenhtruyvan = @"INSERT INTO TamVang(MaHo, MaTamVang, MaThanhVien, NgayBDVang, NgayKTVang)
                       VALUES (N'" + tbMaHo.Text + "', N'" + tbMaTamVang.Text + "', N'" + tbMaThanhVien.Text + "', N'" + tbNgayBD.Text + "', N'" + tbNgayKT.Text + "')";
            SqlCommand objcmd = new SqlCommand(Lenhtruyvan, objketnoi);
            int Ktra = objcmd.ExecuteNonQuery();
            objketnoi.Close();
            if (Ktra == 1)
            {
                lbtb.Text = "Cập nhật thành công";
            }
            /*}
            catch (Exception ex)
            {
                lbtb.Text = "lỗi";
            }*/
        }

        protected void lblSua_Click(object sender, EventArgs e)
        {
            string diachi = @"Data Source=LNPEACH\SQLEXPRESS;Initial Catalog=QLHoKhau;Integrated Security=True;Encrypt=False";
            SqlConnection objketnoi = new SqlConnection(diachi);
            try
            {
                objketnoi.Open();
                string Lenhsua = @"UPDATE TamVang
                                    SET MaHo = @maho,
                                        MaThanhVien = @matv,
                                        NgayBDVang = @ngaybd,
                                        NgayKTVang= @ngaykt
                                    WHERE MaTamVang = @matvang ";
                /* string lenh = @"UPDATE NXB SET TenNXB = N'" + txtTen.Text + "', Diachi = N'" + txtDc.Text + "', Dienthoai = '"+ txtDt.Text +"' WHERE MaNXB = '" + txtMa.Text + "'";*/
                SqlCommand objcmd = new SqlCommand(Lenhsua, objketnoi);
                objcmd.Parameters.AddWithValue("matvang", tbMaTamVang.Text);
                objcmd.Parameters.AddWithValue("matv", tbMaThanhVien.Text);
                objcmd.Parameters.AddWithValue("maho", tbMaHo.Text);
                objcmd.Parameters.AddWithValue("ngaybd", tbNgayBD.Text);
                objcmd.Parameters.AddWithValue("ngaykt", tbNgayKT.Text);
                int Ktra = objcmd.ExecuteNonQuery();
                objketnoi.Close();
                if (Ktra == 1)
                {
                    lbtb.Text = "Cập nhật thành công";
                }
            }
            catch (Exception ex)
            {
                lbtb.Text = "lỗi";
            }
        }

        protected void lblXoa_Click(object sender, EventArgs e)
        {
            string diachi = @"Data Source = LNPEACH\SQLEXPRESS; Initial Catalog = QLHoKhau; Integrated Security = True; Encrypt = False";
            SqlConnection objketnoi = new SqlConnection(diachi);
            try
            {
                objketnoi.Open();
                string Lenhxoa = @"delete from TamVang
                                        where MaTamVang = @matvang";
                SqlCommand objcmd = new SqlCommand(Lenhxoa, objketnoi);
                objcmd.Parameters.AddWithValue("MaTamVang", tbMaTamVang.Text);
                int Ktra = objcmd.ExecuteNonQuery();
                objketnoi.Close();
                if (Ktra == 1)
                {
                    lbtb.Text = "Cập nhật thành công";
                }
            }
            catch (Exception ex)
            {
                lbtb.Text = "lỗi";
            }
        }
    }
}