drop PROCEDURE IF EXISTS pro1;
delimiter $
CREATE PROCEDURE pro1(IN string1 VARCHAR(15))
BEGIN
	DECLARE len_str int;
	set len_str:= LENGTH(string1);
	
	/*DECLARE counter int; */
	set @counter:=1;
	
	lbl1:LOOP
		IF @counter < len_str+1 THEN
			SELECT SUBSTR(string1,@counter,1);
			set @counter:=@counter+1;
		ELSE
			leave lbl1;
		end IF;
		
	end LOOP lbl1;
end $
delimiter ;