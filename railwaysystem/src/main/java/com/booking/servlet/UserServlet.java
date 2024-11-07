package com.booking.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.booking.dao.UserDAO;
import com.booking.model.UserLogin;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        // Retrieving form data from request
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phonenumber");

        // Validate inputs
        if (username == null || username.isEmpty() ||
            password == null || password.isEmpty() ||
            email == null || email.isEmpty() ||
            phoneNumber == null || phoneNumber.isEmpty()) {
            
            response.sendRedirect("error.jsp?error=Please fill all fields.");
            return;
        }

        // Create User object
        UserLogin user = new UserLogin(username, password, email, phoneNumber);

        // DAO for inserting user details
        UserDAO userDAO = new UserDAO();
        boolean isInserted = userDAO.insertUser(user);

        if (isInserted) {
            // Store username in session
            request.getSession().setAttribute("userName", username);
            // Set session timeout to 3 minutes
            request.getSession().setMaxInactiveInterval(3 * 60); // 3 minutes in seconds
            // Redirect to station.jsp
            response.sendRedirect("station.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}
