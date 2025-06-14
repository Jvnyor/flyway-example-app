-- Inserção massiva de dados para testes de performance
-- Usuários
INSERT INTO users (username, email) VALUES ('user1', 'user1@email.com');
INSERT INTO users (username, email) VALUES ('user2', 'user2@email.com');
INSERT INTO users (username, email) VALUES ('user3', 'user3@email.com');
INSERT INTO users (username, email) VALUES ('user4', 'user4@email.com');
INSERT INTO users (username, email) VALUES ('user5', 'user5@email.com');
INSERT INTO users (username, email) VALUES ('user6', 'user6@email.com');
INSERT INTO users (username, email) VALUES ('user7', 'user7@email.com');
INSERT INTO users (username, email) VALUES ('user8', 'user8@email.com');
INSERT INTO users (username, email) VALUES ('user9', 'user9@email.com');
INSERT INTO users (username, email) VALUES ('user10', 'user10@email.com');
-- Produtos
INSERT INTO products (name, price) VALUES ('Produto A', 10.00);
INSERT INTO products (name, price) VALUES ('Produto B', 20.00);
INSERT INTO products (name, price) VALUES ('Produto C', 30.00);
INSERT INTO products (name, price) VALUES ('Produto D', 40.00);
INSERT INTO products (name, price) VALUES ('Produto E', 50.00);
INSERT INTO products (name, price) VALUES ('Produto F', 60.00);
INSERT INTO products (name, price) VALUES ('Produto G', 70.00);
INSERT INTO products (name, price) VALUES ('Produto H', 80.00);
INSERT INTO products (name, price) VALUES ('Produto I', 90.00);
INSERT INTO products (name, price) VALUES ('Produto J', 100.00);
-- Pedidos
INSERT INTO orders (user_id, order_date, total) VALUES (1, NOW(), 100.00);
INSERT INTO orders (user_id, order_date, total) VALUES (2, NOW(), 200.00);
INSERT INTO orders (user_id, order_date, total) VALUES (3, NOW(), 300.00);
INSERT INTO orders (user_id, order_date, total) VALUES (4, NOW(), 400.00);
INSERT INTO orders (user_id, order_date, total) VALUES (5, NOW(), 500.00);
INSERT INTO orders (user_id, order_date, total) VALUES (6, NOW(), 600.00);
INSERT INTO orders (user_id, order_date, total) VALUES (7, NOW(), 700.00);
INSERT INTO orders (user_id, order_date, total) VALUES (8, NOW(), 800.00);
INSERT INTO orders (user_id, order_date, total) VALUES (9, NOW(), 900.00);
INSERT INTO orders (user_id, order_date, total) VALUES (10, NOW(), 1000.00);
-- Itens do pedido
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (1, 1, 2, 10.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (1, 2, 1, 20.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (2, 3, 3, 30.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (2, 4, 2, 40.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (3, 5, 1, 50.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (3, 6, 2, 60.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (4, 7, 1, 70.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (4, 8, 2, 80.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (5, 9, 1, 90.00);
INSERT INTO order_items (order_id, product_id, quantity, price) VALUES (5, 10, 2, 100.00);
-- Repita blocos semelhantes para aumentar ainda mais o volume de dados
-- ...
-- Para um volume realmente massivo, gere mais INSERTs conforme necessário

