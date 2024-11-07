package com.booking.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.booking.model.Passenger;
import com.booking.util.DBConnection;

public class PassengerDAO {
    
    public void savePassengers(List<Passenger> passengers) throws SQLException {
        Connection conn = null;
        PreparedStatement ps = null;
        
        try {
            // Get the connection from your connection class
            conn = DBConnection.getConnection();
            
            String sql = "INSERT INTO passengers (gender, full_name, age, berth_preference, nationality, booking_id) VALUES (?, ?, ?, ?, ?, ?)";
            ps = conn.prepareStatement(sql);
            
            for (Passenger passenger : passengers) {
                ps.setString(1, passenger.getGender());
                ps.setString(2, passenger.getFullName());
                ps.setInt(3, passenger.getAge());
                ps.setString(4, passenger.getBerthPreference());
                ps.setString(5, passenger.getNationality());
                ps.setInt(6, passenger.getBookingId());
                
                ps.addBatch(); // Add the current passenger to the batch
            }
            
            ps.executeBatch(); // Execute all the inserts in the batch
        } finally {
            if (ps != null) ps.close();
            if (conn != null) conn.close();
        }
    }
}

