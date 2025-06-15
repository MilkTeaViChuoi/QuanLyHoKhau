<%@ Page Title="" Language="C#" MasterPageFile="~/Khung.Master" AutoEventWireup="true" CodeBehind="Nhankhau.aspx.cs" Inherits="QuanLyHoKhau.Pages.Nhankhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .custom-grid {
        width: 100%;
        border-collapse: collapse;
        font-family: Arial, sans-serif;
        font-size: 14px;
        margin-top: 15px;
        }

        .custom-grid th {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        .custom-grid td {
            padding: 8px;
            border: 1px solid #ddd;
        }

        .custom-grid tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .custom-grid tr:hover {
            background-color: #e0f7fa;
        }

    </style>


    <asp:GridView ID="grvNhankhau" runat="server" AutoGenerateColumns="False" CssClass="custom-grid">
    <Columns>
        <asp:BoundField DataField="MaHo" HeaderText="Mã hộ" />
        <asp:BoundField DataField="TenChuHo" HeaderText="Tên chủ hộ" />
        <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" />
        <asp:BoundField DataField="MaThanhVien" HeaderText="Mã TV" />
        <asp:BoundField DataField="HoTen" HeaderText="Họ tên" />
        <asp:BoundField DataField="GioiTinh" HeaderText="Giới tính" />
        <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" />
        <asp:BoundField DataField="NgheNghiep" HeaderText="Nghề nghiệp" />
        <asp:BoundField DataField="QuanHeChuHo" HeaderText="Quan hệ" />
    </Columns>
</asp:GridView>


</asp:Content>

