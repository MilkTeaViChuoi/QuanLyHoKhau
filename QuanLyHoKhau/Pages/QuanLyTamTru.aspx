<%@ Page Title="" Language="C#" MasterPageFile="~/Khung.Master" AutoEventWireup="true" CodeBehind="QuanLyTamTru.aspx.cs" Inherits="QuanLyHoKhau.Pages.QuanLyTamTru" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbMatr" runat="server" Text="Mã tạm trú"></asp:Label>
    <asp:TextBox ID="txtMatr" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lbMatv" runat="server" Text="Mã thành viên"></asp:Label>
    <asp:TextBox ID="txtMatv" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lbMaho" runat="server" Text="Mã hộ"></asp:Label>
    <asp:TextBox ID="txtMaho" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lbDctr" runat="server" Text="Địa chỉ tạm trú"></asp:Label>
    <asp:TextBox ID="txtDctr" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lbNgaybd" runat="server" Text="Ngày bắt đầu"></asp:Label>
    <asp:TextBox ID="txtNgaybd" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lbNgaykt" runat="server" Text="Ngày kết thúc"></asp:Label>
    <asp:TextBox ID="txtNgaykt" runat="server"></asp:TextBox>
    <br />
    <asp:LinkButton ID="lblThem" runat="server" OnClick="lblThem_Click">Thêm</asp:LinkButton>
    <asp:LinkButton ID="lblSua" runat="server" OnClick="lblSua_Click">Sửa</asp:LinkButton>
    <asp:LinkButton ID="lblXoa" runat="server" OnClick="lblXoa_Click">Xóa</asp:LinkButton>
    <br />
    <asp:Label ID="lbtb" runat="server"></asp:Label>
</asp:Content>
