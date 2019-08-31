package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controller.UpdateProfileServlet", urlPatterns = "/updateProfile")
public class UpdateProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().getAttribute("user");

        request.getRequestDispatcher("/WEB-INF/editProfile.jsp").forward(request, response);

    }
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            User loggedUser = (User) request.getSession().getAttribute("user");
            request.setAttribute("user",DaoFactory.getUsersDao().findByUsername(loggedUser.getEmail()));

            String email = request.getParameter("email");
            String id=request.getParameter("id");
//            DaoFactory.getUsersDao().editUser("email",id)

            request.getRequestDispatcher("/WEB-INF/editProfile.jsp").forward(request, response);

        }




    }




