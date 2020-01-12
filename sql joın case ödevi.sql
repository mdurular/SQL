WITH musteri AS (
SELECT
country as ulke,
count(*) as musteri_sayisi
FROM
customers
GROUP BY
ulke
ORDER BY musteri_sayisi DESC)
SELECT
musteri_sayisi, ulke
FROM
musteri;

SELECT
country as ulke,
count(*) as musteri_sayisi,
	CASE 
	when musteri_sayisi>20 THEN 'Büyük Ülke'
	when musteri_sayisi>10 THEN 'Orta ÜLke'
	ELSE 'Küçük Ülke'
	END AS Ülke_Statü
FROM
customers
GROUP BY
ulke
ORDER BY musteri_sayisi DESC;

WITH musteri AS (
SELECT
country as ulke,
count(*) as musteri_sayisi
FROM
customers
GROUP BY
ulke
ORDER BY musteri_sayisi DESC)
SELECT
musteri_sayisi, ulke,
CASE 
	when musteri_sayisi>20 THEN 'Büyük Ülke'
	when musteri_sayisi>10 THEN 'Orta Ülke'
	ELSE 'Küçük Ülke'
	END AS Ülke_Statü
FROM
musteri;
