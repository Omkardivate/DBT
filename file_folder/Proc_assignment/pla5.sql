drop procedure if EXISTS addQualification;
delimiter $
create procedure addQualification(_studentid int, _degree varchar(10), _college varchar(10), 
		_university varchar (10), _marks varchar (10), _years int)
BEGIN
	SELECT true into @ch from student where id=_studentid;
	IF @ch THEN
		SELECT count(*) INTO @i from student_qualifications;
		INSERT INTO student_qualifications VALUES(@i+1,_studentid,_degree,_college,_university,_marks,_years);
		select 'insert successfully' status;
	ELSE
		select 'student not fount...' status ;
	end if;
end $
delimiter ;
