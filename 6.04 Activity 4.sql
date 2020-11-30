
SELECT COUNT(*) 
FROM film
WHERE release_year = '2006';

USE sakila
delimiter //
CREATE PROCEDURE num_movs_2006
(out param1 int)
BEGIN
SELECT COUNT(*) 
FROM film
WHERE release_year = '2006';
END;
//
delimiter ;

call num_movs_2006(@n);