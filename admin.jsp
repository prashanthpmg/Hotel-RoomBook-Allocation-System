

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="database.dbconfig"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <title>Admin</title>
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
         </style>
         
</head>
<style>
    /* Additional CSS */
    .booking-container {
        width: 80%;
        margin: 20px auto;
        padding: 20px;
        background: #839192;
        border-radius: 12px;
        box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
        backdrop-filter: blur(6px);
    }
    .booking-table {
        margin-top: 20px;
    }
    .booking-table th {
        background: #0f5754;
        color: white;
    }
    .booking-table tr:nth-child(even) {
        background: rgba(255, 255, 255, 0.1);
    }
    .booking-table tr:hover {
        background: rgba(255, 255, 255, 0.3);
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
            <a href="login.jsp">Login</a>
        </nav>
              
  
    </header>
<div class="booking-container">
    <h2>Booking Details</h2>
    <table class="booking-table">
        <tr>
            <th>ID</th>
            <th>Location</th>
            <th>Check-in</th>
            <th>Check-out</th>
            <th>Room Type</th>
            <th>Rooms</th>
            <th>Adults</th>
            <th>Children</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Booking Time</th>
        </tr>
        <% try {
            Connection con = new dbconfig().getConnection();
            Class.forName("com.mysql.jdbc.Driver");
            Statement stat = con.createStatement();
            ResultSet res = stat.executeQuery("SELECT * FROM bookings");
            while(res.next()) { %>
                <tr>
                    <td><%= res.getString("id") %></td>
                    <td><%= res.getString("location") %></td>
                    <td><%= res.getString("checkin") %></td>
                    <td><%= res.getString("checkout") %></td>
                    <td><%= res.getString("roomType") %></td>
                    <td><%= res.getString("rooms") %></td>
                    <td><%= res.getString("adults") %></td>
                    <td><%= res.getString("children") %></td>
                    <td><%= res.getString("email") %></td>
                    <td><%= res.getString("phno") %></td>
                    <td><%= res.getString("booking_time") %></td>
                </tr>
        <%  
            } 
        } catch(Exception e) {
            out.print(e);
        } %>
    </table>
</div>
     
              
          </body>
        <footer>
        &copy; 2025 Hotel Room Booking. All rights reserved.
        </footer>
</html>
