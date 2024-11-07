package com.booking.servlet;



import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.dao.BookingHotelsDAO;
import com.booking.model.BookingHotels;

@WebServlet("/BookHotelServlet")
public class BookHotelServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int hotelId = Integer.parseInt(request.getParameter("hotelId"));
        String checkInDate = request.getParameter("checkInDate");
        String checkOutDate = request.getParameter("checkOutDate");

        BookingHotels bookingHotels = new BookingHotels(hotelId, checkInDate, checkOutDate);
        BookingHotelsDAO bookingHotelsDAO = new BookingHotelsDAO();

        boolean isBooked = bookingHotelsDAO.saveBooking(bookingHotels);

        if (isBooked) {
            response.sendRedirect("success.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}
