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

import com.booking.model.Train;
import com.booking.model.station;
import com.booking.util.DBConnection;

@WebServlet("/TrainServlet")
public class TrainServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Handle GET requests here if needed, or redirect to the form page
        response.sendRedirect("station.jsp"); // Redirect to the JSP page
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get parameters from the request
        int fromStationId = Integer.parseInt(request.getParameter("fromStation"));
        int toStationId = Integer.parseInt(request.getParameter("toStation"));
        String travelDate = request.getParameter("travelDate");

        try {
            Connection conn = DBConnection.getConnection(); // Your connection class

            // SQL query to fetch train details based on selected criteria
            String query = "SELECT train_number, train_name, from_station_id, to_station_id, travel_date, departure_time, arrival_time " +
                           "FROM traindes " +
                           "WHERE from_station_id = ? AND to_station_id = ? AND travel_date = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setInt(1, fromStationId);
            ps.setInt(2, toStationId);
            ps.setString(3, travelDate);
            ResultSet rs = ps.executeQuery();

            ArrayList<Train> trainList = new ArrayList<>();
            while (rs.next()) {
                Train train = new Train();
                train.setTrainNumber(rs.getInt("train_number"));
                train.setTrainName(rs.getString("train_name"));
                train.setFromStation(rs.getInt("from_station_id")); // Adjust based on your model
                train.setToStation(rs.getInt("to_station_id"));     // Adjust based on your model
                train.setTravelDate(rs.getString("travel_date"));
                train.setDepartureTime(rs.getString("departure_time"));
                train.setArrivalTime(rs.getString("arrival_time"));
                trainList.add(train);
            }

            // Set the train list to the request attribute
            request.setAttribute("trainList", trainList);
            // Fetch the station list again to display in the dropdown
            request.setAttribute("stationList", getStationList());

            // Forward the request back to the JSP page
            request.getRequestDispatcher("station.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private ArrayList<station> getStationList() {
        ArrayList<station> stations = new ArrayList<>();
        try {
            Connection conn = DBConnection.getConnection(); // Your connection class
            String query = "SELECT station_id, station_name FROM station_table";
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                stations.add(new station(rs.getInt("station_id"), rs.getString("station_name")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stations;
    }
}
