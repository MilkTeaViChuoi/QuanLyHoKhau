<%@ Page Title="" Language="C#" MasterPageFile="~/Khung.Master" AutoEventWireup="true" CodeBehind="QuanLyTamVang.aspx.cs" Inherits="QuanLyHoKhau.Pages.QuanLyTamVang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lbMaTamVang" runat="server" Text="Mã Tạm Vắng"></asp:Label>
    <asp:TextBox ID="tbMaTamVang" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lbMaThanhVien" runat="server" Text="Mã thành viên"></asp:Label>
    <asp:TextBox ID="tbMaThanhVien" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lbMaHo" runat="server" Text="Mã hộ"></asp:Label>
    <asp:TextBox ID="tbMaHo" runat="server" Width="128px"></asp:TextBox>
    <br />
    <asp:Label ID="lbNgayBD" runat="server" Text="Ngày bắt đầu vắng"></asp:Label>
    <asp:TextBox ID="tbNgayBD" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lbNgayKetThuc" runat="server" Text="Ngày kết thúc"></asp:Label>
    <asp:TextBox ID="tbNgayKT" runat="server"></asp:TextBox>
    <br />
    <asp:LinkButton ID="lblThem" runat="server" OnClick="lblThem_Click">Thêm</asp:LinkButton>
    <asp:LinkButton ID="lblSua" runat="server" OnClick="lblSua_Click">Sửa</asp:LinkButton>
    <asp:LinkButton ID="lblXoa" runat="server" OnClick="lblXoa_Click">Xóa</asp:LinkButton>
    <br />
    <asp:Label ID="lbtb" runat="server"></asp:Label>
</asp:Content>
