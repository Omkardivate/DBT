drop FUNCTION if exists calculate_sum;
delimiter $
create FUNCTION calculate_sum(_sid int) returns int
deterministic
BEGIN
	SELECT sum(marks) into @msum from student s join student_qualifications sq on s.id=sq.studentid where s.id=_sid;
	return  @msum;
end $
delimiter ;


/*

drop FUNCTION if exists calculate_sum;
delimiter $
create FUNCTION calculate_sum(_sid int) returns int
deterministic
BEGIN
	SELECT marks into @m1 from student s join student_qualifications sq on s.id=sq.studentid where s.id=_sid and name='10';
	SELECT marks into @m2 from student s join student_qualifications sq on s.id=sq.studentid where s.id=_sid and name='12';
	SELECT marks into @m3 from student s join student_qualifications sq on s.id=sq.studentid where s.id=_sid and name='BE';
	return  @m1+@m2+@m3;
end $
delimiter ;
*/