package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditAdServlet", urlPatterns = "/ads/edit")

public class EditAdServlet extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        request.getRequestDispatcher("/WEB-INF/ads/editAd.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        long id = Long.parseLong(request.getParameter("editId"));
        String title = (String) request.getParameter("editTitle");
        String description = (String) request.getParameter("editDescription");
         DaoFactory.getAdsDao().editAds(id, title, description);
        request.setAttribute("id", id);
//        request.getSession().setAttribute("title", id.getTitle());
//        request.getSession().setAttribute("description", id.getDescription());

        request.getRequestDispatcher("/WEB-INF/ads/editAd.jsp").forward(request,response);
    }
}