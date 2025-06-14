-- Inserção massiva de dados - Parte 2
-- Usuários
INSERT INTO users (username, email) VALUES ('user11', 'user11@email.com');
INSERT INTO users (username, email) VALUES ('user12', 'user12@email.com');
INSERT INTO users (username, email) VALUES ('user13', 'user13@email.com');
INSERT INTO users (username, email) VALUES ('user14', 'user14@email.com');
INSERT INTO users (username, email) VALUES ('user15', 'user15@email.com');
INSERT INTO users (username, email) VALUES ('user16', 'user16@email.com');
INSERT INTO users (username, email) VALUES ('user17', 'user17@email.com');
INSERT INTO users (username, email) VALUES ('user18', 'user18@email.com');
INSERT INTO users (username, email) VALUES ('user19', 'user19@email.com');
INSERT INTO users (username, email) VALUES ('user20', 'user20@email.com');
-- Produtos
INSERT INTO products (name, price) VALUES ('Produto K', 110.00);
INSERT INTO products (name, price) VALUES ('Produto L', 120.00);
INSERT INTO products (name, price) VALUES ('Produto M', 130.00);
INSERT INTO products (name, price) VALUES ('Produto N', 140.00);
INSERT INTO products (name, price) VALUES ('Produto O', 150.00);
INSERT INTO products (name, price) VALUES ('Produto P', 160.00);
INSERT INTO products (name, price) VALUES ('Produto Q', 170.00);
INSERT INTO products (name, price) VALUES ('Produto R', 180.00);
INSERT INTO products (name, price) VALUES ('Produto S', 190.00);
INSERT INTO products (name, price) VALUES ('Produto T', 200.00);
-- Pedidos
INSERT INTO orders (user_id, order_date, total) VALUES (11, NOW(), 1100.00);
INSERT INTO orders (user_id, order_date, total) VALUES (12, NOW(), 1200.00);
INSERT INTO orders (user_id, order_date, total) VALUES (13, NOW(), 1300.00);
INSERT INTO orders (user_id, order_date, total) VALUES (14, NOW(), 1400.00);
INSERT INTO orders (user_id, order_date, total) VALUES (15, NOW(), 1500.00);
INSERT INTO orders (user_id, order_date, total) VALUES (16, NOW(), 1600.00);
INSERT INTO orders (user_id, order_date, total) VALUES (17, NOW(), 1700.00);
INSERT INTO orders (user_id, order_date, total) VALUES (18, NOW(), 1800.00);
INSERT INTO orders (user_id, order_date, total) VALUES (19, NOW(), 1900.00);
INSERT INTO orders (user_id, order_date, total) VALUES (20, NOW(), 2000.00);
-- Itens do pedido
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (11, 11, 2, 110.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (11, 12, 1, 120.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (12, 13, 3, 130.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (12, 14, 2, 140.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (13, 15, 1, 150.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (13, 16, 2, 160.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (14, 17, 1, 170.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (14, 18, 2, 180.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (15, 19, 1, 190.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (15, 20, 2, 200.00);
-- Repita blocos semelhantes para aumentar ainda mais o volume de dados
-- ...

