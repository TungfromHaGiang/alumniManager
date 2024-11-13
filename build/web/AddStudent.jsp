<%-- 
    Document   : AddStudent
    Created on : Jul 7, 2024, 5:45:47 PM
    Author     : TUNG PHAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student
        </title>
        <!-- Montserrat Font -->
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        <!-- Material Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">
        <link href="css/styleADD.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="grid-container">
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
                        <a href="#" target="_blank">
                            <span class="material-icons-outlined">settings</span> Settings
                        </a>
                    </li>
                </ul>
            </aside>
            <!-- End Sidebar -->
            <main class="main-container">
                <div class="signup-form">
                    <form action="AddStudent" method="post" enctype="multipart/form-data">
                        <h2>Thông tin sinh viên</h2>
                        <hr>
                        <div class="form-group">
                            <div class="row">
                                <div class="col"><input type="text" class="form-control" name="name" placeholder="Name" required="required">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="id" placeholder="ID" 
                                   required="required">
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <select class="form-control" name="gender" required="required">
                                        <option value="SE" disabled selected>Gender</option>
                                        <option value="M">Male</option>
                                        <option value="F">Female</option>
                                        <!-- Thêm các option khác tại đây -->
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="Address" placeholder="Address" 
                                   required="required">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="Phone" placeholder="Phone"
                                   required="required">
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <select class="form-control" name="Major" required="required">
                                        <option value="SE" disabled selected>Major</option>
                                        <option value="SE">Software Engineering</option>
                                        <option value="MC">Multiple Communication</option>
                                        <option value="AI">Artificial Intelligence</option>
                                        <!-- Thêm các option khác tại đây -->
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col"><input type="text" class="form-control" name="school_year" placeholder="School Year" required="required">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col"><input type="text" class="form-control" name="timeFinish" placeholder="Time finish" required="required">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <select class="form-control" name="campus" required="required">
                                        <option value="" disabled selected>Campus</option>
                                        <option value="Hòa Lạc">Hòa Lạc</option>
                                        <option value="Hồ Chí Minh">Hồ Chí Minh</option>
                                        <option value="Quy Nhơn">Quy Nhơn</option>
                                        <option value="Đà Nẵng">Đà Nẵng</option>
                                        <option value="Cần Thơ">Cần Thơ</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col"><input type="text" class="form-control" name="account" placeholder="Account" required="required">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col"><input type="text" class="form-control" name="password" placeholder="Password" required="required">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col"><input type="file" class="form-control" name="avatar" placeholder="Avatar" required="required">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-check-label"><input type="checkbox" required="required"> Tôi đảm bảo với thông tin
                                trên</label>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-lg">Save</button>
                        </div>
                    </form>
                </div>
            </main>
        </div>
    </body>
</html>
