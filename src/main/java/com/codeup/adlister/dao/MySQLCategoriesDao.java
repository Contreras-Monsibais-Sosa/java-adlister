package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.Category;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLCategoriesDao implements Categories {
    private static Connection connection;

    public MySQLCategoriesDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUsername(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }


    @Override
    public List<Category> all() {
        List<Category> categories = new ArrayList<>();
        PreparedStatement stmt;
        try {
            stmt = connection.prepareStatement("SELECT * FROM categories");
            ResultSet rs = stmt.executeQuery();
            return createCategoriesFromResults(rs);
        } catch (SQLException e) {
        throw new RuntimeException("Error retriever all categories", e);
        }
    }

    @Override
    public Category findByID(Long id) {
        PreparedStatement stmt;
        String sql = "SELECT * FROM categories WHERE id = ?";
        try {
            stmt = connection.prepareStatement(sql);
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractCategory(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a ad by ID", e);
        }
    }



    @Override
    public Category findByCat(String cat) {
        String sql = "SELECT * FROM categories WHERE cat = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, cat);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractCategory(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a category by category", e);
        }
    }

    @Override
    public Long add(Long ad_id, Long cat_id) {
        return null;
    }

    @Override
    public Long delete(long id) {
        return null;
    }



    private Category extractCategory(ResultSet rs) throws SQLException {
        return new Category(
                rs.getLong("id"),
                rs.getString("cat")
        );
    }

    private List<Category> createCategoriesFromResults(ResultSet rs) throws SQLException {
        List<Category> categories = new ArrayList<>();
        while (rs.next()) {
            categories.add(extractCategory(rs));
        }
        return categories;
    }



    @Override
    public  Category findCategorywithAdId(Long adId) {
        String query = " SELECT * FROM categories WHERE id IN(SELECT categories_id FROM adCategories where ad_id = ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setLong(1, adId);
            ResultSet rs = stmt.executeQuery();
            rs.next();
            return extractCategory(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a category by adID", e);
        }
    }

}


