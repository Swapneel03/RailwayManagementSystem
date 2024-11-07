package com.booking.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.model.station;
import com.booking.util.DBConnection;

// Importing the Station model


@WebServlet("/StationServlet")
public class StationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Assuming you already have a connection class
            Connection conn = DBConnection.getConnection(); // Your connection class
            String query = "SELECT station_id, station_name FROM station_table";
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            ArrayList<station> stations = new ArrayList<>();
            while (rs.next()) {
                stations.add(new station(rs.getInt("station_id"), rs.getString("station_name")));
            }

            // Set the station list to the request attribute
            request.setAttribute("stationList", stations);

            // Forward the request to the JSP page
            request.getRequestDispatcher("station.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
