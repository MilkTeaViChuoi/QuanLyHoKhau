﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyHoKhau.UserControl
{
    public partial class Dau : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btDn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Dangnhap.aspx");
        }
    }
}