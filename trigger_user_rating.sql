CREATE DEFINER=`root`@`localhost` TRIGGER `user_rating_BEFORE_INSERT` BEFORE INSERT ON `user_rating` FOR EACH ROW BEGIN
	IF new.from_user_id = new.to_user_id THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'from_user_id = to_user_id';
	END IF;

END