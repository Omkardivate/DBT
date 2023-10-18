DROP PROCEDURE IF EXISTS pro6;
delimiter $
CREATE PROCEDURE pro6(_tname VARCHAR (20))
BEGIN
	set @x:= concat( " create TABLE ",_tname,"( c1 int , c2 varchar(20))");
	prepare z from @x;
	execute z;
	
END $
delimiter ;