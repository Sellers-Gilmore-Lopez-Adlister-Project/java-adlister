package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.Users;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdatePasswordServlet", value = "/profile/updatePassword")
public class UpdatePasswordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/updatePassword.jsp")
                .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Users usersDao = DaoFactory.getUsersDao();

        //create user object to retrieve id from logged in session
        User user = (User) request.getSession().getAttribute("user");
        Long id = user.getId();
        //retrieve hashed password
        String oldPassword = user.getPassword();
        //retrieve current plaintext pw and new password from user input
        String checkOldPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("newPassword");
        String confirmNewPassword = request.getParameter("confirmNewPassword");

        boolean oldPasswordsMatch = false;
        boolean newPasswordMatch = false;

        //1st param = plainText , 2nd = hashedPw
        if (Password.check(checkOldPassword,oldPassword)){
            //if passwords match change to true
            oldPasswordsMatch = true;
        }

        if (newPassword.equals(confirmNewPassword)){
            //check if new passwords match
            newPasswordMatch = true;
        }
        //if both password sets match run function to update password
        if (oldPasswordsMatch && newPasswordMatch){
            String hashedPw = Password.hash(newPassword);
            DaoFactory.getUsersDao().updatePassword(id,hashedPw);
            System.out.println(hashedPw);
            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/profile/updatePassword");
        }
    }
}