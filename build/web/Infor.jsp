<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Information</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
        <!-- Material Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/styleInfor.css" rel="stylesheet" type="text/css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
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
        <!-- Main -->
        <main class="main-container emp-profile">
            <div class="row">
                <div class="col-md-4">
                    <div class="profile-img">
                        <img src="${n.getAvatar()}" alt="Ảnh thẻ sinh viên"/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="profile-head">
                        <h5>
                            ${n.getStudentName()}
                        </h5>
                        <h6>
                            ${n.getMajorName()}
                        </h6>
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                                <p class="nav-link active">About</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Edit Profile
                    </button>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="profile-work">
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="tab-content profile-tab" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>StudentID</label>
                                </div>
                                <div class="col-md-6">
                                    <p>${n.getStudentID()}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Address</label>
                                </div>
                                <div class="col-md-6">
                                    <p>${n.getAddress()}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Phone</label>
                                </div>
                                <div class="col-md-6">
                                    <p>${n.getPhoneNumber()}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Gender</label>
                                </div>
                                <div class="col-md-6">
                                    <c:if test="${n.getGender()=='M'}">
                                        <p>Male</p>
                                    </c:if> 
                                    <c:if test="${n.getGender()=='F'}">
                                        <p>Female</p>
                                    </c:if> 
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>User Id</label>
                                </div>
                                <div class="col-md-6">
                                    <p>${n.getStudentID()}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Account</label>
                                </div>
                                <div class="col-md-6">
                                    <p>${n.getAccount()}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Password</label>
                                </div>
                                <div class="col-md-6">
                                    <p>${n.getPassword()}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Cohort</label>
                                </div>
                                <div class="col-md-6">
                                    <p>${n.getSchool_year()}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Time finish</label>
                                </div>
                                <div class="col-md-6">
                                    <p>${n.getTimeFinish()}</p>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Campus</label>
                                </div>
                                <div class="col-md-6">
                                    <p>${n.getCampus()}</p>
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </main> 
    </div>
    <!-- Modal: Form update student's information -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                    <button id="btn-open" type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="Update" method="post" enctype="multipart/form-data">
                        <h2>Thông tin sinh viên</h2>
                        <hr>
                        <div class="form-group">
                            <div class="row">
                                <div class="col"><input type="text" value="${n.getStudentName()}" class="form-control" name="name" placeholder="Name" required="required">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" value="${n.getStudentID()}" name="id" placeholder="ID" 
                                   required="required">
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <select class="form-control" name="gender" required="required">
                                        <option value="SE" disabled selected>${n.getGender()}</option>
                                        <option value="M">Male</option>
                                        <option value="F">Female</option>
                                        <!-- Thêm các option khác tại đây -->
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" value="${n.getAddress()}" name="Address" placeholder="Address" 
                                   required="required">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" value="${n.getPhoneNumber()}" name="Phone" placeholder="Phone"
                                   required="required">
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col">
                                    <select class="form-control" name="Major" required="required">
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
                                <div class="col"><input type="text" class="form-control" value="${n.getSchool_year()}" name="school_year" placeholder="School Year" required="required">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col"><input type="text" class="form-control" value="${n.getTimeFinish()}" name="timeFinish" placeholder="Time finish" required="required">
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
                                <div class="col"><input type="text" class="form-control" value="${n.getAccount()}" name="account" placeholder="Account" required="required">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col"><input type="text" class="form-control" value="${n.getPassword()}" name="password" placegetAccountholder="Password" required="required">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col"><input type="file" class="form-control" name="avatar" placeholder="Avatar">
                                </div>
                            </div>
                        </div>
                        <button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="sumbit" class="btn btn-primary">Save changes</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
