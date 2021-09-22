1.
SELECT * FROM vw_ourfilms;

2.
SELECT * FROM vw_crimefilms;

3.
SELECT * FROM vw_filmsout;

4.
SELECT * FROM vw_laterentals;

5.
SELECT * FROM vw_employeeperformance;

6.
SELECT * FROM vw_top5last30days;

7.
-- CALL sp_rent_oneFilm(/*employee_id, customer_id, stockItem_id*/);
CALL sp_rent_oneFilm(2, 9, 29);

8.
--SELECT isLate(/*stockItem_id*/);
SELECT isLate(9); /* Denna är sen */
SELECT isLate(23); /* Denna är inte sen när detta skickas in */

9.
--CALL sp_return_oneFilm(/*stockItem_id*/);
CALL sp_return_oneFilm(7);

10.
-- Här nedan är koden till min trigger som inte syns i min version av workbench.
-- Den heter rentalOccation_has_stockItem_AFTER_INSERT
SELECT * FROM filmStatistics; /* Om man vill se tabellen */
--Den går inte tillbaka till början av historiken. Visar endast de filmerna som hyrts ut efter att triggern skapades.

/* BEGIN
	SELECT
		DATE_FORMAT(curdate(), '%Y-%m-01')
	INTO
		@stat_month;
	SELECT 
		title
	INTO 
		@title
	FROM
		film f
	JOIN
		stockItem s ON f.id = s.film_id
	JOIN
		rentalOccation_has_stockItem rhs ON rhs.stockitem_id = s.id
	WHERE
		NEW.stockItem_id = s.id;
	INSERT INTO filmStatistics (stat_month, film_title) VALUES (@stat_month, @title);
END */