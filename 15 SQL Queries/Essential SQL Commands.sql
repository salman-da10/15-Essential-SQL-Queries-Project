/* Query 1 */
/* Simple SELECT */
/*
select * from fsd_restaurants;
select * from fsd_reviews;
select * from isld_restaurants;
select * from isld_reviews;
select * from khi_restaurants;
select * from khi_reviews;
select * from Lhr_restaurants;
select * from Lhr_reviews;
select * from rwp_restaurants;
select * from rwp_reviews;
select * from pk_restaurants_2025;
select * from pk_reviews_2025;
*/
/* From FoodPanda DS */



/* Query 2 */
/* Specific Column Selection */
/* 
select 
CompleteStoreName,
FoodType,
AverageRating,
Reviewers
from isld_restaurants;
*/
/* From FoodPanda DS */



/* Query 3 */
/* WHERE Filtering */
/*
select 
CompleteStoreName, FoodType
from isld_restaurants
where FoodType = 'Pakistani';

select 
CompleteStoreName,AverageRating
from isld_restaurants
where AverageRating > 4.5;
*/
/* From FoodPanda DS */



/* Query 4 */
/* Multiple Conditions */
/*
select 
CompleteStoreName, FoodType, AverageRating
from isld_restaurants
where FoodType = 'Desserts' and AverageRating > 4.5;

select 
CompleteStoreName, FoodType, AverageRating
from isld_restaurants
where FoodType = 'Pakistani' and AverageRating > 4.5;
*/
/* From FoodPanda DS */



/* Query 5 */
/* ORDER BY */
/*
select Name, Wickets from odibowling
order by Wickets DESC;
*/
/* From Cricket DS */



/* Query 6 */
/* COUNT With GROUP BY */
/*
select Matches, COUNT(Name) AS PlayersCount,
    STRING_AGG(Name,',') AS PlayerNames
FROM odibatting
GROUP BY Matches
ORDER BY Matches DESC;
*/
/* From Cricket DS */



/* Query 7 */
/* SUM with GROUP BY: e.g. Total Runs by Batsman */
/*
select
STRING_AGG(Name,',') AS [Players Name],
Matches, SUM(Runs) AS [Total Runs]
from odibatting
group by Matches
order by Matches DESC;
*/
/* From Cricket DS */



/* Query 8 */
/* AVG with GROUP BY: e.g. Average Runs */
/*
select
STRING_AGG(Name,',') AS [Players Name],
Matches, AVG(Average) AS [Average Runs]
from odibatting
group by Matches
order by Matches DESC;
*/
/* From Cricket DS */



/* Query 9 */
/* HAVING CLAUSE */
/*
SELECT FoodType
FROM isld_restaurants
GROUP BY FoodType
HAVING COUNT(*) > 15;
*/
/* From FoodPanda DS */



/* Query 10 */
/* MAX/MIN with GROUP BY */
/*
select
Name,Runs
FROM odibatting
WHERE Runs = (SELECT MAX(Runs) FROM odibatting);

select
Name,Runs
FROM odibatting
WHERE Runs = (SELECT MIN(Runs) FROM odibatting);

select
Name,Hundreds
FROM odibatting
WHERE Hundreds = (SELECT MAX(Hundreds) FROM odibatting where Strike_Rate >85 );

select
Name,Hundreds
FROM odibatting
WHERE Hundreds = (SELECT MAX(Hundreds) FROM odibatting where Strike_Rate >90 );

select
Name,Hundreds
FROM odibatting
WHERE Hundreds = (SELECT MAX(Hundreds) FROM odibatting where Strike_Rate >95 );
*/
/* From Cricket DS */



/* Query 11,12,13 */
/* JOINS */
/*
select c.FirstName,c.LastName,c.PhoneNumber, o.PaymentMethod from
customer as c
inner join orders as o
on c.CustomerID = o.CustomerID;


select * from
customer as c
left join orders as o
on c.CustomerID = o.CustomerID;


select * from
customer as c
right join orders as o
on o.CustomerID = c.CustomerID;
*/
/* From CO Customers/Orders DS */



/* Query 14 */
/* MULTIPLE JOINS */
/*
select 
    od.Name AS PlayerName,
    od.Runs AS ODI_Runs,
    od.Average AS ODI_Avg,
    tb.Runs AS Test_Runs,
    tb.Average AS Test_Avg,
    t20.Runs AS T20_Runs,
    t20.Average AS T20_Avg
from odibatting od
inner join testbatting tb 
    on tb.Name = od.Name
inner join t20batting t20
    ON t20.Name = od.Name;
*/
/* From Cricket DS */



/* Query 15 */
/* CTE */
/*
with ODI_Player AS (

select
     Name, Runs, Average
from odibatting
where Runs >3000
), 
Test_Player AS (
select
      Name, Runs, Average
from testbatting
where Runs>5000
)
select
od.Name,
od.Runs as [ODI RUNS],
od.Average as [ODI AVERAGE],
t.Runs as [Test Runs],
t.Average as [Test Average]
from ODI_Player od
inner join Test_Player as t
on od.Name = t.Name;
*/
/* From Cricket DS */



/* Combining All Concepts "A mini project' */
/*
WITH BattingSummary AS (
    SELECT 
        Name,
        SUM(Runs) AS Total_Runs,
        AVG(Average) AS Overall_Avg
    FROM (
        SELECT Name, Runs, Average FROM odibatting
        UNION ALL
        SELECT Name, Runs, Average FROM testbatting
        UNION ALL
        SELECT Name, Runs, Average FROM t20batting
    ) AS allFormats
    GROUP BY Name
),
TopPlayers AS (
    SELECT 
        Name, 
        Total_Runs, 
        Overall_Avg
    FROM BattingSummary
    WHERE Total_Runs > 8000
)
SELECT 
    t.Name,
    t.Total_Runs,
    t.Overall_Avg,
    b.Total_Runs AS Batting_Runs
FROM TopPlayers t
JOIN BattingSummary b 
    ON t.Name = b.Name
ORDER BY t.Total_Runs DESC;
*/
/* From Cricket DS */










