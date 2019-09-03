package com.codeup.adlister.dao;

import com.codeup.adlister.models.Category;

import java.util.List;

public interface Categories {
    List<Category> all();
    Category findByID(Long id);
    Category findByCat(String cat);
    void addAdCategory(Long ad_id,Long cat_id);
    void deleteAdCategory(long ad_id);
    Category findCategorywithAdId(Long adId);
    public void editAdCategory( Long catId,Long adId);


    }

