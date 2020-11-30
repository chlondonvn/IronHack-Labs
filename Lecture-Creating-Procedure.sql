select COUNT(*) from account;

USE bank
DROP PROCEDURE IF EXISTS proc_no_of_rows
delimiter //
CREATE PROCEDURE proc_no_of_rows
(out param1 int)
BEGIN
SELECT COUNT(*) FROM account;
END;
//
delimiter ;


call proc_no_of_rows(@);


USE sakila;
DROP PROCEDURE IF EXISTS proc_no_movies_features
delimiter //
CREATE PROCEDURE proc_no_movies_features
@'special_feautures' SET(25) 
(out param1 int)
BEGIN
SELECT COUNT(*) FROM film
WHERE special_features = @special_features;
END;
//
delimiter ;

