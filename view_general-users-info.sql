CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `sharing`.`general_users_info` AS
    SELECT 
        `u`.`id` AS `id`,
        `u`.`name` AS `name`,
        `p`.`gender` AS `gender`,
        `p`.`city_name` AS `city`,
        `u`.`email` AS `email`,
        `p`.`birthday` AS `birthday`
    FROM
        (`sharing`.`users` `u`
        JOIN (SELECT 
            `p`.`user_id` AS `user_id`,
                `p`.`gender` AS `gender`,
                `c`.`city_name` AS `city_name`,
                `p`.`birthday` AS `birthday`
        FROM
            (`sharing`.`profiles` `p`
        LEFT JOIN `sharing`.`cities_id` `c` ON ((`c`.`id` = `p`.`default_city_id`)))) `p` ON ((`p`.`user_id` = `u`.`id`)))