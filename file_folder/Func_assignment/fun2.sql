drop FUNCTION if exists autoNumber ;
delimiter $
create FUNCTION autoNumber(_fname varchar(20),_lname varchar(20),_dob DATE,_emailid varchar(20)) returns int
deterministic
BEGIN
	SELECT count(*) into @cnt from STUDENT_NEW ;
	INSERT INTO STUDENT_NEW VALUES(@cnt+1,_fname,_lname,_dob,_emailid);
	RETURN @cnt+1;
end $
delimiter ;