<%-- 
    Document   : login
    Created on : 14 Feb, 2025, 8:29:53 PM
    Author     : prash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>login</title>
        <style>
        body {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background: linear-gradient(135deg, #f2f3f4, #f2f3f4);
            color: #fff;
            animation: fadeIn 1.5s ease-in;
        }
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 20px;
            background: linear-gradient(90deg, #0f5754, #0f5754);
            color: white;
            animation: slideDown 1s ease;
        }
        nav a {
            margin-left: 20px;
            text-decoration: none;
            color: white;
            transition: color 0.3s;
        }
        nav a:hover {
            color: #ffd700;
        }
        main {
            flex: 1;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        footer {
            text-align: center;
            padding: 10px;
            background: linear-gradient(90deg,#0f5754,#0f5754);
            color: white;
            position: fixed;
            bottom: 0;
            width: 100%;
            animation: slideUp 1s ease;
        }
        form {
            margin-bottom: 30px;
            background: rgba(255, 255, 255, 0.2);
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
            backdrop-filter: blur(4px);
            animation: zoomIn 1s ease;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 12px;
            overflow: hidden;
            animation: fadeIn 1.5s ease;
        }
        table, th, td {
            border: 1px solid white;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes slideDown {
            from { transform: translateY(-50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        @keyframes slideUp {
            from { transform: translateY(50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        @keyframes zoomIn {
            from { transform: scale(0.8); opacity: 0; }
            to { transform: scale(1); opacity: 1; }
        }
        /* Login Container Styling */
.login-container {
    text-align: center;
    background: rgba(255, 255, 255, 0.15);
    padding: 30px;
    border-radius: 12px;
    box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
    backdrop-filter: blur(6px);
    animation: zoomIn 1s ease;
    max-width: 350px;
    width: 100%;
    color: #fff;
    margin: 20px auto;
}

.login-container h1 {
    font-size: 28px;
    color: #fff;
    margin-bottom: 15px;
}

.login-container input {
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    border: none;
    border-radius: 7px;
    font-size: 16px;
    outline: none;
    background: #7f8c8d;
    color: #fff;
}

.login-container input::placeholder {
    color: rgba(255, 255, 255, 0.7);
}

.login-container button {
    width: 100%;
    padding: 12px;
    background: #0f5754;
    color: white;
    font-size: 18px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: background 0.3s;
}

.login-container button:hover {
    background: #084542;
}

.login-container a {
    display: block;
    margin-top: 10px;
    color: #ffd700;
    text-decoration: none;
    font-size: 16px;
}

.login-container a:hover {
    text-decoration: underline;
}

    </style>
    </head>
    <body>
          <header>
        <div class="logo">
            <img src="images/logo.jpg" alt="Logo" width="75" height="50">
            <h1>Hotel Room Booking</h1>
        </div>
        <nav>
            <a href="index.jsp">Home</a>
            <a href="about1.jsp">About</a>
            <a href="contact1.jsp">Contact</a>
            <a href="login.jsp">Login</a>
        </nav>
   
    </header>
         <center>
    <div class="login-container">
        <h1>LOGIN</h1>
        <form action="loginservlet" method="post">
            <input type="text" name="username" placeholder="Username" required />
            <input type="password" name="password" placeholder="Password" required />
            <button type="submit">Login</button>
            <a href="register.jsp">Register</a>
        </form>
    </div>
</center>

    </body>
     <footer>
        &copy; 2025 Hotel Room Booking. All rights reserved.
    </footer>
</html>
