package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.Users;
import com.codeup.adlister.models.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateProfileServlet", value = "/profile/update")
public class UpdateProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/updateProfile.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users usersDao = DaoFactory.getUsersDao();
        boolean usernameDoesntExist = false;



        User user = (User) request.getSession().getAttribute("user");
        Long id = user.getId();
        System.out.println(id);
        String newUsername = request.getParameter("updateUsername");
        String newEmail = request.getParameter("updateEmail");
        String confirmEmail = request.getParameter("confirmUpdateEmail");
        User existingUser = usersDao.findByUsername(newUsername);
        if (existingUser == null){
            usernameDoesntExist = true;
        }

        if (newEmail.equals(confirmEmail) && usernameDoesntExist) {
            DaoFactory.getAdsDao().updateProfile(id, newUsername, newEmail);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/profile/update");
        }
    }
}
