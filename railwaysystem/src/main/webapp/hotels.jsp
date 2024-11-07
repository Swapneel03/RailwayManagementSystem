<%@ page import="java.util.List" %>
<%@ page import="com.booking.model.Hotel" %>
<%@ page import="com.booking.dao.HotelDAO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel List</title>
    
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
        .fa-phone {
            color: #1dd1a1;
        }
        .fa-map-marker-alt {
            color: #ff9f43;
        }
    </style>
</head>
<body>

<div class="container">
    <h1 class="text-center mb-4"><i class="fas fa-hotel"></i> Hotels in Odisha</h1>
    
    <div class="table-responsive">
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">#</th>
                    <th scope="col"><i class="fas fa-hotel"></i> Hotel Name</th>
                    <th scope="col"><i class="fas fa-phone"></i> Contact Number</th>
                    <th scope="col"><i class="fas fa-map-marker-alt"></i> Address</th>
                </tr>
            </thead>
            <tbody>
                <%
                    HotelDAO hotelDAO = new HotelDAO();
                    List<Hotel> hotels = hotelDAO.getAllHotels();
                    for (Hotel hotel : hotels) {
                %>
                <tr>
                    <th scope="row"><%= hotel.getId() %></th>
                    <td><%= hotel.getName() %></td>
                    <td><%= hotel.getContactNumber() %></td>
                    <td><%= hotel.getAddress() %></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
