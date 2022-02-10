-- write your queries here
--query 1
SELECT *
FROM owners
JOIN vehicles
ON owner_id = owners.id;


--query 2
SELECT first_name, last_name, COUNT(vehicles.owner_id)
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id 
GROUP BY owners.first_name, owners.last_name 
ORDER BY count ASC;

--query 3
 SELECT first_name, last_name, AVG(vehicles.price)::INTEGER, COUNT(vehicles.owner_id)
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id 
GROUP BY owners.first_name, owners.last_name 
HAVING AVG(vehicles.price)>10000 
ORDER BY first_name DESC;