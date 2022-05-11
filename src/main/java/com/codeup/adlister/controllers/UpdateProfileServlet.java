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
        //check if user is logged in, if not send to login page
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        //pass control to updateProfile.jsp
        request.getRequestDispatcher("/WEB-INF/updateProfile.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //access getUsersDao
        Users usersDao = DaoFactory.getUsersDao();
        boolean usernameDoesntExist = false;

        //retrieve user object from session and retrieve id
        User user = (User) request.getSession().getAttribute("user");
        Long id = user.getId();
        //retrieve new username from user
        String newUsername = request.getParameter("updateUsername");
        //retrieve new email from user and confirm email is correct
        String newEmail = request.getParameter("updateEmail");
        String confirmEmail = request.getParameter("confirmUpdateEmail");
        //check if username is already taken
        User existingUser = usersDao.findByUsername(newUsername);
        //if new username is available set to true
        if (existingUser == null){
            usernameDoesntExist = true;
        }
        //if emails match and username is available run function
        if (newEmail.equals(confirmEmail) && usernameDoesntExist) {
            DaoFactory.getUsersDao().updateProfile(id, newUsername, newEmail);
            //redirect to profile after finishing update
            response.sendRedirect("/profile");
        } else {
            //if emails dont match or username taken, redirect to update page
            response.sendRedirect("/profile/update");
        }
    }
}
