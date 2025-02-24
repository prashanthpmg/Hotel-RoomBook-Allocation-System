<%-- 
    Document   : contact1
    Created on : 18 Feb, 2025, 1:44:07 PM
    Author     : prash
--%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Management</title>
    
</head>
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
        /* Contact Box Styling */
.contact-box {
    text-align: center;
    background: rgba(255, 255, 255, 0.15);
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
    backdrop-filter: blur(6px);
    animation: zoomIn 1s ease;
    max-width: 400px;
    width: 100%;
    color: #fff;
    margin: 20px auto;
}

.contact-box h2 {
    font-size: 28px;
    color: #7f8c8d;
    margin-bottom: 10px;
}

.contact-box p {
    font-size: 16px;
    margin-bottom: 20px;
}

.contact-box input {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    outline: none;
    background: #7f8c8d;
    color: #fff;
}

.contact-box input::placeholder {
    color: rgba(255, 255, 255, 0.7);
}

.contact-box button {
    width: 100%;
    padding: 10px;
    background: #0f5754;
    color: white;
    font-size: 18px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: background 0.3s;
}

.contact-box button:hover {
    background: #084542;
}

    </style>
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
            <a href="admin_login.jsp">AdminLogin</a>
            <a href="login.jsp">Login</a>
        </nav>
         
        
    </header>
         

    <!-- Contact Form Section -->
    <div class="container">
        <div class="contact-box">
            <center>
            <h2>Contact Us</h2>
            <p>Fill in your details and we will get back to you.</p>
            
            <form action="contactservlet" method="post">
              Name <input type="text" name="name" placeholder="Enter Name" required><br>
              Phone Number <input type="number" name="phoneno" placeholder="Phone Number" required><br>
              Address <input type="text" name="address" placeholder="Address" required><br>
              Email <input type="email" name="email" placeholder="Email" required><br>
                <button type="submit">Submit</button>
            </form>
            </center>
        </div>
    </div>
     <footer>
        &copy; 2025 Hotel Room Booking. All rights reserved.
    </footer>

</body>

</html>
