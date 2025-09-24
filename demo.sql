CREATE TABLE mobiles(
    id INT(11) PRIMARY KEY
brand VARCHAR (255)
model VARCHAR (255)
price INT (11)
stock INT (11)
);
INSERT INTO mobiles (id, brand, model, price, stock) 
VALUES(1, 'Samsung', 'Galaxy M14', 12000, 30),
(2, 'Redmi', 'Note 12', 15000, 25),
(3, 'Realme', 'Narzo 50', 13000, 20),
(4, 'Samsung', 'Galaxy A23', 18000, 10);

SELECT * FROM mobiles
WHERE price > 13000 OR stock < 15 ;

UPDATE mobiles
SET stock = stock + 5,
price = 12500
WHERE model = 'Narzo 50';

DELETE FROM mobiles 
WHERE id = 2;

SELECT MIN(price) AS 'LOWEST PRICE', MAX(price) AS 'HIGHEST PRICE' 
FROM mobiles;
SELECT SUM(stock) AS 'TOTAL STOCK'
FROM mobiles;

SELECT * FROM mobiles 
ORDER BY price DESC
LIMIT 2;
