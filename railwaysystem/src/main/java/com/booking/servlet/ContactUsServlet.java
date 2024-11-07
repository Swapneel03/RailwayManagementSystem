package com.booking.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.booking.model.ContactUs;
import com.booking.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/submitContact")
public class ContactUsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String fullName = request.getParameter("fullName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");
        String contactMethod = request.getParameter("contactMethod");
        String feedbackType = request.getParameter("feedbackType");

        // Create a ContactUs object
        ContactUs contact = new ContactUs(fullName, email, phone, subject, message, contactMethod, feedbackType);

        // Store contact data in the database
        try (Connection connection = DBConnection.getConnection()) {
            String sql = "INSERT INTO contact_us (full_name, email, phone, subject, message, contact_method, feedback_type) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, contact.getFullName());
            preparedStatement.setString(2, contact.getEmail());
            preparedStatement.setString(3, contact.getPhone());
            preparedStatement.setString(4, contact.getSubject());
            preparedStatement.setString(5, contact.getMessage());
            preparedStatement.setString(6, contact.getContactMethod());
            preparedStatement.setString(7, contact.getFeedbackType());

            // Execute the SQL query
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle exceptions (e.g., redirect to an error page or show a message)
        }

        // Redirect or forward to a success page
        response.sendRedirect("success.jsp"); // Change to your success page
    }
}
