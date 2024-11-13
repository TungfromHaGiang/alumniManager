<%-- 
    Document   : Login
    Created on : Jul 18, 2024, 7:09:16 PM
    Author     : TUNG PHAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Login</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
              integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="css/styleIndex.css" />
        <style>
            @import url("https://fonts.googleapis.com/css2?family=Poppins");

            * {
                box-sizing: border-box;
            }

            body {
                display: flex;
                background-color: #f6f5f7;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                font-family: "Poppins", sans-serif;
                overflow: hidden;
                height: 100vh;
            }

            h1 {
                font-weight: 700;
                letter-spacing: -1.5px;
                margin: 0;
                margin-bottom: 15px;
            }

            h1.title {
                font-size: 45px;
                line-height: 45px;
                margin: 0;
                text-shadow: 0 0 10px rgba(16, 64, 74, 0.5);
            }

            p {
                font-size: 14px;
                font-weight: 100;
                line-height: 20px;
                letter-spacing: 0.5px;
                margin: 20px 0 30px;
                text-shadow: 0 0 10px rgba(16, 64, 74, 0.5);
            }

            span {
                font-size: 14px;
                margin-top: 25px;
            }

            a {
                color: #333;
                font-size: 14px;
                text-decoration: none;
                margin: 15px 0;
                transition: 0.3s ease-in-out;
            }

            a:hover {
                color: #4bb6b7;
            }

            .content {
                display: flex;
                width: 100%;
                height: 50px;
                align-items: center;
                justify-content: space-around;
            }

            .content .checkbox {
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .content input {
                accent-color: #333;
                width: 12px;
                height: 12px;
            }

            .content label {
                font-size: 14px;
                user-select: none;
                padding-left: 5px;
            }

            button {
                position: relative;
                border-radius: 20px;
                border: 1px solid #4bb6b7;
                background-color: #4bb6b7;
                color: #fff;
                font-size: 15px;
                font-weight: 700;
                margin: 10px;
                padding: 12px 80px;
                letter-spacing: 1px;
                text-transform: capitalize;
                transition: 0.3s ease-in-out;
            }

            button:hover {
                letter-spacing: 3px;
            }

            button:active {
                transform: scale(0.95);
            }

            button:focus {
                outline: none;
            }

            button.ghost {
                background-color: rgba(225, 225, 225, 0.2);
                border: 2px solid #fff;
                color: #fff;
            }

            button.ghost i {
                position: absolute;
                opacity: 0;
                transition: 0.3s ease-in-out;
            }

            button.ghost i.register {
                right: 70px;
            }

            button.ghost i.login {
                left: 70px;
            }

            button.ghost:hover i.register {
                right: 40px;
                opacity: 1;
            }

            button.ghost:hover i.login {
                left: 40px;
                opacity: 1;
            }

            form {
                background-color: #fff;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                padding: 0 50px;
                height: 100%;
                text-align: center;
            }

            input {
                background-color: #eee;
                border-radius: 10px;
                border: none;
                padding: 12px 15px;
                margin: 8px 0;
                width: 100%;
            }
            select{
                background-color: #eee;
                border-radius: 10px;
                border: none;
                padding: 12px 15px;
                margin: 8px 0;
                width: 100%;
            }

            .container {
                background-color: #fff;
                border-radius: 25px;
                box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.22);
                position: relative;
                overflow: hidden;
                width: 768px;
                max-width: 100%;
                min-height: 500px;
            }

            .form-container {
                position: absolute;
                top: 0;
                height: 100%;
                transition: all 0.6s ease-in-out;
            }

            .login-container {
                left: 0;
                width: 50%;
                z-index: 2;
            }

            .container.right-panel-active .login-container {
                transform: translateX(100%);
            }

            .register-container {
                left: 0;
                width: 50%;
                opacity: 0;
                z-index: 1;
            }

            .container.right-panel-active .register-container {
                transform: translateX(100%);
                opacity: 1;
                z-index: 5;
                animation: show 0.6s;
            }

            @keyframes show {

                0%,
                49.99% {
                    opacity: 0;
                    z-index: 1;
                }

                50%,
                100% {
                    opacity: 1;
                    z-index: 5;
                }
            }

            .overlay-container {
                position: absolute;
                top: 0;
                left: 50%;
                width: 50%;
                height: 100%;
                overflow: hidden;
                transition: transform 0.6s ease-in-out;
                z-index: 100;
            }

            .container.right-panel-active .overlay-container {
                transform: translate(-100%);
            }

            .overlay {
                color: #fff;
                position: relative;
                left: -100%;
                height: 100%;
                width: 200%;
                transform: translateX(0);
                transition: transform 0.6s ease-in-out;
            }

            .overlay::before {
                content: "";
                position: absolute;
                left: 0;
                right: 0;
                top: 0;
                bottom: 0;
                background: linear-gradient(to top,
                    rgba(46, 94, 109, 0.4) 40%,
                    rgba(46, 94, 109, 0));
            }

            .container.right-panel-active .overlay {
                transform: translateX(50%);
            }

            .overlay-panel {
                position: absolute;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                padding: 0 40px;
                text-align: center;
                top: 0;
                height: 100%;
                width: 50%;
                transform: translateX(0);
                transition: transform 0.6s ease-in-out;
            }

            .overlay-left {
                transform: translateX(-20%);
            }

            .container.right-panel-active .overlay-left {
                transform: translateX(0);
            }

            .overlay-right {
                right: 0;
                transform: translateX(0);
            }

            .container.right-panel-active .overlay-right {
                transform: translateX(20%);
            }

            .social-container {
                margin: 20px 0;
            }

            .social-container a {
                border: 1px solid #dddddd;
                border-radius: 50%;
                display: inline-flex;
                justify-content: center;
                align-items: center;
                margin: 0 5px;
                height: 40px;
                width: 40px;
                transition: 0.3s ease-in-out;
            }

            .social-container a:hover {
                border: 1px solid #4bb6b7;
            }
        </style>
    </head>
    <body>
        <div class="container" id="container">
            <div class="form-container register-container">
                <form action="Register" method="post">
                    <h1>ĐĂNG KÝ</h1>
                    <input type="text" placeholder="Name" name="name" required />
                    <input type="text" placeholder="Email" name="account"/>
                    <input type="password" placeholder="Password" name="password" required/>
                    <input type="text" placeholder="Phone" name="phone" required/>
                    <input type="text" placeholder="Address" name="address" required/>
                    <select id="id" name="gender" required>
                        <option value="SE" disabled selected>Gender</option>
                        <option value="F">Female</option>
                        <option value="M">Male</option>
                    </select>
                    <button type="submit">Register</button>
                    ${messege}
                </form>
            </div>

            <div class="form-container login-container">
                <form action="Login" method="post">
                    <h1>ĐĂNG NHẬP</h1>
                    <input type="text" placeholder="Email" name="acc"/>
                    <input type="password" placeholder="Password" name="pass"/>
                    <div class="content">
                        <div class="checkbox">
                            <input type="checkbox" name="checkbox" id="checkbox" />
                            <label>Lưu đăng nhập</label>
                        </div>
                        <div class="pass-link">
                            <a href="ForgetPassword.jsp">Quên mật khẩu</a>
                        </div>
                    </div>
                    <button type="submit">ĐĂNG NHẬP</button>
                    ${message}
                </form>
            </div>

            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1 class="title">
                            Cựu sinh viên
                        </h1>
                        <p>if Yout have an account, login here and have fun</p>
                        <button class="ghost" id="login">
                            Login
                            <i class="lni lni-arrow-left login"></i>
                        </button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1 class="title">
                            TỔ CHỨC <br />
                            GIÁO DỤC FPT
                        </h1>
                        <p>
                            if you don't have an account yet, join us and start your journey.
                        </p>
                        <button class="ghost" id="register">
                            Register
                            <i class="lni lni-arrow-right register"></i>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <script>
            const registerButton = document.getElementById("register");
            const loginButton = document.getElementById("login");
            const container = document.getElementById("container");

            registerButton.addEventListener("click", () => {
                container.classList.add("right-panel-active");
            });

            loginButton.addEventListener("click", () => {
                container.classList.remove("right-panel-active");
            });
        </script>
    </body>
</html>
