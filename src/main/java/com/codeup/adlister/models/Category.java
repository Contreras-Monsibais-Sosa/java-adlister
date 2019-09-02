package com.codeup.adlister.models;

public class Category {
    private long id;
    private String cat;




    public Category(long id, String cat) {
        this.id = id;
        this.cat=cat;
    }

    public Category(String cat) {
        this.cat=cat;    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }



    public String getCat() {
        return this.cat;
    }

    public void setCat(String cat) {
        this.cat = cat;
    }



}
