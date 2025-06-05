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
    
    margin-bottom: 0px;
    height: 100vh;
    background: rgba(128, 190, 230, 0.1);
    position: fixed;
    left: 10px;
    bottom: 100px;
    top: 200px;
    z-index: 1000;
    transition: all 0.3s ease;
    overflow-y: auto;
    box-shadow: 2px 0 10px rgba(0, 0, 0, 0.1);
}

.sidebar.collapsed {
    width: 70px;
}

.sidebar-header {
    padding: 20px;
    border-bottom: 1px solid rgb(80, 199, 188);
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.logo {
    display: flex;
    align-items: center;
    color:rgba(255, 255, 255, 0.3);
    font-size: 18px;
    font-weight: 600;
}

.logo i {
    font-size: 24px;
    margin-right: 12px;
    color: rgb(159, 169, 225);
}

.logo-text {
    transition: opacity 0.3s ease;
}

.sidebar.collapsed .logo-text {
    opacity: 0;
    display: none;
}

.toggle-btn {
    background: none;
    border: none;
    color: black;
    font-size: 18px;
    cursor: pointer;
    padding: 8px;
    border-radius: 4px;
    transition: background-color 0.3s ease;
}

.toggle-btn:hover {
    background-color: rgba(113, 89, 89, 0.3);
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
    color:rgb(18, 18, 18);
    text-decoration: none;
    border-radius: 8px;
    transition: all 0.3s ease;
    position: relative;
    overflow: hidden;
}

.nav-link:hover {
    background-color: #d6e6f2; /* Màu nền xanh nhạt */
    color: #0c2d57;           /* Màu chữ đậm khi hover */
    transform: translateX(4px);
}


.nav-item.active .nav-link {
    background-color: rgb(237, 193, 71);
    color: wheat;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
}

.nav-link i {
    font-size: 18px;
    margin-right: 16px;
    width: 20px;
    text-align: center;
}

.nav-text {
    font-size: 14px;
    font-weight: 500;
    transition: opacity 0.3s ease;
}

.sidebar.collapsed .nav-text {
    opacity: 0;
    display: none;
}

.badge {
    background-color: #ff4757;
    color:lightskyblue;
    font-size: 11px;
    padding: 2px 6px;
    border-radius: 10px;
    margin-left: auto;
    font-weight: 600;
}

.sidebar.collapsed .badge {
    display: none;
}

.nav-divider {
    height: 1px;
    background-color: rgb(162, 228, 200);
    margin: 20px 12px;
}

/* Responsive */
@media (max-width: 768px) {
    .sidebar {
        transform: translateX(-100%);
    }
    
    .sidebar.show {
        transform: translateX(0);
    }
}

/* Scrollbar styling */
.sidebar::-webkit-scrollbar {
    width: 4px;
}

.sidebar::-webkit-scrollbar-track {
    background: rgba(255, 255, 255, 0.1);
}

.sidebar::-webkit-scrollbar-thumb {
    background: rgba(255, 255, 255, 0.3);
    border-radius: 2px;
}

.sidebar::-webkit-scrollbar-thumb:hover {
    background: rgba(255, 255, 255, 0.5);
}
</style>
