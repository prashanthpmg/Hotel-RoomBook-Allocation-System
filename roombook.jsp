<%-- 
    Document   : roombook
    Created on : 18 Feb, 2025, 2:25:30 PM
    Author     : prash
--%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Booking</title>
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
        /* Room Booking Form Styling */
.container {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    width: 100%;
    padding: 20px;
}

.booking-form {
    max-width: 400px;
    width: 100%;
    background: rgba(255, 255, 255, 0.2);
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
    backdrop-filter: blur(6px);
    animation: zoomIn 1s ease;
    text-align: center;
}

.booking-form h3 {
    color: #0f5754;
    font-size: 24px;
    margin-bottom: 20px;
}

.booking-form input,
.booking-form select {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    outline: none;
    background: #7f8c8d;
    color: #fff;
}

.booking-form input::placeholder,
.booking-form select {
    color: rgba(255, 255, 255, 0.7);
}

.booking-form select option {
    color: black;
}

.btn-book {
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

.btn-book:hover {
    background: #084542;
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
    
<form action="roombookservlet" method="post">
<div class="container">
    <div class="booking-form">
        <h3 class="text-center">Room Booking</h3>
        <form action="BookingServlet" method="post">
            <input type="text" name="location" class="form-control my-2" placeholder="Country,City" required>
            <input type="date" name="checkin" class="form-control my-2" required>
            <input type="date" name="checkout" class="form-control my-2" required>

           
            <select name="roomType" class="form-select my-2" required>
                <option value="" disabled selected>Select Room Type</option>
                <option value="Single Room">Single Room</option>
                <option value="Double Room">Double Room</option>
                <option value="Triple Room">Triple Room</option>
            </select>

            <input type="number" name="rooms" class="form-control my-2" placeholder="Number of Rooms" min="1" required>
            <input type="number" name="adults" class="form-control my-2" placeholder="Number of Adults" min="1" required>
            <input type="number" name="children" class="form-control my-2" placeholder="Number of Children" min="0">
            <input type="email" name="email" class="form-control my-2" placeholder="Enter your Email" required>
            <input type="tel" name="phno" class="form-control my-2" placeholder="Enter your Phno" required>
            <button type="submit" class="btn btn-book w-100">Book Now</button>
        </form>
    </div>
</div>

</body>
 <footer>
        &copy; 2025 Hotel Room Booking. All rights reserved.
    </footer>
</html>

