package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //check if user is logged in, if not send to login page
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }

        //retrieve user object and retrieve id
        User user = (User) request.getSession().getAttribute("user");
            Long id = user.getId();
            //set attribute to run function to display only ads created by the user on their profile page
            request.setAttribute("ads", DaoFactory.getAdsDao().allFromUser(id));
            //give control to profile.jsp
            request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }
}
