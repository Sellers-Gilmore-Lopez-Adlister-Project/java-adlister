package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);

    void updateProfile(Long id, String username, String email);
    //update profile info
    Long insert(User user);

    void updatePassword(long id, String oldPassword);
}
