drop PROCEDURE IF EXISTS pro3;
delimiter $
CREATE PROCEDURE pro3(IN string1 VARCHAR(15))
BEGIN
	DECLARE len_str int;
	set @countv:=0;
	set len_str:=LENGTH(string1);
	set @ch :='';
	
	set @counter:=1;
	
	lbl1:LOOP
		IF @counter < len_str+1 THEN
			SET @ch := SUBSTR(string1,@counter,1);
			IF (@ch='A' or @ch='E' or @ch='I' or @ch='O' or @ch='U') THEN
				set @countv:= @countv+1;
			end IF;
			set @counter:=@counter+1;
		ELSE
			leave lbl1;
		end IF;
		
	end LOOP lbl1;
	SELECT @countv 'Vowels count';
end $
delimiter ;