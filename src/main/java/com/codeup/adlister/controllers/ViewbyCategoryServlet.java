package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.ViewbyCategoryServlet", urlPatterns = "/category")
public class ViewbyCategoryServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.setAttribute("category",DaoFactory.getCategoriesDao().all());
        Long catId= Long.parseLong(request.getParameter("filterOut"));
        request.setAttribute("adbyCat",DaoFactory.getAdsDao().findbyCatId(catId));
        request.getRequestDispatcher("/WEB-INF/ads/adCategory.jsp").forward(request,response);
    }

}
