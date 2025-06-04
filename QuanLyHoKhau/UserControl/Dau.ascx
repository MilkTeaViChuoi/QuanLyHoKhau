<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Dau.ascx.cs" Inherits="QuanLyHoKhau.UserControl.Dau" %>
<style>
    .img{
        width: 90px;
        height: 90px;
    }
    .Khung{
        display:flex;
        flex-direction:row;
        padding-inline: 30px;
        height: 120px;
        background-color: wheat;
    }
    .logo{
        display: flex;
        align-items: center;
        justify-content: center;
        margin-right: 25px;
    }
    .chu{
        flex:1;
        text-align: center;
        color: darkred;
        font-family: Arial, Helvetica, sans-serif;
        font-size: 24pt;
        margin: 20px 25px 20px;
    }
    .dn{
        display: flex;
        align-items:center;
        justify-content: center;
        margin-left: 25px;
    }
    .nut{
        background-color: #FAF3E0;
        color: #333333;
        border: 1px solid #CDBE91;
        border-radius: 6px;
        font-size:20px;
        cursor: pointer;
        box-shadow: 0 2px 4px rgb(128, 128, 128);
        transition: background-color 0.3s ease;
    }
</style>
<div class="Khung">
    <div class="logo">
        <img src="../Images/Quochuy.png" class="img" />
    </div>
    <div class="chu">
        HỆ THỐNG QUẢN LÝ HỘ KHẨU
        <br />
        Ủy ban nhân dân phường Xuân Khanh
    </div>
    <div class="dn">
        <asp:Button ID="btDn" runat="server" Text="Đăng nhập" CssClass="nut" />
    </div>
</div>