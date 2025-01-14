package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    @Override
    public User findByUsername(String username) {
        String query = "SELECT * FROM users WHERE username = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, username);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    @Override
    public void updateProfile(Long id, String username, String email) {
        PreparedStatement stmt = null;
        try {
            //query to update username and email for logged in user
            String query = "UPDATE users SET username = ?, email = ? WHERE (id = ?)";
            stmt = connection.prepareStatement(query);
            stmt.setString(1,username);
            stmt.setString(2,email);
            stmt.setLong(3,id);
            //update data to DB
            stmt.executeUpdate();
        } catch (SQLException e){
            throw new RuntimeException("error updating profile", e);
        }
    }

    @Override
    public Long insert(User user) {
        String query = "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

    @Override
    public void updatePassword(long id, String newPassword){
        PreparedStatement stmt = null;
        try {
            //query to update password for logged in user
            String query = "UPDATE users SET password = ? WHERE id = ?";
            stmt = connection.prepareStatement(query);
            stmt.setString(1,newPassword);
            stmt.setLong(2,id);
            //execute update
            stmt.executeUpdate();
        } catch (SQLException e){
            throw new RuntimeException("error updating password", e);
        }
    }

    private User extractUser(ResultSet rs) throws SQLException {
        if (! rs.next()) {
            return null;
        }
        return new User(
            rs.getLong("id"),
            rs.getString("username"),
            rs.getString("email"),
            rs.getString("password")
        );
    }

}
