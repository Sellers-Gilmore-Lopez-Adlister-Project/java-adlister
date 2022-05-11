package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
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
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public List<Ad> allFromUser(Long id) {
       PreparedStatement stmt = null;
       try{
           stmt = connection.prepareStatement("SELECT * FROM ads WHERE user_id = ?" );
           stmt.setLong(1,id);
           ResultSet rs = stmt.executeQuery();
           return createAdsFromResults(rs);
       }
       catch (SQLException e){
           throw new RuntimeException("error retrieving ads", e);
       }
    }

    @Override
    public void destroy(Long id, String title) {
        PreparedStatement stmt = null;
        System.out.println(id);
        System.out.println(title);
        try {
            String query = "DELETE FROM ads Where user_id = ? AND title = ?";
            stmt = connection.prepareStatement(query);
            stmt.setLong(1,id);
            stmt.setString(2,title);
            stmt.executeUpdate();
        } catch (SQLException e){
            throw new RuntimeException("error deleting ad", e);
        }
    }

    @Override
    public void updateAd(Long id, String originalTitle,String title, String description) {
        PreparedStatement stmt = null;
        try {
            String query = "UPDATE ads SET title = ?, description = ? WHERE (user_id = ? AND title = ?)";
            stmt = connection.prepareStatement(query);
            stmt.setString(1,title);
            stmt.setString(2,description);
            stmt.setLong(3,id);
            stmt.setString(4,originalTitle);
            stmt.executeUpdate();
        } catch (SQLException e){
            throw new RuntimeException("error updating ad", e);
        }
    }


    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description) VALUES (?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getString("title"),
            rs.getString("description")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }
}
