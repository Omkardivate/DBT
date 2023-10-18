/*
DROP TRIGGER if exists tr1;
delimiter $
create TRIGGER tr1 before insert on d for each ROW
BEGIN
	INSERT into d1 values (NEW.id,NEW.name,new.designation,CURRENT_DATE(),CURRENT_TIME(),USER());
end $
delimiter ;
*/

/*
DROP TRIGGER if exists tr1;
delimiter $
create TRIGGER tr1 before delete on d for each ROW
BEGIN 
	INSERT into d1 values ( OLD.id,OLD.name,OLD.designation,CURRENT_DATE(),CURRENT_TIME(),USER());
end $
delimiter ;
*/


/* ----------------- Assignment 1 -----------------------------
DROP TRIGGER if exists tr1;
delimiter $
create TRIGGER tr1 after UPDATE on e for each ROW
BEGIN 
	INSERT into hs values ( CURRENT_DATE(),NEW.dsgn,OLD.dsgn);
end $
delimiter ;


DROP TRIGGER if exists tr1;
delimiter $
create TRIGGER tr1 before UPDATE on e for each ROW
BEGIN 
	INSERT into hs values ( CURRENT_DATE(),NEW.dsgn,OLD.dsgn);
end $
delimiter ;
*/

/* ----------------- Assignment 2 -----------------------------
// To insert 5 records
DROP TRIGGER if exists tr1;
delimiter $
create TRIGGER tr1 AFTER INSERT on tempo for each ROW
BEGIN
	
	SELECT count(id) into @cnt from tempo;
	IF(@cnt>5) THEN
		signal sqlstate '42000' set message_text='Invalid insertion, count is greater than 5';
	end if;
end $
delimiter ;
--------------------------------------
//inserting one extra record (5+1)
DROP TRIGGER if exists tr1;
delimiter $
create TRIGGER tr1 before INSERT on tempo for each ROW
BEGIN
	
	SELECT count(id) into @cnt from tempo;
	IF(@cnt>5) THEN
		signal sqlstate '42000' set message_text='Invalid insertion, count is greater than 5';
	end if;
end $
delimiter ;
*/

/* ----------------- Assignment 3 -----------------------------
DROP TRIGGER if exists tr1;
delimiter $
create TRIGGER tr1 BEFORE INSERT on Bank for each ROW
BEGIN 
	IF (NEW.Acctype = 'Saving') THEN
		select count(Accno) INTO @temp from Bank where Accno like 'SA/23-%';
		set NEW.Accno= CONCAT('SA/23-','000',@temp+1) ;
	ELSE
		select count(Accno) INTO @temp from Bank where Accno like 'CA/23-%';
		set NEW.Accno= CONCAT('CA/23-','000',@temp+1) ;
	end if;
end $
delimiter ;
*/
