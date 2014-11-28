/* CATEGORIES */
INSERT INTO categories (id, name) VALUES (1, 'pizza');
INSERT INTO categories (id, name) VALUES (2, 'soup');

COMMIT;

/* PRODUCTS */
INSERT INTO products(id, name, price, category_id) VALUES (1, 'Test Product1', 1500, 1);
INSERT INTO products(id, name, price, category_id) VALUES (2, 'Test Product2', 1250, 2);
INSERT INTO products(id, name, price, category_id) VALUES (3, 'Another Test Product', 1400, 1);
INSERT INTO products(id, name, price, category_id) VALUES (4, 'Yet Another Test Product', 1120, 1);

COMMIT;