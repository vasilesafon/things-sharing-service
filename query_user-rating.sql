SELECT 
    u.id, 
    u.name,
    p.gender,
    u.email,
    p.birthday,
    r.rating
FROM
    sharing.users AS u
        JOIN
    sharing.profiles AS p ON p.user_id = u.id
        JOIN
    (SELECT 
        to_user_id, ROUND(AVG(rate), 1) AS rating
    FROM
        sharing.user_rating
    GROUP BY to_user_id) AS r ON u.id = r.to_user_id

;