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
        if (request.getSession().getAttribute("user") != null) {
            Long id = Long.parseLong(request.getParameter("ad_id"));
            request.setAttribute("ad", DaoFactory.getAdsDao().findAdId(id));
            request.getRequestDispatcher("/WEB-INF/ads/editAd.jsp").forward(request, response);
        }
            response.sendRedirect("/login");
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Long id = Long.parseLong(request.getParameter("ad_id"));
        String title = request.getParameter("editTitle");
        String description = request.getParameter("editDescription");
        request.setAttribute("ad", DaoFactory.getAdsDao().findAdId(id));
        DaoFactory.getAdsDao().editAd(id, title, description);
        response.sendRedirect("/ads");
    }
}