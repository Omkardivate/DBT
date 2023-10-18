drop procedure if EXISTS getQualification;
delimiter $
create procedure getQualification(_studentid int )
begin 
	SELECT distinct s.id into @x from student s natural join student_qualifications sq WHERE s.id=_studentid;
	IF  @x = _studentid THEN
		select * from student s join student_qualifications sq on s.id=sq.studentid WHERE s.id=_studentid;
	ELSE 
		select "Student not found…";
	end if;
end $
delimiter ;