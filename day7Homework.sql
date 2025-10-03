CREATE TABLE users(
    id INT PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(255),
    score INT(11),
    bonus INT(11),
    challenge VARCHAR(255);
)

INSERT INTO users(id, name, city, score, bonus, challenge)
VALUES
(1, Raj, Chennai, 88, 5, Fitness),
(2, Anu, Mumbai, 91, NULL, Diet),
(3, Ravi, Chennai, 78, 3, Fitness),
(4, Meena, Delhi, 82, NULL, Diet),
(5, Farah, Mumbai, 95, 4, Fitness),
(6, Kiran, Pune, 70, NULL, Yoga),
(7, Latha, Pune, 87, NULL, Fitness);

---Show the details of users whose score is greater than the average score across all users---
SELECT * FROM users
WHERE score > (SELECT AVG(score) FROM users);

---Display the names of users who are participating in the same challenge as the user named 'Farah'.---

SELECT name FROM users
WHERE challenge = SELECT challenge FROM users
WHERE name = 'Farah' ;



