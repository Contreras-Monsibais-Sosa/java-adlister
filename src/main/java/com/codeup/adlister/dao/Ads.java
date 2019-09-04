package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    List<Ad> adsByUser(String username);
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);
    Ad findAdId(Long id);
    void deleteAd(Long id);
    void editAd(Long id, String title, String description);
    List<Ad> findbyCatId(Long id);

    }
