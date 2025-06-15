<%@ Page Title="" Language="C#" MasterPageFile="~/Khung.Master" AutoEventWireup="true" CodeBehind="Quanlyhokhau.aspx.cs" Inherits="QuanLyHoKhau.Pages.Quanlyhokhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbMaho" runat="server" Text="Mã hộ"></asp:Label>
    <asp:TextBox ID="txtMaho" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lbTenchuho" runat="server" Text="Tên chủ hộ"></asp:Label>
    <asp:TextBox ID="txtTenchuho" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
    <br />
    <asp:Label ID="lbDiachi" runat="server" Text="Địa chỉ"></asp:Label>
    <asp:TextBox ID="txtDiachi" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lbMachuho" runat="server" Text="Mã chủ hộ"></asp:Label>
    <asp:TextBox ID="txtMachuho" runat="server"></asp:TextBox>
    <br />
    <asp:LinkButton ID="lblThem" runat="server" OnClick="lblThem_Click">Thêm</asp:LinkButton>
    <asp:LinkButton ID="lblSua" runat="server" OnClick="lblSua_Click">Sửa</asp:LinkButton>
    <asp:LinkButton ID="lblXoa" runat="server" OnClick="lblXoa_Click">Xóa</asp:LinkButton>
    <br />
    <asp:Label ID="lbtb" runat="server"></asp:Label>
</asp:Content>
