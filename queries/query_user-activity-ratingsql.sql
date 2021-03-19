-- Рейтинг пользователей по активности
SELECT 
    users.id, users.name, act.activity
FROM
    sharing.users
        LEFT JOIN
    (SELECT 
        sharing.using.user_id AS id,
            COUNT(sharing.using.id) AS activity
    FROM
        sharing.using
    WHERE
        status_id < 4
    GROUP BY user_id) AS act ON act.id = users.id
ORDER BY activity DESC
;
