package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);

    //update profile info
    void updateProfile(Long id, String username, String email);

    Long insert(User user);

    //update password
    void updatePassword(long id, String oldPassword);
}
