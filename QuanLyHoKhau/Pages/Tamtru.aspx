<%@ Page Title="" Language="C#" MasterPageFile="~/Khung.Master" AutoEventWireup="true" CodeBehind="Tamtru.aspx.cs" Inherits="QuanLyHoKhau.Pages.Tamtru" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .custom-grid {
    width: 100%;
    border-collapse: collapse;
    font-family: Arial, sans-serif;
    font-size: 14px;
    margin-top: 20px;
}
.custom-grid th {
    background-color: #43A047;
    color: white;
    padding: 10px;
    text-align: left;
}
.custom-grid td {
    padding: 8px;
    border: 1px solid #ccc;
}
.custom-grid tr:nth-child(even) {
    background-color: #f9f9f9;
}
.custom-grid tr:hover {
    background-color: #e8f5e9;
}

    </style>
    <asp:GridView ID="grvTamtru" runat="server" CssClass="custom-grid" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="MaTamTru" HeaderText="Mã tạm trú" />
        <asp:BoundField DataField="MaThanhVien" HeaderText="Mã thành viên" />
        <asp:BoundField DataField="HoTen" HeaderText="Họ tên" />
        <asp:BoundField DataField="MaHo" HeaderText="Mã hộ" />
        <asp:BoundField DataField="DiaChiTamTru" HeaderText="Địa chỉ tạm trú" />
        <asp:BoundField DataField="NgayBatDau" HeaderText="Từ ngày" DataFormatString="{0:dd/MM/yyyy}" />
        <asp:BoundField DataField="NgayKetThuc" HeaderText="Đến ngày" DataFormatString="{0:dd/MM/yyyy}" />
    </Columns>
</asp:GridView>

</asp:Content>
