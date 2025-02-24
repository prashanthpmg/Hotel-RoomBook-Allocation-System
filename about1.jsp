<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <style>
        body {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background: linear-gradient(135deg, #5d6d7e, #f2f3f4);
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
            background: #0f5754;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0 8px 32px 0 #9bf5fb;
            backdrop-filter: blur(4px);
            animation: zoomIn 1s ease;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: #9bf5fb;
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
            <a href="admin_login.jsp">AdminLogin</a>
            <a href="login.jsp">Login</a>
        </nav>
         
        
    </header>
         
        <!-- Form -->
        <div class="form-container">
       
          <h2> About us</h2>
          <p >A Hotel Management Room Booking System is a software solution designed to streamline 
              the process of managing hotel reservations, room availability, and guest check-ins/check-outs.
              It allows customers to book rooms online or at the reception while ensuring real-time updates on room status.
              The system typically includes features like user authentication, room categorization,
              pricing management, payment integration, and automated confirmation notifications.
              It helps hotel staff efficiently handle customer details, maintain records, and optimize occupancy rates.
              Additionally, it enhances the guest experience by offering a seamless booking process, reducing errors, 
              and improving operational efficiency in hotel management.
          </p>
        </div>
        
        
      
        <footer>
        &copy; 2025 Hotel Room Booking. All rights reserved.
    </footer>
       
    </body>
</html>