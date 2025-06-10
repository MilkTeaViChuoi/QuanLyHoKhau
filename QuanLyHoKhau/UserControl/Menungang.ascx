<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menungang.ascx.cs" Inherits="QuanLyHoKhau.UserControl.Menungang" %>
<style>
    .menuto{
        width:100%;
        display: flex;
        margin:0;
        background-color: ;
        border-bottom: 3px solid #4a90e2;
        justify-content: space-evenly;
    }
    .menu-main{
        list-style: none;
        text-align: center;
        font-family:Arial, Helvetica, sans-serif;
        
    }
    .item_menu{
        flex:1 ; 
        float: none ;
        display:block ;
        text-align:center;
        text-decoration: none;
        color: #333;
        font-size: 16px;
        font-weight: 150;
        transition: background-color 0.3s, color 0.3s;
        margin-right:100px;
        padding:10px 20px;
    }
    .menuto .item_menu:hover{
        display:block;
        background-color: #F0FFFF;
        color: #007acc;
    }
    .menu .active{
        background-color: black;
        color: #005999;
        border-bottom: 2px solid #4a90e2;
    }
</style>

<div>
    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal"
        IncludeStyleBlock="false" CssClass="menuto">
        <Items>
            <asp:MenuItem Text="Trang chủ" Value="Trang chủ" NavigateUrl="~/Pages/Trangchu.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Hộ gia đình" Value="Hộ gia đình"></asp:MenuItem>
            <asp:MenuItem Text="Nhân khẩu" Value="Nhân khẩu"></asp:MenuItem>
            <asp:MenuItem Text="Tạm trú" Value="Tạm trú"></asp:MenuItem>
            <asp:MenuItem Text="Tạm vắng" Value="Tạm vắng"></asp:MenuItem>
        </Items>

        <StaticHoverStyle CssClass="hover"></StaticHoverStyle>

        <StaticMenuItemStyle CssClass="item_menu" />

        <StaticMenuStyle CssClass="menu-main"></StaticMenuStyle>

        <StaticSelectedStyle CssClass="active"></StaticSelectedStyle>
    </asp:Menu>
</div>