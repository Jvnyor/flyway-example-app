-- Função que processa e imprime estatísticas de avaliações em massa
CREATE OR REPLACE FUNCTION process_massive_reviews_stats()
RETURNS void AS $$
DECLARE
    rec RECORD;
    total_reviews BIGINT;
    avg_rating NUMERIC(5,2);
    top_product RECORD;
BEGIN
    -- Conta total de avaliações
    SELECT COUNT(*) INTO total_reviews FROM reviews;
    RAISE NOTICE 'Total de avaliações: %', total_reviews;

    -- Calcula média geral de avaliações
    SELECT AVG(rating) INTO avg_rating FROM reviews;
    RAISE NOTICE 'Média geral das avaliações: %', avg_rating;

    -- Produto mais avaliado
    SELECT product_id, COUNT(*) AS cnt INTO top_product
    FROM reviews
    GROUP BY product_id
    ORDER BY cnt DESC
    LIMIT 1;
    RAISE NOTICE 'Produto mais avaliado: ID %, Total de avaliações: %', top_product.product_id, top_product.cnt;

    -- Imprime estatísticas por produto (limitado para log)
    FOR rec IN
        SELECT p.name, COUNT(r.id) AS total, AVG(r.rating) AS avg_rating
        FROM products p
        LEFT JOIN reviews r ON p.id = r.product_id
        GROUP BY p.id, p.name
        ORDER BY total DESC
        LIMIT 20
    LOOP
        RAISE NOTICE 'Produto: %, Total avaliações: %, Média: %', rec.name, rec.total, rec.avg_rating;
    END LOOP;
END;
$$ LANGUAGE plpgsql;

-- Executa a função para imprimir os resultados
SELECT process_massive_reviews_stats();

