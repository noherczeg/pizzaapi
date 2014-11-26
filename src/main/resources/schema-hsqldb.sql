/* CATEGORIES */
CREATE TABLE categories (
  id    INTEGER       NOT NULL IDENTITY,
  name  VARCHAR(255)  NOT NULL
);

/* PRODUCTS */
CREATE TABLE products (
  id          INTEGER       NOT NULL IDENTITY,
  name        VARCHAR(255)  NOT NULL,
  price       INTEGER       NOT NULL,
  category_id INTEGER       NOT NULL,

  CONSTRAINT fk_categories FOREIGN KEY (category_id) REFERENCES categories (id)
);

COMMIT;