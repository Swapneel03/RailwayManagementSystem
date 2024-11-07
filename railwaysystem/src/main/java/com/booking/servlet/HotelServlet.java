package com.booking.servlet;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

import com.booking.dao.HotelDAO;
import com.booking.model.Hotel;

@WebServlet("/HotelServlet")
public class HotelServlet extends HttpServlet {
    protected void doGet(HttpServlet request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        HotelDAO hotelDAO = new HotelDAO();
        List<Hotel> hotelList = hotelDAO.getAllHotels();

        out.println("<h1>List of Hotels</h1>");
        out.println("<table border='1'><tr><th>ID</th><th>Name</th> <th> Contact Number</th><th>Address</th></tr>");
        for (Hotel hotel : hotelList) {
            out.println("<tr><td>" + hotel.getId() + "</td><td>" + hotel.getName() + "</td><td>" + hotel.getContactNumber() + "</td><td>" + hotel.getAddress() + "</td></tr>");
        }
        out.println("</table>");
        out.close();
    }
}
