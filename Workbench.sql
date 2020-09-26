1.INSERT INTO `twitter`.`users` (`id`, `first_name`, `last_name`, `handle`, `birthday`, `created_at`) VALUES ('7', 'Lim', 'Hamza', 'alim', '2016-07-20', now());

2.SELECT first_name, last_name as name
FROM users
WHERE id='6'


3.UPDATE users 
SET first_name = 'Mereilim', last_name='Aitassova' 
WHERE id='6';

SELECT first_name, last_name, id
FROM users

4.DELETE 
FROM users 
WHERE id='7';


SELECT *
FROM users