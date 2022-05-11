package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    //get a list of adds based on user
    List<Ad> allFromUser(Long id);
    //Delete ad
    void destroy(Long id,String title);
    //Update ad
    void updateAd(Long id,String originalTitle,String title,String description);


}
