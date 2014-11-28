/* CATEGORIES */
INSERT INTO categories (id, name) VALUES (1, 'pizza');
INSERT INTO categories (id, name) VALUES (2, 'soup');

COMMIT;

/* PRODUCTS */
INSERT INTO products(id, name, price, category_id) VALUES (1, 'Test Product1', 1500, 1);
INSERT INTO products(id, name, price, category_id) VALUES (2, 'Test Product2', 1250, 2);
INSERT INTO products(id, name, price, category_id) VALUES (3, 'Test Product3', 1950, 1);
INSERT INTO products(id, name, price, category_id) VALUES (4, 'Test Product33', 1440, 1);
INSERT INTO products(id, name, price, category_id) VALUES (5, 'Test Product25', 1360, 2);
INSERT INTO products(id, name, price, category_id) VALUES (6, 'proddd', 1300, 2);
INSERT INTO products(id, name, price, category_id) VALUES (7, 'lorem ipsum', 1450, 1);
INSERT INTO products(id, name, price, category_id) VALUES (8, 'QWERTY', 1820, 1);
INSERT INTO products(id, name, price, category_id) VALUES (9, 'lipsum', 1750, 1);

COMMIT;