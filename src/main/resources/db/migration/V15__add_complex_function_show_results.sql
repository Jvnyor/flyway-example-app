-- Função complexa que retorna e imprime resultados no PostgreSQL
CREATE OR REPLACE FUNCTION show_top_users_by_orders()
RETURNS void AS $$
DECLARE
    rec RECORD;
BEGIN
    RAISE NOTICE 'Top 10 usuários com mais pedidos:';
    FOR rec IN
        SELECT u.username, COUNT(o.id) AS total_orders
        FROM users u
        JOIN orders o ON u.id = o.user_id
        GROUP BY u.username
        ORDER BY total_orders DESC
        LIMIT 10
    LOOP
        RAISE NOTICE 'Usuário: %, Pedidos: %', rec.username, rec.total_orders;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

-- Para executar e ver os resultados, use:
SELECT * FROM show_top_users_by_orders();
