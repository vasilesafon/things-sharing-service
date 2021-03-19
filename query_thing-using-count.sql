-- Самые популярные вещи по количеству использований
SELECT 
t.id, 
t.name,
u.rating 
FROM sharing.things AS t
LEFT JOIN (SELECT thing_id, COUNT(id) AS rating
	FROM sharing.using
    GROUP BY thing_id) as u ON u.thing_id = t.id
ORDER BY rating DESC
;