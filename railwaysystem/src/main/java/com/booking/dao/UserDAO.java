package com.booking.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.booking.model.UserLogin;
import com.booking.util.DBConnection;

public class UserDAO {

    public boolean insertUser(UserLogin userLogin) {
        boolean isSuccess = false;
        Connection con = null;
        PreparedStatement pstmt = null;

        try {
            con = DBConnection.getConnection(); // Get the database connection
            
            // Set auto-commit to true
            con.setAutoCommit(true);

            String sql = "INSERT INTO usertable (username, password, email, phone_number) VALUES (?, ?, ?, ?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, userLogin.getUsername());
            pstmt.setString(2, userLogin.getPassword());
            pstmt.setString(3, userLogin.getEmail());
            pstmt.setString(4, userLogin.getPhoneNumber());

            int rowsAffected = pstmt.executeUpdate();
            isSuccess = rowsAffected > 0; // Check if the insert was successful
        } catch (SQLException e) {
            e.printStackTrace(); // Log the SQL exception
        } finally {
            // Close resources
            if (pstmt != null) {
                try {
                    pstmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            DBConnection.closeConnection(); // Close the connection
        }
        return isSuccess;
    }
}
