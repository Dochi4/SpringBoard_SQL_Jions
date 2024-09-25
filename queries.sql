-- write your queries here

-- Query 1 :

    SELECT * FROM owners o LEFT JOIN vehicles v ON o.id = v.owner_id;

-- Query 2 :

    SELECT o.first_name, o.last_name , COUNT(*) as count FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY o.first_name,o.last_name ORDER BY o.first_name,count;

-- Query 3 :

    SELECT o.first_name, o.last_name, COUNT(*) AS count, ROUND(AVG(v.price)) AS average_price FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY o.first_name, o.last_name HAVING ROUND(AVG(v.price)) > 10000 AND COUNT(*) > 1 ORDER BY AVG(v.price) DESC;
