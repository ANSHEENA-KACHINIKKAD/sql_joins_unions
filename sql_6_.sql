use entri_d42;
select * from country inner join persons on country.id = persons.Country_id ; -- (1)INNERJOIN
SELECT * FROM country left join persons on country.id = persons.Country_id ;-- left join
select * from country right join persons on country.id = persons.Country_id; -- right join
SELECT
  country.id AS Country_ID,
  country.Country_name AS Country_Name,
  country.Population AS Country_Population,
  country.Area AS Country_Area,
  persons.id AS Person_ID,
  persons.Fname AS First_Name,
  persons.Lname AS Last_Name,
  persons.Rating
FROM
  country
LEFT JOIN
  persons ON country.id = persons.Country_id
UNION ALL
(SELECT
  country.id AS Country_ID,
  country.Country_name AS Country_Name,
  country.Population AS Country_Population,
  country.Area AS Country_Area,
  persons.id AS Person_ID,
  persons.Fname AS First_Name,
  persons.Lname AS Last_Name,
  persons.Rating
FROM
  country
RIGHT JOIN
  persons ON country.id = persons.Country_id);-- full join
  
 select distinct Country_name from country union select distinct Country_name from persons ; -- (2)
 
 select Country_name from country union select Country_name from persons ; -- (3)
 
 select round(persons.Rating) as updated_rating from persons ; -- (4)