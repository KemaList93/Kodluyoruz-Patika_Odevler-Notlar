-- Aşağıdaki Sorgu Senaryolarını "dvdrental" örnek veritabanı üzerinde gerçekleştiriyoruz.

-- 1. Country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralıyoruz ;

SELECT * FROM Country 
WHERE Country LIKE 'A%a' ;

-- 2. Country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karaktaeri ile sonlananları sıralıyoruz ;

SELECT * FROM Country  
WHERE  Country LIKE '_____n' ;

-- 3. film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük yada küçük harf farketmesizin 'T' karakteri içeren fil isimlerini sıralayınız ;

SELECT title FROM film 
WHERE title ILIKE '%T%T%T%T%' ;

-- 4. film tablosunda bulunan rüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız ;

SELECT * FROM film 
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = '2.99' ;