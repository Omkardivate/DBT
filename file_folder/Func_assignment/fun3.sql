drop FUNCTION if exists accept_email;
delimiter $
create FUNCTION accept_email(_emailid varchar(20)) returns varchar(30)
deterministic
BEGIN
	set @ch := FALSE;
	SELECT TRUE into @ch from login where email=_emailid;
	IF @ch THEN
		SELECT CONCAT(username,"  ,   password=",pwd) INTO @x from login where email=_emailid;
	ELSE
		SELECT "Employee not exists" into @x;
	end if;
	return @x ;
end $
delimiter ;