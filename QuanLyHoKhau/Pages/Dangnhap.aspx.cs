using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyHoKhau.Pages
{
    public partial class Dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btDangnhap_Click(object sender, EventArgs e)
        {
            //string username = txtTendn.Text.Trim();
            //string pasword = txtMatkhau.Text;
            if (txtTendn.Text == "admin" &&  txtMatkhau.Text == "123")
            {
                Response.Redirect("~/Pages/Trangchu.aspx");
            }
            else
            {
                lbThongbao.Text = "Mật khẩu hoặc tên đăng nhập không đúng";
            }
        }
    }
}