drop PROCEDURE if EXISTS checkUser ;
delimiter $
create PROCEDURE checkUser (em varchar(30))
BEGIN
	set @e := em;
	
	SELECT email into @x from login where email=em;
	IF (@x =em ) THEN
		select username,pwd from login where email=em;
	ELSE
		select "New user found...";
		set @i := "INSERT INTO log(cur_date,cur_time,message) VALUES(CURRENT_DATE(),CURRENT_TIME(),?)";
		prepare z from @i;
		EXECUTE z using @e;
	end IF;
end $
delimiter ;