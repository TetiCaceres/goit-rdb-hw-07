use hw07;

SELECT id, date, year(date), month(date), day(date) from orders;

SELECT id, date, date_add(date, interval 1 day) as plus_1_day from orders;

SELECT id, date, unix_timestamp(date) from orders;

SELECT count(*)
FROM orders
WHERE date between '1996-07-10 00:00:00' and '1996-10-08 00:00:00';

SELECT id, date, JSON_OBJECT('id', id, 'date', date) AS json_object from orders;