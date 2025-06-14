-- Mais índices para aumentar o volume de logs
CREATE INDEX idx_users_email_lower ON users (LOWER(email));
CREATE INDEX idx_products_price_desc ON products (price DESC);
CREATE INDEX idx_orders_total ON orders (total);
CREATE INDEX idx_orders_order_date_desc ON orders (order_date DESC);
CREATE INDEX idx_order_items_quantity ON order_items (quantity);
CREATE INDEX idx_order_items_price ON order_items (price);
CREATE INDEX idx_categories_name_lower ON categories (LOWER(name));
CREATE INDEX idx_product_categories_unique ON product_categories (product_id, category_id);
CREATE INDEX idx_reviews_review_date ON reviews (review_date);
CREATE INDEX idx_reviews_comment ON reviews (comment);
CREATE INDEX idx_inventory_last_updated ON inventory (last_updated);
CREATE INDEX idx_payment_methods_description ON payment_methods (description);
CREATE INDEX idx_user_payment_methods_unique ON user_payment_methods (user_id, payment_method_id);
CREATE INDEX idx_shipping_addresses_postal_code ON shipping_addresses (postal_code);
CREATE INDEX idx_shipping_addresses_country ON shipping_addresses (country);
CREATE INDEX idx_coupons_expiration_date ON coupons (expiration_date);
CREATE INDEX idx_user_coupons_unique ON user_coupons (user_id, coupon_id);
CREATE INDEX idx_wishlist_added_date ON wishlist (added_date);
CREATE INDEX idx_notifications_notification_date ON notifications (notification_date);
CREATE INDEX idx_notifications_message ON notifications (message);
-- Índices extras para aumentar ainda mais o volume
CREATE INDEX idx_users_id ON users (id);
CREATE INDEX idx_products_id ON products (id);
CREATE INDEX idx_orders_id ON orders (id);
CREATE INDEX idx_order_items_id ON order_items (id);
CREATE INDEX idx_categories_id ON categories (id);
CREATE INDEX idx_product_categories_id ON product_categories (id);
CREATE INDEX idx_reviews_id ON reviews (id);
CREATE INDEX idx_inventory_id ON inventory (id);
CREATE INDEX idx_payment_methods_id ON payment_methods (id);
CREATE INDEX idx_user_payment_methods_id ON user_payment_methods (id);
CREATE INDEX idx_shipping_addresses_id ON shipping_addresses (id);
CREATE INDEX idx_coupons_id ON coupons (id);
CREATE INDEX idx_user_coupons_id ON user_coupons (id);
CREATE INDEX idx_wishlist_id ON wishlist (id);
CREATE INDEX idx_notifications_id ON notifications (id);

