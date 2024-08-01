CREATE DATABASE macdonalds;

Use macdonalds;

CREATE TABLE category (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title TINYTEXT,
  parent_id INT DEFAULT NULL
  );

CREATE TABLE product (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name TINYTEXT,
  price FLOAT,
  fk_category_id INT,
  FOREIGN KEY (fk_category_id) REFERENCES category(id)
  );

CREATE TABLE CategoryProduct(
  id INT PRIMARY KEY AUTO_INCREMENT,
  fk_product INT,
  fk_category INT,
  FOREIGN KEY (fk_product) REFERENCES product(id),
  FOREIGN KEY (fk_category) REFERENCES category(id)
