<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menudoc.ascx.cs" Inherits="QuanLyHoKhau.UserControl.Menudoc" %>

<div class="sidebar">
    <div class="sidebar-header">
        <div class="logo">
            <i class="fas fa-chart-line"></i>
            <span class="logo-text">Quản lý hộ khẩu</span>
        </div>
        <button class="toggle-btn" onclick="toggleSidebar()">
            <i class="fas fa-bars"></i>
        </button>
    </div>
    
    <nav class="sidebar-nav">
        <ul class="nav-list">
            <li class="nav-item active">
                <a href="#" class="nav-link">
                    <i class="fas fa-tachometer-alt"></i>
                    <span class="nav-text">Dashboard</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">
                    <i class="fas fa-chart-bar"></i>
                    <span class="nav-text">Quản lý hộ khẩu</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">
                    <i class="fas fa-users"></i>
                    <span class="nav-text">Quản lý tạm trú</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="nav-text">Quản lý tạm vắng</span>
                </a>
            </li>
        </ul>
        
        <div class="nav-divider"></div>
        
       
    </nav>
</div>

<style>
.sidebar {
    width: 230px;
    background: #f0f4f8;
    margin: 0;
    padding: 0;
    height: auto;
    overflow-y: visible;
    box-shadow: 2px 0 10px rgba(0, 0, 0, 0.05);
    position: relative;
    z-index: 1000;
    transition: all 0.3s ease;
}

.sidebar-header {
    padding: 20px;
    border-bottom: 1px solid #cfd8dc;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.logo {
    display: flex;
    align-items: center;
    color: #2c3e50;
    font-size: 18px;
    font-weight: 600;
}

.logo i {
    font-size: 24px;
    margin-right: 12px;
    color: #4a90e2;
}

.toggle-btn {
    background: none;
    border: none;
    color: #2c3e50;
    font-size: 18px;
    cursor: pointer;
    padding: 8px;
    border-radius: 4px;
    transition: background-color 0.3s ease;
}

.toggle-btn:hover {
    background-color: rgba(74, 144, 226, 0.1);
}

.sidebar-nav {
    padding: 20px 0;
}

.nav-list {
    list-style: none;
    padding: 0;
    margin: 0;
}

.nav-item {
    margin: 4px 12px;
}

.nav-link {
    display: flex;
    align-items: center;
    padding: 12px 16px;
    color: #2c3e50;
    text-decoration: none;
    border-radius: 8px;
    transition: all 0.3s ease;
}

.nav-link:hover {
    background-color: #d6e9f8;
    color: #2c3e50;
    transform: translateX(4px);
}

.nav-item.active .nav-link {
    background-color: #4a90e2;
    color: #ffffff;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
}

.nav-link i {
    font-size: 18px;
    margin-right: 16px;
    color: #4a90e2;
    width: 20px;
    text-align: center;
}

.nav-text {
    font-size: 14px;
    font-weight: 500;
    transition: opacity 0.3s ease;
}

.nav-divider {
    height: 1px;
    background-color: #cfd8dc;
    margin: 20px 12px;
}


</style>
