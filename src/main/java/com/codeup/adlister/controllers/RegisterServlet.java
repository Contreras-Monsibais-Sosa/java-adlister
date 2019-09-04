package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLIntegrityConstraintViolationException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().all());

        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");

        // validate input
        boolean inputHasErrors = (username == null)
                || (email == null)
                || password.isEmpty();

        boolean passwordLength = (password.length() <= 6)
                || (password.length() > 20)
                || (! password.equals(passwordConfirmation));

        if (inputHasErrors) {
            request.getSession().setAttribute("error", "Please fill out all fields");
            response.sendRedirect("/register");
            return;
        } else if (passwordLength) {
            request.getSession().setAttribute("error", "Password must be between 6 and 20 characters long or Password doesn't match");
            response.sendRedirect("/register");
            return;
        }

        if (username != null) {
            request.getSession().setAttribute("username", username);
        }

        if (email != null) {
            request.getSession().setAttribute("email", email);
        }

        try {
            if (username.equals(DaoFactory.getUsersDao().findByUsername(username).getUsername())) {
                request.getSession().setAttribute("error", "Invalid Username or Password");
                response.sendRedirect("/register");
            }
        } catch (NullPointerException e) {
            e.printStackTrace();
        }

        // create and save a new user
            User user = new User(username, email, password);
            DaoFactory.getUsersDao().insert(user);
            response.sendRedirect("/login ");
    }
}
