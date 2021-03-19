-- Рейтинг категорий. Вещи из каких категорий пользуются спросом больше.
SELECT 
    cat.id, cat.name, pop.cnt AS quantity
FROM
    sharing.category_id AS cat
        LEFT JOIN
    (SELECT 
        COUNT(using.id) AS cnt, things.category_id
    FROM
        sharing.using
    JOIN sharing.things ON using.thing_id = things.id
    GROUP BY thing_id) AS pop ON pop.category_id = cat.id
ORDER BY quantity DESC
;
