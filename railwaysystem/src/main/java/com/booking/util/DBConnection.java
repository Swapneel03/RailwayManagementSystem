package com.booking.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/train";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "swapneel03";

    private static Connection con = null;

    public static Connection getConnection() throws SQLException {
        if (con == null || con.isClosed()) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            con.setAutoCommit(true); // Set auto-commit to true
        }
        return con;
    }

    public static void closeConnection() {
        if (con != null) {
            try {
                con.close();
                con = null; // Reset the connection to null after closing
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
