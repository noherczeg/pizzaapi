/* CATEGORIES */
INSERT INTO categories (id, name) VALUES (1, 'raw_materials');
INSERT INTO categories (id, name) VALUES (2, 'raw_materials.concrete');
INSERT INTO categories (id, name) VALUES (3, 'raw_materials.wood');
INSERT INTO categories (id, name) VALUES (4, 'raw_materials.iron');

COMMIT;

/* PRODUCTS */
INSERT INTO products(id, name, price, category_id) VALUES (1, 'Test Product1', 1500, 1);
INSERT INTO products(id, name, price, category_id) VALUES (2, 'Test Product2', 1250, 2);
INSERT INTO products(id, name, price, category_id) VALUES (3, 'Another Test Product', 1400, 3);
INSERT INTO products(id, name, price, category_id) VALUES (4, 'Yet Another Test Product', 1120, 1);

COMMIT;