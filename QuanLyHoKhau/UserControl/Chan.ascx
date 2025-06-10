<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Chan.ascx.cs" Inherits="QuanLyHoKhau.UserControl.Chan" %>
<style>
    .cuoi{
        width:100%;
        display: flex;
        justify-content: space-between;
        background-color: wheat;
        padding: 20px 40px;
        color: #333;
        font-family: Arial, sans-serif;
        font-size: 13px;
        border-top: 2px solid #4a90e2;
    }
</style>
<div class="cuoi">
    <div class="gioithieu">
        <p>Thực hiện: Trần Công Hiếu_2200448</p>
        <p>Khóa: K4618_CNTT1</p>
        <p>Giáo viên hướng dẫn: Ngô Thị Lan</p>
        <p>Trường ĐHCN Việt - Hung</p>
        <p>© 2025</p>
    </div>
    <div class="dichvu">
        DỊCH VỤ<br />
        <asp:HyperLink ID="hplDk" runat="server" EnableTheming="True" NavigateUrl="~/Pages/Dieukhoan.aspx">Điều khoản sử dụng</asp:HyperLink>
        <br />
        <asp:HyperLink ID="hplCs" runat="server" NavigateUrl="~/Pages/Chinhsach.aspx">Chính sách bảo mật thông tin</asp:HyperLink>
        <br />
        <asp:HyperLink ID="hplGt" runat="server" NavigateUrl="~/Pages/Gioithieu.aspx">Giới thiệu</asp:HyperLink>
        <br />
    </div>
    <div class="hotro">
        HỖ TRỢ<br />
        <asp:HyperLink ID="hplHd" runat="server" NavigateUrl="~/Pages/Huongdan.aspx">Hướng dẫn sử dụng</asp:HyperLink>
        <br />
        <asp:HyperLink ID="hplCh" runat="server" NavigateUrl="~/Pages/Cauhoi.aspx">Câu hỏi thường gặp</asp:HyperLink>
        <br />
        <asp:HyperLink ID="hplLh" runat="server" NavigateUrl="~/Pages/Lienhe.aspx">Liên hệ hỗ trợ kỹ thuật</asp:HyperLink>
        <br />
        </div>
</div>
