<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Bookings</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            padding: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1 class="text-center">Your Bookings</h1>
    
    <c:if test="${not empty errorMessage}">
        <div class="alert alert-danger">${errorMessage}</div>
    </c:if>

    <c:if test="${not empty bookings}">
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>Booking ID</th>
                    <th>User ID</th>
                    <th>Booking Date</th>
                    <th>Total Amount</th>
                    <th>Payment Status</th>
                    <th>Travel Date</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="booking" items="${bookings}">
                    <tr>
                        <td>${booking.booking_id}</td>
                        <td>${booking.user_id}</td>
                        <td>${booking.booking_date}</td>
                        <td>${booking.total_amount}</td>
                        <td>${booking.payment_status}</td>
                        <td>${booking.travel_date}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>

    <c:if test="${empty bookings}">
        <div class="alert alert-info">You have no bookings.</div>
    </c:if>

    <div class="text-center">
        <a href="index.jsp" class="btn btn-primary">Go Back</a>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
