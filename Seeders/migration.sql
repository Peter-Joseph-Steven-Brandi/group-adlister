DROP DATABASE adlister_db;
CREATE DATABASE adlister_db;

USE adlister_db;

DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS blocks;


CREATE TABLE users
(
    id  INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(240) UNIQUE NOT NULL,
    email  VARCHAR(240) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE categories
(
    id  INT UNSIGNED NOT NULL AUTO_INCREMENT,
    category  varchar(240)  NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE blocks
(
    id    INT UNSIGNED NOT NULL AUTO_INCREMENT,
    block VARCHAR(240) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE ads
(
    id  INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id  INT UNSIGNED NOT NULL,
    title  VARCHAR(240) NOT NULL,
    description TEXT NOT NULL,
    `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    blocks_id INT UNSIGNED NOT NULL,
    card_name VARCHAR(240) NOT NULL,
#     categories_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
        ON DELETE CASCADE,
#     FOREIGN KEY (categories_id) REFERENCES categories (id)
#         ON DELETE CASCADE,
    FOREIGN KEY (blocks_id) REFERENCES blocks (id)
        ON DELETE CASCADE
);

CREATE TABLE adscategories (
    ad_id INTEGER UNSIGNED NOT NULL,
    categories_id INTEGER UNSIGNED NOT NULL,
    FOREIGN KEY (ad_id) REFERENCES ads(id),
    FOREIGN KEY (categories_id) REFERENCES categories(id)
);



