<%@ page import="java.util.List" %>
<%@ page import="com.booking.model.Hotel" %>
<%@ page import="com.booking.dao.HotelDAO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book a Hotel</title>
    
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
    
    <style>
        body {
            padding-top: 20px;
        }
        .fa-hotel {
            color: #ff6b6b;
        }
        .booking-form {
            margin-top: 50px;
            background-color: #f8f9fa;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .booking-form h1 {
            color: #007bff;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="booking-form">
                <h1 class="text-center mb-4"><i class="fas fa-hotel"></i> Book a Hotel</h1>
                
                <form action="BookHotelServlet" method="post" class="form-horizontal">
                    <!-- Select Hotel -->
                    <div class="form-group">
                        <label for="hotel" class="col-sm-2 control-label">Select Hotel:</label>
                        <div class="col-sm-12">
                            <select name="hotelId" id="hotel" class="form-control" required>
                                <option value="">Choose a hotel...</option>
                                <%
                                    HotelDAO hotelDAO = new HotelDAO();
                                    List<Hotel> hotels = hotelDAO.getAllHotels();
                                    for (Hotel hotel : hotels) {
                                %>
                                <option value="<%= hotel.getId() %>"><%= hotel.getName() %></option>
                                <%
                                    }
                                %>
                            </select>
                        </div>
                    </div>
                    
                    <!-- Check-in Date -->
                    <div class="form-group">
                        <label for="checkIn" class="col-sm-2 control-label">Check-in Date:</label>
                        <div class="col-sm-12">
                            <input type="date" name="checkInDate" id="checkIn" class="form-control" required>
                        </div>
                    </div>

                    <!-- Check-out Date -->
                    <div class="form-group">
                        <label for="checkOut" class="col-sm-2 control-label">Check-out Date:</label>
                        <div class="col-sm-12">
                            <input type="date" name="checkOutDate" id="checkOut" class="form-control" required>
                        </div>
                    </div>
                    
                    <!-- Submit Button -->
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-primary"><i class="fas fa-check"></i> Book Now</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
