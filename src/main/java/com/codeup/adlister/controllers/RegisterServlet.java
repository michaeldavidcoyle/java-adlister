package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // show the registration form
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // TODO: ensure the submitted information is valid
        // TODO: create a new user based off of the submitted information
        // TODO: if a user was successfully created, send them to their profile
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirm = request.getParameter("confirm-password");

        boolean registrationIsValid = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                || confirm.isEmpty()
                || username.equals(password)
                || !confirm.equals(password);

        if (registrationIsValid) {
            response.sendRedirect("/register");
        } else {
                User user = new User();

                user.setUsername(username);
                user.setEmail(email);
                user.setPassword(password);

                DaoFactory.getUsersDao().insert(user);
                response.sendRedirect("/profile");
        }
    }
}
