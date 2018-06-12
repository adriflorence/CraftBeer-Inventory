DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS manufacturers;


CREATE TABLE categories (
  id serial8 primary key,
  name varchar(255),
  color varchar(255)
);

CREATE TABLE manufacturers (
  id serial8 primary key,
  name varchar(255),
  country varchar(255)
);

CREATE TABLE products (
  id serial4 primary key,
  manufacturer_id INT8 REFERENCES manufacturers(id) ON DELETE CASCADE,
  category_id INT8 REFERENCES categories(id) ON DELETE CASCADE,
  name varchar(255),
  description varchar(255),
  alcohol_content varchar(255),
  quantity INT2,
  volume varchar(255),
  ideal_amount INT2,
  cost_price decimal,
  sell_price decimal,
  image_path varchar(255)
);
