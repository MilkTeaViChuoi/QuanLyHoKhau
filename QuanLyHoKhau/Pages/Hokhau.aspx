<%@ Page Title="" Language="C#" MasterPageFile="~/Khung.Master" AutoEventWireup="true" CodeBehind="Hokhau.aspx.cs" Inherits="QuanLyHoKhau.Pages.Hokhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    .custom-gridview {
        border-collapse: collapse;
        width: 100%;
        font-family: 'Segoe UI', sans-serif;
        font-size: 14px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        overflow: hidden;
    }

    .custom-gridview th {
        background-color: #4a90e2;
        color: white;
        padding: 12px;
        text-align: left;
    }

    .custom-gridview td {
        padding: 10px;
        background-color: #ffffff;
        color: #333;
    }

    .custom-gridview tr:nth-child(even) td {
        background-color: #f9f9f9;
    }

    .custom-gridview tr:hover td {
        background-color: #e6f0ff;
        cursor: pointer;
    }

    .custom-gridview .selected {
        background-color: #007acc !important;
        color: white !important;
    }

    .custom-gridview tfoot td {
        background-color: #f1f1f1;
        font-weight: bold;
    }

    .custom-gridview .pager {
        text-align: center;
        padding: 10px;
    }
</style>

    <asp:GridView ID="grvHokhau" runat="server" CssClass="custom-gridview">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="MaHo" DataNavigateUrlFormatString="~/Pages/NhankhautheoHokhau.aspx?MaHo={0}" Text="Nk -&gt; Hk" />
            <asp:HyperLinkField DataNavigateUrlFields="MaHo" DataNavigateUrlFormatString="~/Pages/TamtrutheoHoKhau.aspx?MaHo={0}" Text="Tt -&gt; Hk" />
            <asp:HyperLinkField DataNavigateUrlFields="MaHo" DataNavigateUrlFormatString="~/Pages/TamvangtheoHokhau.aspx?MaHo={0}" Text="Tv -&gt; Hk" />
        </Columns>
</asp:GridView>

        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
</asp:Content>
