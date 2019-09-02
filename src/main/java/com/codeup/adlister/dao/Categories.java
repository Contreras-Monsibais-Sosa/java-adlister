package com.codeup.adlister.dao;

import com.codeup.adlister.models.Category;

import java.util.List;

public interface Categories {
    List<Category> all();
    Category findByID(Long id);
    Category findByCat(String cat);
    Long add(Long ad_id,Long cat_id);
    Long delete(long id);
    Category findCategorywithAdId(Long adId);

    }

