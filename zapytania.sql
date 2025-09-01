-- 1) Wszystkie wyniki kierowcow posortowane w kolejnosci (sezon – runda – pozycja koncowa)
SELECT
	s.year,
	r.round_no,
	r.name AS race_name,
	d.first_name || ' ' || d.last_name AS driver,
	rr.grid_pos,
	rr.finish_pos,
	rr.status
FROM race_result AS rr
JOIN race AS r ON r.race_id = rr.race_id
JOIN season AS s ON s.season_id = r.season_id
JOIN driver AS d ON d.driver_id = rr.driver_id
ORDER BY s.year, r.round_no, rr.finish_pos NULLS LAST;

-- 2) Liczba zwyciestw kierowcy w wyscigu
SELECT
	d.first_name || ' ' || d.last_name AS driver,
	COUNT(*) AS wins
FROM race_result AS rr
JOIN driver AS d ON d.driver_id = rr.driver_id
WHERE rr.finish_pos = 1
GROUP BY driver
ORDER BY wins DESC;

-- 3) Srednia pozycji kierowcow na mecie (nie liczac DNF)
SELECT
	d.first_name || ' ' || d.last_name AS driver,
	ROUND(AVG(rr.finish_pos)::NUMERIC,2) AS avg_finish
FROM race_result AS rr
JOIN driver AS d ON d.driver_id = rr.driver_id
WHERE rr.finish_pos IS NOT NULL
GROUP BY driver
ORDER BY avg_finish;