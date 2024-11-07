package com.booking.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.booking.model.Hotel;
import com.booking.util.DBConnection;

public class HotelDAO {
    public List<Hotel> getAllHotels() {
        List<Hotel> hotels = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            // Assuming you have a ConnectionClass for DB connection
            conn = DBConnection.getConnection();
            String query = "SELECT id, name, contact_number, address FROM hotels";
            stmt = conn.prepareStatement(query);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Hotel hotel = new Hotel(rs.getInt("id"), rs.getString("name"), rs.getString("contact_number"), rs.getString("address"));
                hotels.add(hotel);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return hotels;
    }
}
