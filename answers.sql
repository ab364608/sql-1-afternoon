-- person

CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT null,
  age INT NOT null,
  height INT NOT null,
  city VARCHAR(50) NOT null,
  favorite_color VARCHAR(30) NOT null
)

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Billy', 9, 170, 'New York City', 'black'),
('Willy', 12, 163, 'Arlington', 'orange'),
('Bobby', 15, 200, 'Los Angeles', 'gold'),
('Robby', 11, 150, 'New Orleans', 'red'),
('Milly', 16, 170, 'Dallas', 'pink');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red';

SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');


-- orders

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INT,
  product_name VARCHAR(150) NOT null,
  product_price INT NOT null,
  quantity INT NOT null
)

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (23, 'Steak', 17.99, 1),
(24, 'Fried Pickles', 8.99, 3),
(25, 'Ribeye', 23.49, 1),
(26, 'Mashed Potatoes', 9.49, 2),
(27, 'Dr. Pepper', 2.99, 4);

SELECT * FROM orders;

SELECT COUNT(order_id) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 24;


-- artist

INSERT INTO artist (name)
VALUES('Black Eyed Peas'),
('Kanye West'),
('Travis Scott');

SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT * FROM artist
ORDER BY name ASC
LIMIT 5;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';


-- employee

SELECT first_name last_name FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(city) FROM employee
WHERE city = 'Lethbridge';


-- invoice

SELECT COUNT(*) from invoice
WHERE billing_country = 'USA';

SELECT MAX(total) from invoice;

SELECT MIN(total) from invoice;

SELECT * from invoice
WHERE total > 5;

SELECT COUNT(*) from invoice
WHERE total < 5;

SELECT COUNT(*) from invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) from invoice;

SELECT SUM(total) from invoice;