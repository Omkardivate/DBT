drop procedure if EXISTS addStudent;
delimiter $
create procedure addStudent(_id int ,_namefirst varchar(20) ,_namelast varchar(30),_dob date,
        _emailid varchar(30),_num varchar(30),_address varchar(30))
BEGIN 
	insert INTO student values(_id,_namefirst,_namelast,_dob,_emailid);
	select max(id) into @nxt from student_phone ; 
	
	insert INTO student_phone values(@nxt+1,_id,_num,1);
	
	select max(id) into @nxt from student_address ; 
	insert INTO student_address values(@nxt+1,_id,_address);
end $
delimiter ;