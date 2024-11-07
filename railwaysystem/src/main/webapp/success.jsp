<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Successful</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="text-center text-success"><i class="fas fa-check-circle"></i> Booking Successful!</h2>
    <p class="text-center">Thank you for booking with us!</p>
    
    <div class="text-center">
        <h4>Your Booking ID: 
            <span class="text-info">
                <%= request.getSession().getAttribute("bookingId") != null ? request.getSession().getAttribute("bookingId").toString() : "N/A" %>
            </span>
        </h4>
    </div>
    
    <div class="text-center mt-4">
        <a href="index.jsp" class="btn btn-primary"><i class="fas fa-home"></i> Back to Home</a>
    </div>
</div>

<!-- Bootstrap JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
