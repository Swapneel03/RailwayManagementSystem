<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.List" %>
<%@ page import="com.booking.model.Train" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- Forward request to StationServlet if the stationList is not available --%>
<% 
    if (request.getAttribute("stationList") == null) { 
%>
    <jsp:forward page="StationServlet" />
<% 
    } 
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Available Trains</title>
    
    <!-- Bootstrap CDN -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome CDN -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    
    <style>
        body {
            background-image: url('background.jpg');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.85);
            padding: 20px;
            border-radius: 10px;
            margin-top: 50px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.3);
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        .form-group label {
            font-weight: bold;
        }
        .table-responsive {
            margin-top: 30px;
        }
     
    .book-now-button {
        background-color: #28a745; /* Green background */
        color: white; /* White text */
        border: none; /* No border */
        padding: 10px 20px; /* Padding */
        border-radius: 5px; /* Rounded corners */
        cursor: pointer; /* Pointer cursor on hover */
    }

    .book-now-button:hover {
        background-color: #218838; /* Darker green on hover */
    }
</style>
        

</head>
<body>
    <div class="container">
        <h2><i class="fas fa-train"></i> Available Trains</h2>
        
        <!-- Welcome message -->
        <%
            String userName = (String) session.getAttribute("userName");
            if (userName != null) {
        %>
            <p>Welcome, <strong><%= userName %></strong>!</p>
        <%
            } else {
        %>
            <p>Welcome, Guest!</p>
        <%
            }
        %>
        
        <!-- Form for selecting stations and travel date -->
        <form action="TrainServlet" method="post">
            <div class="form-group">
                <label for="fromStation"><i class="fas fa-map-marker-alt"></i> Select From Station:</label>
                <select class="form-control" id="fromStation" name="fromStation" required>
                    <option value="" disabled selected>Select From Station</option>
                    <c:forEach var="station" items="${stationList}">
                        <option value="${station.id}">${station.name}</option>
                    </c:forEach>
                </select>
            </div>
            
            <div class="form-group">
                <label for="toStation"><i class="fas fa-map-marker-alt"></i> Select To Station:</label>
                <select class="form-control" id="toStation" name="toStation" required>
                    <option value="" disabled selected>Select To Station</option>
                    <c:forEach var="station" items="${stationList}">
                        <option value="${station.id}">${station.name}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="form-group">
                <label for="travelDate"><i class="fas fa-calendar-alt"></i> Travel Date:</label>
                <input type="date" class="form-control" id="travelDate" name="travelDate" required>
            </div>
            
            <!-- Submit button -->
            <button type="submit" class="btn btn-primary btn-block"><i class="fas fa-search"></i> Search</button>
        </form>

        <!-- Table to display train details -->
           <div class="table-responsive mt-4">
            <table class="table table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th>Train Number</th>
                        <th>Train Name</th>
                        <th>From Station</th>
                        <th>To Station</th>
                        <th>Travel Date</th>
                        <th>Departure Time</th>
                        <th>Arrival Time</th>
                         <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:if test="${not empty trainList}">
                        <c:forEach var="train" items="${trainList}">
                            <tr>
                                <td>${train.trainNumber}</td>
                                <td>${train.trainName}</td>
                                <td>${train.fromStation}</td>
                                <td>${train.toStation}</td>
                                <td>${train.travelDate}</td>
                                <td>${train.departureTime}</td>
                                <td>${train.arrivalTime}</td>
                                 <td>
                            <button class="btn btn-success" onclick="window.location.href='addpassanger.jsp'">Book Now</button>
                        </td>

                            </tr>
                        </c:forEach>
                    </c:if>
                    <c:if test="${empty trainList}">
                        <tr>
                            <td colspan="7">No trains available for the selected criteria.</td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
            
        </div>
    </div>
    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
