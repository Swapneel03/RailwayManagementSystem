package com.booking.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;

import com.booking.model.BookingHotels;
import com.booking.util.DBConnection;

public class BookingHotelsDAO {

    public boolean saveBooking(BookingHotels bookingHotels) {
        Connection conn = null;
        PreparedStatement stmt = null;
        boolean isSuccess = false;

        try {
            conn = DBConnection.getConnection();
            String sql = "INSERT INTO booking_hotels (hotel_id, check_in_date, check_out_date) VALUES (?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, bookingHotels.getHotelId());
            stmt.setString(2, bookingHotels.getCheckInDate());
            stmt.setString(3, bookingHotels.getCheckOutDate());

            int rows = stmt.executeUpdate();
            isSuccess = rows > 0;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return isSuccess;
    }
}

