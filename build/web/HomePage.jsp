<%-- 
    Document   : Main
    Created on : Jul 6, 2024, 4:10:03 AM
    Author     : TUNG PHAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <title>Home Page</title>

        <!-- Montserrat Font -->
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

        <!-- Material Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/styleHomePage.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="grid-container">

            <!-- Header -->
            <header class="header">
                <div class="menu-icon" onclick="openSidebar()">
                    <span class="material-icons-outlined">menu</span>
                </div>
                <div class="header-left">
                    <span class="material-icons-outlined">search</span>
                </div>
                <div class="header-right">
                    <span class="material-icons-outlined">account_circle</span>
                </div>
            </header>
            <!-- End Header -->

            <!-- Sidebar -->
            <aside id="sidebar">
                <div class="sidebar-title">
                    <div class="sidebar-brand">
                        <a href="HomePage"><img src="img_prj/logoFpt.jpg" alt=""/></a>
                    </div>
                    <span class="material-icons-outlined" onclick="closeSidebar()">close</span>
                </div>

                <ul class="sidebar-list">
                    <li class="sidebar-list-item">
                        <a href="HomePage">
                            <span class="material-icons-outlined">dashboard</span> Trang chủ
                        </a>
                    </li>
                    <li class="sidebar-list-item">
                        <a href="manage">
                            <span class="material-icons-outlined">inventory_2</span> Hồ sơ sinh viên
                        </a>
                    </li>
                    <li class="sidebar-list-item">
                        <a href="#" target="_blank">
                            <span class="material-icons-outlined">poll</span> Reports
                        </a>
                    </li>
                    <li class="sidebar-list-item">
                        <a href="Login.jsp" target="_blank">
                            <span class="material-icons-outlined">settings</span> Log out
                        </a>-
                    </li>
                </ul>
            </aside>
            <!-- End Sidebar -->

            <!-- Main -->
            <main class="main-container">
                <div class="main-title">
                    <p class="font-weight-bold">DASHBOARD</p>
                </div>

                <div class="main-cards">

                    <div class="card">
                        <div class="card-inner" onclick="window.location.href = 'manage';">
                            <p class="text-primary">TOTAL</p>
                            <span class="material-icons-outlined text-blue">account_circle</span>
                        </div>
                        <span class="text-primary font-weight-bold">${total}</span>
                    </div>

                    <div class="card" onclick="window.location.href = 'manage?local=1';">
                        <div class="card-inner">
                            <p class="text-primary">HÒA LẠC</p>
                            <span class="material-icons-outlined text-orange">account_circle</span>
                        </div>
                        <span class="text-primary font-weight-bold">${hl}</span>
                    </div>


                    <div class="card" onclick="window.location.href = 'manage?local=2';">
                        <div class="card-inner">
                            <p class="text-primary">TP.HỒ CHÍ MINH</p>
                            <span class="material-icons-outlined text-green">account_circle</span>
                        </div>
                        <span class="text-primary font-weight-bold">${hcm}</span>
                    </div>


                    <div class="card" onclick="window.location.href = 'manage?local=3';">
                        <div class="card-inner">
                            <p class="text-primary">ĐÀ NẴNG</p>
                            <span class="material-icons-outlined text-yellow">account_circle</span>
                        </div>
                        <span class="text-primary font-weight-bold">${dn}</span>
                    </div>

                    <div class="card" onclick="window.location.href = 'manage?local=5';">
                        <div class="card-inner">
                            <p class="text-primary">CẦN THƠ</p>
                            <span class="material-icons-outlined text-primary">account_circle</span>
                        </div>
                        <span class="text-primary font-weight-bold">${ct}</span>
                    </div>

                    <div class="card" onclick="window.location.href = 'manage?local=4';">
                        <div class="card-inner">
                            <p class="text-primary">QUY NHƠN</p>
                            <span class="material-icons-outlined text-red">account_circle</span>
                        </div>
                        <span class="text-primary font-weight-bold">${qn}</span>
                    </div>
                </div>

                

                </div>
            </main>
            <!-- End Main -->         
        </div>

        <!-- Scripts -->
        <!-- ApexCharts -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/apexcharts/3.35.3/apexcharts.min.js"></script>
        <!-- Custom JS -->
        
        <script src="js/scriptsHomePage.js"></script>
    </body>
</html>
