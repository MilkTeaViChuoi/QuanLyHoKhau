<%@ Page Title="" Language="C#" MasterPageFile="~/Khung.Master" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="QuanLyHoKhau.Pages.Trangchu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <style>
        .dashboard-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            font-family: 'Segoe UI', Arial, sans-serif;
        }

        .tieude {
            text-align: center;
            font-size: 28px;
            font-weight: 600;
            margin-bottom: 30px;
            color: #2c3e50;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .khungnoidung {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 25px;
            width: 90%;
            max-width: 1200px;
        }

        .noidung {
            background: white;
            border-radius: 10px;
            padding: 25px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            display: flex;
            flex-direction: column;
            height: 150px;
            justify-content: space-between;
        }

        .noidung:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.15);
        }

        .metric-title {
            font-size: 16px;
            color: #7f8c8d;
            margin-bottom: 10px;
            font-weight: 500;
        }

        .metric-value {
            font-size: 32px;
            font-weight: 700;
            color: #2c3e50;
            margin: 10px 0;
        }

        .metric-icon {
            align-self: flex-end;
            font-size: 24px;
            color: #3498db;
        }

        /* Color variations for each metric card */
        .noidung:nth-child(1) {
            border-left: 5px solid #3498db;
        }

        .noidung:nth-child(2) {
            border-left: 5px solid #2ecc71;
        }

        .noidung:nth-child(3) {
            border-left: 5px solid #e74c3c;
        }

        @media (max-width: 768px) {
            .khungnoidung {
                grid-template-columns: 1fr;
            }
        }
    </style>

    <div class="dashboard-container">
        <div class="tieude">Tổng quan</div>

        <div class="khungnoidung">
            <div class="noidung">
                <div class="metric-title">Số hộ gia đình</div>
                <div class="metric-value">
                    <asp:Label ID="lbSohogiadinh" runat="server" Text="0" />
                </div>
                <div class="metric-icon">
                    <i class="fas fa-home"></i>
                </div>
            </div>
            
            <div class="noidung">
                <div class="metric-title">Số nhân khẩu</div>
                <div class="metric-value">
                    <asp:Label ID="lbSoNhanKhau" runat="server" Text="0" />
                </div>
                <div class="metric-icon">
                    <i class="fas fa-users"></i>
                </div>
            </div>
            
            <div class="noidung">
                <div class="metric-title">Thống kê khác</div>
                <div class="metric-value">
                    <asp:Label ID="lbLinhTinh" runat="server" Text="0" />
                </div>
                <div class="metric-icon">
                    <i class="fas fa-chart-bar"></i>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Add Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</asp:Content>

