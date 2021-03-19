CREATE DEFINER=`root`@`localhost` TRIGGER `using_BEFORE_INSERT` BEFORE INSERT ON `using` FOR EACH ROW BEGIN
-- Проверяем, что бы начальная дата была не раньше текущей
IF new.start < now() THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Start earlier than now. Change the startdate.';
	END IF;
 -- Проверяем, что бы начальная дата была не позже конечной
 IF new.start > new.end THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Start later than end.';
	END IF;  
-- Проверяем, на пересечение интервалов бронирования    
 IF (
SELECT COUNT(*) 
FROM sharing.using 
WHERE 
	status_id < 3 AND
	thing_id = new.thing_id AND 
	(
    (new.start BETWEEN start AND end OR new.end BETWEEN start AND end) 
	OR
	(start BETWEEN new.start AND new.end OR end BETWEEN new.start AND new.end)
    )	
) > 0 THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Date is not available.';

END IF; 
END