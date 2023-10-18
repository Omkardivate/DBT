DROP PROCEDURE IF EXISTS addUser;
delimiter $

CREATE PROCEDURE addUser(user_nm varchar(20),em VARCHAR(20), pass VARCHAR(15) )
BEGIN
	INSERT INTO login VALUES(user_nm,em,pass);
end $
delimiter ;