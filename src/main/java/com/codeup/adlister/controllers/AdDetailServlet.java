package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controller.AdDetailServlet", urlPatterns = "/ad")
public class AdDetailServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String adId=request.getParameter("id");
        Long id=Long.parseLong(adId);
        request.setAttribute("ad", DaoFactory.getAdsDao().findAdId(id));
        request.getRequestDispatcher("/WEB-INF/ads/adDetail.jsp").forward(request, response);

    }




}