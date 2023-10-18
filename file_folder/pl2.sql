drop PROCEDURE IF EXISTS pro2;
delimiter $
CREATE PROCEDURE pro2(IN string1 VARCHAR(15))
BEGIN
	DECLARE len_str int;
	set len_str:=LENGTH(string1);
	set @ch :='';
	
	set @counter:=1;
	
	lbl1:LOOP
		IF @counter < len_str+1 THEN
			SET @ch := SUBSTR(string1,@counter,1);
			IF (@ch='A' or @ch='E' or @ch='I' or @ch='O' or @ch='U') THEN
				SELECT @ch 'Vowel';
			end IF;
			set @counter:=@counter+1;
		ELSE
			leave lbl1;
		end IF;
		
	end LOOP lbl1;
end $
delimiter ;

/*
drop PROCEDURE IF EXISTS pro2;
delimiter $
CREATE PROCEDURE pro2(IN string1 VARCHAR(15))
BEGIN
	DECLARE len_str int;
	set len_str:=LENGTH(string1);
	set @ch ='';
	
	
	set @counter:=1;
	
	lbl1:LOOP
		IF @counter < len_str+1 THEN
			SET @ch := SUBSTR(string1,@counter,1);
			SELECT @ch WHERE @ch IN ('A','E','I','O','U');
			set @counter:=@counter+1;
		ELSE
			leave lbl1;
		end IF;
		
	end LOOP lbl1;
end $
delimiter ;
*/