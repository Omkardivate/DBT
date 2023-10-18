DROP PROCEDURE IF EXISTS pro5;
delimiter $
CREATE PROCEDURE pro5(_deptno int)
BEGIN
	
	DECLARE flag bool;
	
	SELECT TRUE into flag from dept where deptno=_deptno;
	
	IF flag THEN
		SELECT * from dept WHERE deptno=_deptno;
	ELSE
		SELECT 'department is not present!' status;
	end IF;
END $
delimiter ;


/*
DROP PROCEDURE IF EXISTS pro5;
delimiter $
CREATE PROCEDURE pro5(_deptno int)
BEGIN
	set @x := _deptno;
	SELECT * from dept WHERE deptno=@x;
END $
delimiter ;
*/

/*
DROP PROCEDURE IF EXISTS pro5;
delimiter $
CREATE PROCEDURE pro5(_deptno int)
BEGIN
	SELECT * from dept WHERE deptno=_deptno;
END $
delimiter ;
*/