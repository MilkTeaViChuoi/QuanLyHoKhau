<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="QuanLyHoKhau.Pages.Dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .khungto{
            width:100%;
            height:100vh;
            padding:0;
            background-color:#FFF2EB;
        }
        .khungdn{
            background-color:#FFD6BA;
            border:2px solid black;
            width:40%;
            align-items: center;
            margin: 80px 30% 50% 30%;
            height: 40vh;
            text-align:center;
            border-radius: 10px;
        }
        .Ndung{
            width: 100%;
            margin: 60px 45px;
            text-align: center;
            width:80%;
        }
        .img{
            width: 90px;
            height: 90px;
            align-items:center;
        }
        .anh {
            text-align: center;
        }
        .h1{
            text-align: center;
        }
        .Dn {
            font-size:23pt;
        }
        .Nutdn{
            margin:10px;
            align-items:center;
            font-size:medium;
            background-color:#FFDCDC;
            padding:5px 7px;
            border-radius:5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="khungto">
            <div class="anh">
                <img src="../Images/Quochuy.png" class="img" />
            </div>
            <div class="h1">
                <h1>HỆ THỐNG QUẢN LÝ HỘ KHẨU</h1>
            </div>
            <div class="khungdn">
                <span class="Dn">Đăng nhập</span><br />
                <div class="Ndung">
                    <asp:Label ID="lbDn" runat="server" Text="Tên đăng nhập"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtTendn" runat="server" style="font-size: large"></asp:TextBox>
                    <br />
                    <asp:Label ID="lbMatkhau" runat="server" Text="Mật khẩu"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtMatkhau" runat="server" style="font-size: large"></asp:TextBox>
                    <br />
                    <div>
                        <asp:Button ID="btDangnhap" runat="server" Text="Đăng nhập" CssClass="Nutdn" OnClick="btDangnhap_Click" />
                        <br />
                        <asp:Label ID="lbThongbao" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
