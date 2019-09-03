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

import static java.lang.Long.parseLong;

@WebServlet(name = "EditAdServlet", urlPatterns = "/profile/editad")

public class EditAdServlet extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            Long id = Long.parseLong(request.getParameter("ad_id"));
            request.getSession().setAttribute("ad", DaoFactory.getAdsDao().findAdId(id));
            request.setAttribute("category", DaoFactory.getCategoriesDao().all());
            request.setAttribute("currentCat",DaoFactory.getCategoriesDao().findCategorywithAdId(id));

            request.getRequestDispatcher("/WEB-INF/ads/editAd.jsp").forward(request, response);
        }
            response.sendRedirect("/login");
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Long id = Long.parseLong(request.getParameter("ad_id"));
        String title = request.getParameter("editTitle");
        String description = request.getParameter("editDescription");

        Long catId=parseLong(request.getParameter("category"));
        DaoFactory.getCategoriesDao().editAdCategory(catId,id);


        request.getSession().setAttribute("ad", DaoFactory.getAdsDao().findAdId(id));
        DaoFactory.getAdsDao().editAd(id, title, description);

        response.sendRedirect("/profile");
    }
}