WITH MASTER AS(
SELECT *, CASE WHEN 1 THEN SUBSTRING(seat_number,1,1) END AS seq,
 CASE WHEN 1 THEN SUBSTRING(seat_number,2,100) END AS seat,
ROW_NUMBER() OVER(PARTITION BY SUBSTRING(seat_number,1,1) ) AS rn
 FROM Cinema_tickets 
WHERE occupancy =0
)

SELECT GROUP_CONCAT(seat_number,', ') AS conseq_seat FROM 

(SELECT m.seq,m.seat AS min_seat, n.seat AS max_seat FROM MASTER m
JOIN MASTER n ON n.rn -m.rn = 3 AND n.seat - m.seat =3 AND n.seq =m.seq)X
JOIN MASTER Y ON X.seq = Y.seq
WHERE Y.seq =X.seq AND X.min_seat <= Y.seat AND X.max_seat >= Y.seat  ;