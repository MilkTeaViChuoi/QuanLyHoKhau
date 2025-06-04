<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menungang.ascx.cs" Inherits="QuanLyHoKhau.UserControl.Menungang" %>
<style>
    .menu-main {
        width:100% !important;
        display: flex !important;
        justify-content: space-evenly !important;/*cach deu cac item*/
        list-style: none;
        margin:0;
        padding:0;
        text-align: center;
        font-family:Arial, Helvetica, sans-serif;
        background-color: thistle;
        border-bottom: 3px solid #4a90e2;

        float: none!important;
        position: static !important;
    }
    .menu-main li.item,
    .menu-main li.static {
        flex:1 !important; /* moi item chiem 1 phan deu nhau */
        float: none !important;
        display:block !important;
        text-align:center !important;
        padding: 16px 0 !important;
        text-decoration: none;
        color: #333;
        font-size: 16px;
        font-weight: 500;
        transition: background-color 0.3s, color 0.3s;
    }
    .menu-main li.item a:hover,
    .menu-main li.hover a
    {
        display:block;
        background-color: #f2f7fc;
        color: #007acc;
    }
    .menu-main li.active a{
        background-color: #e0f0ff;
        color: #005999;
        border-bottom: 2px solid #4a90e2;
    }
</style>
<!-- phần bao; từng items; hiệu ứng di chuột; mục đang chọn; tắt hỗ trợ -->
<!--        StaticMenuStyle-CssClass="menu-main"
        StaticItemStyle-CssClass="item"
        StaticHoverStyle-CssClass="hover"
        StaticSelectedStyle-CssClass="active"-->
<div class="menudoc">
    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal"
        RenderingMode="List"
        StaticMenuStyle-CssClass="menu-main"
        StaticItemStyle-CssClass="item"
        StaticHoverStyle-CssClass="hover"
        StaticSelectedStyle-CssClass="active"
        IncludeStyleBlock="false">
        <Items>
            <asp:MenuItem Text="Trang chủ" Value="Trang chủ"></asp:MenuItem>
            <asp:MenuItem Text="Hộ gia đình" Value="Hộ gia đình"></asp:MenuItem>
            <asp:MenuItem Text="Nhân khẩu" Value="Nhân khẩu"></asp:MenuItem>
            <asp:MenuItem Text="Tạm trú" Value="Tạm trú"></asp:MenuItem>
            <asp:MenuItem Text="Tạm vắng" Value="Tạm vắng"></asp:MenuItem>
        </Items>
    </asp:Menu>
</div>