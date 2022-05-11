package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteAdServlet", value = "/ads/delete")
public class DeleteAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //checks if user is logged in and redirects to login if not
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        //passes control to ads.delete.jsp
        request.getRequestDispatcher("/WEB-INF/ads/delete.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //retrieves user object from session and retrieves user id
        User user = (User) request.getSession().getAttribute("user");
        Long id = user.getId();
        //retrieves title from user input that user wishes to delete
        String title = request.getParameter("title");
        //runs id and title through destroy function
        DaoFactory.getAdsDao().destroy(id,title);
        //redirects to /profile
        response.sendRedirect("/profile");

    }
}
