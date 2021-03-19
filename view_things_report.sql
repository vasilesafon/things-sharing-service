CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `sharing`.`things_report` AS
    SELECT 
        `t`.`id` AS `id`,
        `t`.`name` AS `name`,
        `t`.`user_id` AS `user_id`,
        `cat`.`name` AS `category`,
        `r`.`rating` AS `rating`,
        `cnt`.`count` AS `number_of_uses`
    FROM
        ((((`sharing`.`things` `t`
        JOIN `sharing`.`cities_id` `c` ON ((`t`.`city_id` = `c`.`id`)))
        JOIN `sharing`.`category_id` `cat` ON ((`cat`.`id` = `t`.`category_id`)))
        JOIN (SELECT 
            `sharing`.`thing_rating`.`thing_id` AS `thing_id`,
                ROUND(AVG(`sharing`.`thing_rating`.`rate`), 1) AS `rating`
        FROM
            `sharing`.`thing_rating`
        GROUP BY `sharing`.`thing_rating`.`thing_id`) `r` ON ((`r`.`thing_id` = `t`.`id`)))
        JOIN (SELECT 
            `sharing`.`using`.`thing_id` AS `thing_id`,
                COUNT(`sharing`.`using`.`id`) AS `count`
        FROM
            `sharing`.`using`
        GROUP BY `sharing`.`using`.`thing_id`) `cnt` ON ((`cnt`.`thing_id` = `t`.`id`)))