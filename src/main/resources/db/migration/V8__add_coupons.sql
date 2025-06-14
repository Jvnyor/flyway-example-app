CREATE TABLE coupons (
    id SERIAL PRIMARY KEY,
    code VARCHAR(50) NOT NULL UNIQUE,
    discount_percentage NUMERIC(5,2) NOT NULL,
    expiration_date TIMESTAMP NOT NULL
);

CREATE TABLE user_coupons (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    coupon_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (coupon_id) REFERENCES coupons (id)
);
