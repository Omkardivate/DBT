DROP PROCEDURE IF EXISTS pro7;
delimiter $
CREATE PROCEDURE pro7(p1 int ,p2 VARCHAR (20), p3 varchar(20))
BEGIN
	set @x1:=p1;
	set @x2:=p2;
	set @x3:=p3;
	
	set @y:= 'insert into tempo2 values (?,?,?)';
	
	prepare z from @y;
	execute z using @x1,@x2,@x3;

END $
delimiter ;