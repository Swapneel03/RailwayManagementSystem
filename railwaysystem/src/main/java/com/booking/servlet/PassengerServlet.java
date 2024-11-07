package com.booking.servlet;




import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.dao.PassengerDAO;
import com.booking.model.Passenger;

@WebServlet("/bookTickets")
public class PassengerServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get passenger count
        int passengerCount = Integer.parseInt(request.getParameter("passengerCount"));
        List<Passenger> passengers = new ArrayList<>();
        int bookingId = generateBookingId(); // You need to implement this method
        
        // Loop through passengers and collect the details
        for (int i = 1; i <= passengerCount; i++) {
            String gender = request.getParameter("gender" + i);
            String fullName = request.getParameter("name" + i);
            int age = Integer.parseInt(request.getParameter("age" + i));
            String berthPreference = request.getParameter("berth" + i);
            String nationality = request.getParameter("nationality" + i);
            
            Passenger passenger = new Passenger();
            passenger.setGender(gender);
            passenger.setFullName(fullName);
            passenger.setAge(age);
            passenger.setBerthPreference(berthPreference);
            passenger.setNationality(nationality);
            passenger.setBookingId(bookingId);
            
            passengers.add(passenger);
        }
        
        // Save passengers to the database using DAO
        PassengerDAO passengerDAO = new PassengerDAO();
        try {
            passengerDAO.savePassengers(passengers);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        // Redirect to success page or display a success message
        response.sendRedirect("success.jsp");
    }

    // This method should generate a new booking ID (auto-increment or logic based)
    private int generateBookingId() {
        // Implementation to generate booking ID (could be auto-generated from DB)
        return 1; // Example value, replace with actual logic
    }
}
