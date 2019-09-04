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
        String dbUsername = DaoFactory.getUsersDao().findByUsername(username).getUsername();

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

            request.getSession().setAttribute("username", username);
            request.getSession().setAttribute("email", email);
        System.out.println(username);
        System.out.println(dbUsername);


            if (dbUsername != null) {
                request.getSession().setAttribute("error", "Invalid Username or Password");
                response.sendRedirect("/register");
                return;
            }

        // create and save a new user
            User user = new User(username, email, password);
            DaoFactory.getUsersDao().insert(user);
            response.sendRedirect("/login ");
    }
}
