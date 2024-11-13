<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Bootstrap User Management Data Table</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link href="css/styleManage.css" rel="stylesheet" type="text/css"/>
        <!-- Montserrat Font -->
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        <!-- Material Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">
        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
            document.getElementById('import').addEventListener('click', function () {
                document.getElementById('file-input').click();
            });
            //Xử lí thanh search
            document.getElementById('searchInput').addEventListener('keydown', function (event) {
                if (event.key === 'Enter') {
                    event.preventDefault(); // Ngăn chặn hành vi mặc định của phím Enter
                    document.getElementById('searchForm').submit(); // Gửi biểu mẫu
                }
            });
            //Cảnh báo admin khi xóa một student
            function confirmDeletion() {
                return confirm("Are you sure you want to delete this student?");
            }
            //SideBar và responsvie
            let sidebarOpen = false;
            const sidebar = document.getElementById('sidebar');

            function openSidebar() {
                if (!sidebarOpen) {
                    sidebar.classList.add('sidebar-responsive');
                    sidebarOpen = true;
                }
            }

            function closeSidebar() {
                if (sidebarOpen) {
                    sidebar.classList.remove('sidebar-responsive');
                    sidebarOpen = false;
                }
            }
        </script>
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
                            <span class="material-icons-outlined">dashboard</span>Trang chủ
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
                        </a>
                    </li>
                </ul>
            </aside>
            <!-- End Sidebar -->
            <main class="main-container">
                <div class="table-responsive">
                    <div class="table-wrapper">
                        <div class="table-title">
                            <div class="row">
                                <div class="col-sm-5">
                                    <h2>Cựu <b>Sinh Viên</b></h2>
                                </div>
                                <div class="col-sm-7 d-flex justify-content-end align-items-center">
                                    <form action="manage" method="GET" class="form-inline mb-0 mr-3" id="searchForm">
                                        <div class="form-group mb-0">
                                            <input type="text" class="form-control" name="name_query" id="searchInput" placeholder="Search for students..." required>
                                        </div>
                                    </form>
                                    <a href="AddStudent.jsp" class="btn btn-secondary"><i class="material-icons">&#xE147;</i> <span>Add New Student</span></a>

                                    <form id="importForm" action="importExcel" method="post" enctype="multipart/form-data">
                                        <label for="file-input" id="import" class="btn btn-secondary">
                                            <i class="material-icons">&#xE24D;</i> <span>Import from Excel</span>
                                        </label>
                                        <input id="file-input" type="file" name="file" style="display: none;" onchange="document.getElementById('importForm').submit();">
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="dropdown">
                            <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="material-icons">sort</i>
                            </a>

                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                <a class="dropdown-item" href="manage?choice=1">Từ A đến Z</a>
                                <a class="dropdown-item" href="manage?choice=2">Từ Z đến A</a>
                            </div>
                        </div>
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên Sinh viên</th>						
                                    <th>Mã Sinh viên</th>
                                    <th>Số điện thoại</th>
                                    <th>Chuyên ngành</th>
                                    <th>Campus</th>
                                    <th>Action</th>

                                </tr>
                            </thead>
                            <tbody>
                                <c:set var="counter" value="1" />
                                <c:forEach items="${requestScope.ndata}" var="n">
                                    <tr>
                                        <td>${counter}</td>
                                        <td><a href="infor?studentID=${n.getStudentID()}">${n.getStudentName()}</a></td>
                                        <td>${n.getStudentID()}</td>                        
                                        <td>${n.getPhoneNumber()}</td>
                                        <td>${n.getMajor()}</td>
                                        <td>${n.getCampus()}</td>
                                        <td>
                                            <a href="deleteStudent?id=${n.getStudentID()}" class="delete" title="Delete" data-toggle="tooltip" onclick="return confirmDeletion();">
                                                <i class="material-icons">&#xE5C9;</i>
                                            </a>
                                        </td>
                                    </tr>
                                    <c:set var="counter" value="${counter + 1}" />
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="pagination">
                    <a href="manage?index=${i-1}">&laquo;</a>
                    <c:forEach begin="1" end="${endP}" var="i">
                        <a href="manage?index=${i}">${i}</a>
                    </c:forEach>
                    
                    <a href="manage?index=${i+1}">&raquo;</a>
                </div>
            </main>
        </div>
    </body>
</html>
