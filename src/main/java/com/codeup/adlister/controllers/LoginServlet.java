package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }

        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = DaoFactory.getUsersDao().findByUsername(username);
        String visitor = request.getParameter("from");

        if (username != null) {
            request.getSession().setAttribute("username", username);
        }
        
        if (user == null) {
            request.getSession().setAttribute("error", "Invalid Username or Password");
            response.sendRedirect("/login");
            return;
        }

        boolean validAttempt = Password.check(password, user.getPassword());

        if (validAttempt) {
            request.getSession().setAttribute("user", user);

            if (visitor != null && visitor == "") {
                response.sendRedirect("/profile");
            } else if (visitor != null){
                response.sendRedirect(visitor);
            } else if (visitor == null){
                response.sendRedirect("/profile");
            } else {
                response.sendRedirect("/login");
            }
        } else {
            request.getSession().setAttribute("error", "Invalid Username or Password");
            response.sendRedirect("/login");
        }
    }
}
