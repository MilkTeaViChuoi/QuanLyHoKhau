using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyHoKhau.Pages
{
    public partial class QuanLyTamTru : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void lblThem_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrWhiteSpace(txtMaho.Text) || string.IsNullOrWhiteSpace(txtMatr.Text) || string.IsNullOrWhiteSpace(txtMatv.Text) || string.IsNullOrWhiteSpace(txtNgaybd.Text) || string.IsNullOrWhiteSpace(txtNgaykt.Text) || string.IsNullOrWhiteSpace(txtDctr.Text))
            {
                lbtb.Text = "Vui lòng nhập đầy đủ thông tin!";
                return;
            }
            string diachi = @"Data Source=LNPEACH\SQLEXPRESS;Initial Catalog=QLHoKhau;Integrated Security=True;Encrypt=False";
            SqlConnection objketnoi = new SqlConnection(diachi);
            /*try
            {*/
                objketnoi.Open();
                string Lenhtruyvan = @"insert into TamTru(MaHo, MaTamTru, MaThanhVien, DiaChiTamTru, NgayBatDau, NgayKetThuc)
                                       values (@maho, @matr, @matv, @dctr, @ngaybd, @ngaykt)";
                SqlCommand objcmd = new SqlCommand(Lenhtruyvan, objketnoi);
                objcmd.Parameters.AddWithValue("@matr", txtMatr.Text);
                objcmd.Parameters.AddWithValue("@maho", txtMaho.Text);
                objcmd.Parameters.AddWithValue("@dctr", txtDctr.Text);
                objcmd.Parameters.AddWithValue("@matv", txtMatv.Text);
                objcmd.Parameters.AddWithValue("@ngaybd", DateTime.Parse(txtNgaybd.Text));
                objcmd.Parameters.AddWithValue("@ngaykt", DateTime.Parse(txtNgaykt.Text));
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
                string Lenhsua = @"UPDATE TamTru
                                    SET DiachiTamTru = @dctr,
                                        MaHo = @maho,
                                        MaThanhVien = @matv,
                                        NgayBatDau = @ngaybd,
                                        NgayKetThuc= @ngaykt
                                    WHERE MaTamTru = @matr ";
                /* string lenh = @"UPDATE NXB SET TenNXB = N'" + txtTen.Text + "', Diachi = N'" + txtDc.Text + "', Dienthoai = '"+ txtDt.Text +"' WHERE MaNXB = '" + txtMa.Text + "'";*/
                SqlCommand objcmd = new SqlCommand(Lenhsua, objketnoi);
                objcmd.Parameters.AddWithValue("matr", txtMatr.Text);
                objcmd.Parameters.AddWithValue("maho", txtMaho.Text);
                objcmd.Parameters.AddWithValue("dctr", txtDctr.Text);
                objcmd.Parameters.AddWithValue("matv", txtMatv.Text);
                objcmd.Parameters.AddWithValue("ngaybd", DateTime.Parse(txtNgaybd.Text));
                objcmd.Parameters.AddWithValue("ngaykt", DateTime.Parse(txtNgaykt.Text));
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
            /*try
            {*/
                objketnoi.Open();
                string Lenhxoa = @"delete from TamTru
                                        where MaTamTru = @Matr";
                SqlCommand objcmd = new SqlCommand(Lenhxoa, objketnoi);
                objcmd.Parameters.AddWithValue("Matr", txtMatr.Text);
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
    }
}