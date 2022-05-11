package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateAdServlet", value = "/ads/update")
public class UpdateAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //check if user is logged in if not redirect to login
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        //pass control to ads/update.jsp
        request.getRequestDispatcher("/WEB-INF/ads/update.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //get user object from session and retrieve id
        User user = (User) request.getSession().getAttribute("user");
        Long id = user.getId();

        //get file user wishes to edit
        String originalTitle = request.getParameter("originalTitle");
        //get updated info for file
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        //run inputs through updateAd function
        DaoFactory.getAdsDao().updateAd(id,originalTitle,title,description);
        //redirect to profile page
        response.sendRedirect("/profile");
    }
}
