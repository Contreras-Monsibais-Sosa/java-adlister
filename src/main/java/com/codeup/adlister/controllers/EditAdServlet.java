//package com.codeup.adlister.controllers;
//
//import com.codeup.adlister.dao.DaoFactory;
//import com.codeup.adlister.models.Ad;
//import com.codeup.adlister.models.User;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//@WebServlet(name = "EditAdServlet", urlPatterns = "/ads/editAd")
//
//public class EditAdServlet extends HttpServlet{
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        if (request.getSession().getAttribute("user") == null) {
//            response.sendRedirect("/login");
//            return;
//        }
//        request.getRequestDispatcher("/WEB-INF/ads/editAd.jsp").forward(request, response);
//    }
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        Long id = Long.parseLong(request.getParameter("editId"));
//        Ad ad = DaoFactory.getAdsDao().findAdId(id);
//        request.setAttribute("ad", ad);
//        String editedTitle = request.getParameter("editedTitle");
//        String editedDescription = request.getParameter("description");
//
//        if (request.setAttribute("editedTitle", editedTitle) != null){
//            DaoFactory.getAdsDao().updateAds(id, editedTitle, editedDescription);
//            response.sendRedirect("/ads");
//            return;
//        }
//        request.getRequestDispatcher("/WEB-INF/ads/editAd.jsp");
//    }
//
//}
