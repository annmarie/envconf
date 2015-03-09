
CREATE DATABASE recibes;

USE recibes;

CREATE TABLE recipe (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  rcp_headline VARCHAR(255) NOT NULL,
  rcp_body MEDIUMTEXT,
  rcp_notes MEDIUMTEXT,
  rcp_img_id INT(6),
  created TIMESTAMP DEFAULT NOW()
);

CREATE TABLE ingredient (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  ingr_item VARCHAR(255) UNIQUE NOT NULL,
  ingr_img_id INT(6)
);

CREATE TABLE recipe_ingredient (
  rcp_id INT(6) NOT NULL,
  ingr_id INT(6) NOT NULL,
  ingr_amount VARCHAR(100),
  ingr_notes MEDIUMTEXT,
  ingr_order INT(6) DEFAULT 0,
  created TIMESTAMP DEFAULT NOW()
);

CREATE TABLE tag (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  tag_item VARCHAR(255) UNIQUE NOT NULL,
  tag_img_id INT(6)
);

CREATE TABLE recipe_tag (
  rcp_id INT(6) NOT NULL,
  tag_id INT(6) NOT NULL,
  tag_rank INT(6) DEFAULT 0,
  created TIMESTAMP DEFAULT NOW()
);

CREATE TABLE image (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  img_filepath VARCHAR(255) NOT NULL
);

