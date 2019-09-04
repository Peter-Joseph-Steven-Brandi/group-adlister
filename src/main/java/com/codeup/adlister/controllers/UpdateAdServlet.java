//package com.codeup.adlister.controllers;
//
//import com.codeup.adlister.dao.DaoFactory;
//import com.codeup.adlister.models.Ad;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//@WebServlet(name = "controllers.UpdateAdServlet", urlPatterns = "/ads/update")
//public class UpdateAdServlet extends HttpServlet {
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        if (request.getSession().getAttribute("user") == null) {
////            response.addCookie(message);
//            response.sendRedirect("/login");
//            return;
//        }
//        request.setAttribute("categories", DaoFactory.getCategoriesDao().all());
//        request.setAttribute("blocks", DaoFactory.getBlocksDao().all());
//
//        Long id = Long.parseLong(request.getQueryString());
//
//        request.setAttribute("id", id);
//        request.setAttribute("ad", DaoFactory.getAdsDao().thisAdById(id));
//        request.getRequestDispatcher("/WEB-INF/ads/update_ad.jsp").forward(request, response);
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        System.out.println("31");
//        String newTitle = request.getParameter("newTitle");
//        String newDescription = request.getParameter("newDescription");
//        String newCat = request.getParameter("newCat");
//        int newBlock = Integer.parseInt(request.getParameter("block"));
//        System.out.println("36");
//        Long id = (Long) request.getSession().getAttribute("id");
//        Ad ad = null;
//        System.out.println("39");
//        for (Ad ads : DaoFactory.getAdsDao().thisAdById(id)) {
//            ad = ads;
//        }
//        System.out.println("44");
//
//        Long newId = ad.getId();
//        Long newUserId = ad.getUserId();
//        Ad newAd = new Ad(newId, newUserId, newTitle, newDescription, ad.getDate(), newBlock);
//        DaoFactory.getAdsDao().updateAdInfo(newAd);
//
//
//        response.sendRedirect("/profile");
//    }
//
//}
