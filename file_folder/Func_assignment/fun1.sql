drop FUNCTION if exists sumSalary;
delimiter $
create FUNCTION sumSalary(_deptno int) returns int
deterministic
BEGIN
	select sum(sal) into @x from emp where deptno=_deptno;
	RETURN @x;
end $
delimiter ;
