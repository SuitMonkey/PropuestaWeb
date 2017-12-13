INSERT INTO users (email, first_name, last_name, password, role, shipping_address, city, country, status)
VALUES ('dj@gmail.com', 'Djidjely', 'Siclait', '81dc9bdb52d04dc20036dbd8313ed055', 0, 'nowhere', 'nowhere', 'nowhere', 0);
INSERT INTO history (history_id, user_email) VALUES (1, 'dj@gmail.com');

INSERT INTO users (email, first_name, last_name, password, role, shipping_address, city, country, status)
VALUES ('ev@gmail.com', 'Eduardo', 'Veras', '81dc9bdb52d04dc20036dbd8313ed055', 0, 'nowhere', 'nowhere', 'nowhere', 0);
INSERT INTO history (history_id, user_email) VALUES (2, 'ev@gmail.com');


INSERT INTO items (product_id, product_description, product_in_stock, product_name, product_price, supplier)
VALUES (4, 'New Gucci fall line sunglasses', 45, 'Gucci Sunset Sunglasses', 190.99, 'Macys');

INSERT INTO items (product_id, product_description, product_in_stock, product_name, product_price, supplier)
VALUES (5, 'Women chique couture lace bra', 45, 'Fearless Brasier', 80.99, 'Victoria Secret');


INSERT INTO users (email, first_name, last_name, password, role, shipping_address, city, country, status)
VALUES ('eva@gmail.com', 'Eva', 'Soraya', '81dc9bdb52d04dc20036dbd8313ed055', 2, 'Villa Olga', 'Santiago', 'Dominican Republic', 0);
INSERT INTO history (history_id, user_email) VALUES (8, 'eva@gmail.com');
INSERT INTO history_shopping_cart (history_history_id, shopping_cart_product_id) VALUES (8,4);
INSERT INTO history_shopping_cart (history_history_id, shopping_cart_product_id) VALUES (8,5);

INSERT INTO users (email, first_name, last_name, password, role, shipping_address, city, country, status)
VALUES ('paulina@gmail.com', 'Paulina', 'La Mejor', '81dc9bdb52d04dc20036dbd8313ed055', 2, 'Rue 3', 'Paris', 'France', 0);
INSERT INTO history (history_id, user_email) VALUES (9, 'paulina@gmail.com');
INSERT INTO history_shopping_cart (history_history_id, shopping_cart_product_id) VALUES (9,4);
INSERT INTO history_shopping_cart (history_history_id, shopping_cart_product_id) VALUES (9,5);
INSERT INTO history_browsing_history (history_history_id, browsing_history_product_id) VALUES (9,4);
INSERT INTO history_browsing_history (history_history_id, browsing_history_product_id) VALUES (9,5);




