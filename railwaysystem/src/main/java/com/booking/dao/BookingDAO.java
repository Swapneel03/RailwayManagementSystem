package com.booking.dao;

import java.sql.*;

import com.booking.model.Booking;

public class BookingDAO {
    private Connection connection;

    public BookingDAO(Connection connection) {
        this.connection = connection;
    }

    public void addBooking(Booking booking) throws SQLException {
        String sql = "INSERT INTO bookings (booking_date, total_amount, payment_status, travel_date) VALUES (?, ?, ?, ?)";
        PreparedStatement stmt = connection.prepareStatement(sql);
        stmt.setDate(1, new java.sql.Date(booking.getBookingDate().getTime()));
        stmt.setDouble(2, booking.getTotalAmount());
        stmt.setString(3, booking.getPaymentStatus());
        stmt.setDate(4, new java.sql.Date(booking.getTravelDate().getTime()));
        stmt.executeUpdate();
    }

    // Additional methods to retrieve bookings can be added here
}
