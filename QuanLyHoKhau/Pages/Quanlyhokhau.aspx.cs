using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyHoKhau.Pages
{
    public partial class Quanlyhokhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void lblThem_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtMaho.Text) || string.IsNullOrWhiteSpace(txtTenchuho.Text) || string.IsNullOrWhiteSpace(txtDiachi.Text) || string.IsNullOrWhiteSpace(txtMachuho.Text))
            {
                lbtb.Text = "Vui lòng nhập đầy đủ thông tin!";
                return;
            }
            string diachi = @"Data Source=LNPEACH\SQLEXPRESS;Initial Catalog=QLHoKhau;Integrated Security=True;Encrypt=False";
            SqlConnection objketnoi = new SqlConnection(diachi);
            try
            {
                objketnoi.Open();
                string Lenhtruyvan = @"insert into HoKhau(MaHo, TenChuHo, Diachi, MaChuHo)
                                       values (N'" + txtMaho.Text + "', N'" + txtTenchuho.Text + "', '" + txtDiachi.Text + "', N'" + txtMachuho.Text + "')";
                SqlCommand objcmd = new SqlCommand(Lenhtruyvan, objketnoi);
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

        protected void lblSua_Click(object sender, EventArgs e)
        {
            string diachi = @"Data Source=LNPEACH\SQLEXPRESS;Initial Catalog=QLHoKhau;Integrated Security=True;Encrypt=False";
            SqlConnection objketnoi = new SqlConnection(diachi);
            try
            {
                objketnoi.Open();
                string Lenhsua = @"UPDATE HoKhau
                                    SET Diachi = @dc,
                                        TenChuHo = @tenchuho,
                                        MaChuHo = @machuho
                                    WHERE MaHo = @maho ";
                /* string lenh = @"UPDATE NXB SET TenNXB = N'" + txtTen.Text + "', Diachi = N'" + txtDc.Text + "', Dienthoai = '"+ txtDt.Text +"' WHERE MaNXB = '" + txtMa.Text + "'";*/
                SqlCommand objcmd = new SqlCommand(Lenhsua, objketnoi);
                objcmd.Parameters.AddWithValue("maho", txtMaho.Text);
                objcmd.Parameters.AddWithValue("tenchuho", txtTenchuho.Text);
                objcmd.Parameters.AddWithValue("dc", txtDiachi.Text);
                objcmd.Parameters.AddWithValue("machuho", txtMachuho.Text);
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
                string Lenhxoa = @"delete from HoKhau
                                        where MaHo = @maho";
                SqlCommand objcmd = new SqlCommand(Lenhxoa, objketnoi);
                objcmd.Parameters.AddWithValue("maho", txtMaho.Text);
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