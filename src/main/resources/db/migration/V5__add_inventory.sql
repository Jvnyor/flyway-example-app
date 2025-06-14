CREATE TABLE inventory (
    id SERIAL PRIMARY KEY,
    product_id INT NOT NULL,
    stock_quantity INT NOT NULL,
    last_updated TIMESTAMP NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products (id)
);

