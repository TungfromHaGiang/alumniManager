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
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
          
        }

        .form-container {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
            max-width: 100%;
            text-align: center;
        }

        .form-container h1 {
            margin-bottom: 20px;
            color: #ff7e5f; /* Màu cam */
        }

        .form-container input[type="email"],
        .form-container input[type="password"] {
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 16px;
        }

        .form-container button {
            background: #ff7e5f; /* Màu cam */
            color: white;
            border: none;
            padding: 15px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            transition: background 0.3s ease;
        }

        .form-container button:hover {
            background: #feb47b; /* Màu cam sáng hơn */
        }

        .content {
            margin: 20px 0;
        }

        .pass-link a {
            color: #ff7e5f; /* Màu cam */
            text-decoration: none;
            font-size: 14px;
        }

        .pass-link a:hover {
            text-decoration: underline;
        }
    </style>
    <body>
        <div class="form-container">
        <form action="ForgetPass" method="post">
            <h1>KHÔI PHỤC TÀI KHOẢN</h1>
            <input type="email" placeholder="Email" name="acc" required />
            <input type="password" placeholder="New Password" name="pass" required />
            <div class="content">
                <div class="pass-link">
                    <a href="Login.jsp">Quay trở về đăng nhập</a>
                </div>
            </div>
            <button type="submit">KHÔI PHỤC</button>
        </form>
    </div>
</body>
</html>
