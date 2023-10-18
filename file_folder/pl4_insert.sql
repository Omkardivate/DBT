DROP PROCEDURE IF EXISTS pro4;
delimiter $
CREATE PROCEDURE pro4(p1 int,n1 VARCHAR(15), c1 VARCHAR(15) )
BEGIN
	DECLARE EXIT handler FOR 1062 SELECT 'same id is already present' status;
	IF c1='pune' THEN
		INSERT INTO pl4 VALUES(p1,n1,c1);
		SELECT 'Record Inserted' status;
	ELSE
	    SELECT 'Invalid city' status;
	END IF;
END $
delimiter ;