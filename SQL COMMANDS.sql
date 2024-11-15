------- SQL COMMANDS ------
USE SAKILA;
##Q2. List all details of actors
##CODE => 
   SELECT * FROM Actor;
##Q3. List all customer information from DB.
##CODE =>
     SELECT * FROM Customer;
##Q4. List different countries.
##CODE =>
    SELECT Country AS CountryName  FROM Country;
##Q5. Display all active customers.
##CODE =>
     SELECT * FROM Customer 
     WHERE Active = TRUE; 
##Q6. List of all rental IDs for customer with ID 1.
##CODE =>    
 SELECT Rental_ID 
FROM Rental 
WHERE Customer_ID  = 1;

##Q7, Display all the films whose rental duration is greater than 5 .
## CODE -->
use sakila;
select * from film;
SELECT Film_ID, Title, Rental_Duration 
FROM Film
WHERE Rental_Duration > 5;

##Q8, List the total number of films whose replacement cost is greater than $15 and less than $20.
## CODE -->
SELECT COUNT(*) AS TotalFilms
FROM Film
WHERE Replacement_Cost > 15 AND Replacement_Cost < 20;

##Q9, Display the count of unique first names of actors.
## CODE -->
SELECT COUNT(DISTINCT FIRST_NAME) AS Unique_First_name
 FROM ACTOR;
 
##Q10. Display the first 10 records from the customer table .
## CODE -->
 select * from customer
 limit 10;
 
##Q11, Display the first 3 records from the customer table whose first name starts with ‘b’.
## CODE -->
SELECT * 
FROM Customer
WHERE First_Name LIKE 'B%'
LIMIT 3;

##Q12, Display the names of the first 5 movies which are rated as ‘G’.
## CODE -->
select * from film
where rating like ('G')
limit 5;

##Q13, Find all customers whose first name starts with "a".
## CODE -->
SELECT * 
FROM Customer
WHERE First_Name LIKE 'A%';
##Q14. Find all customers whose first name ends with "a".
## CODE -->
SELECT * 
FROM Customer
WHERE First_Name LIKE '%A'; 

##Q15. Display the list of first 4 cities which start and end with ‘a’ .
## CODE -->
SELECT city as City_Name
FROM city
WHERE city LIKE ('a%') and city like ('%A')
limit 4;

##Q16. Find all customers whose first name have "NI" in any position.
## CODE -->
SELECT * 
FROM Customer
WHERE First_Name LIKE 'Ni%';

##Q17. Find all customers whose first name have "r" in the second position .
## CODE -->
     SELECT * 
FROM Customer
WHERE First_Name LIKE '_R%';


##Q18, Find all customers whose first name starts with "a" and are at least 5 characters in length.
## CODE -->
SELECT * 
FROM Customer
WHERE First_Name LIKE 'A____%';
 ----- OR -----
 SELECT * 
FROM Customer
WHERE First_Name LIKE 'a%' 
  AND LENGTH(First_Name) >= 5;

##Q19, Find all customers whose first name starts with "a" and ends with "o".
## CODE -->
SELECT * 
FROM Customer
WHERE First_Name LIKE 'A%' and First_Name like '%O';

##Q20, Get the films with pg and pg-13 rating using IN operator.
## CODE -->
SELECT * 
FROM Film
WHERE Rating IN ('PG', 'PG-13');

##Q21, Get the films with length between 50 to 100 using between operator.
## CODE -->
SELECT * 
FROM Film
WHERE length between 50 and 100 ;

##Q22, . Get the top 50 actors using limit operator.
## CODE -->
select * from actor
limit 50;

##Q23. Get the distinct film ids from inventory table.
## CODE -->
select distinct film_id from inventory;
