CREATE DATABASE IF NOT EXISTS pokemon_adlister_db;

USE pokemon_adlister_db;

DROP TABLE IF EXISTS adCategories;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) NOT NULL,
    email VARCHAR(240) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    constraint unique_username unique (username)
);

CREATE TABLE ads (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL,
    title VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE
);
CREATE TABLE categories (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  cat VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE adCategories(
    ad_id INT UNSIGNED NOT NULL,
    categories_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id)references ads(id),
    FOREIGN KEY (categories_id) references categories(id)
);

