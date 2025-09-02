# SQL Queries Repository

This repository contains 15 SQL queries written and tested on three datasets:
- **Cricket**
- **FoodPanda**
- **CO (Customers/Orders)**

All queries are stored in the `Essential SQL Commands.sql` file.  
Below is a short description of each query along with the dataset it belongs to.


## 📌 Queries Overview

1. **Simple SELECT statements on multiple tables (restaurants and reviews across cities).**  
   Dataset: FoodPanda  

2. **Select specific columns (store name, food type, average rating, reviewers) from Islamabad restaurants.**  
   Dataset: FoodPanda  

3. **Filter results using WHERE (Pakistani food type, high average rating).**  
   Dataset: FoodPanda  

4. **Apply multiple conditions in WHERE (Desserts and rating > 4.5, Pakistani and rating > 4.5).**  
   Dataset: FoodPanda  

5. **ORDER BY clause to sort ODI bowlers by wickets.**  
   Dataset: Cricket  

6. **COUNT with GROUP BY – count number of players by matches played, aggregate player names.**  
   Dataset: Cricket  

7. **SUM with GROUP BY – total runs scored by players, grouped by matches.**  
   Dataset: Cricket  

8. **AVG with GROUP BY – average runs by players, grouped by matches.**  
   Dataset: Cricket  

9. **HAVING clause – filter food types with more than 15 restaurants.**  
   Dataset: FoodPanda  

10. **MAX/MIN with GROUP BY – highest and lowest runs, hundreds with different strike rate conditions.**  
    Dataset: Cricket  

11. **INNER JOIN – combine customer and orders data.**  
    Dataset: CO (Customers/Orders)  

12. **LEFT JOIN – return all customers with or without matching orders.**  
    Dataset: CO (Customers/Orders)  

13. **RIGHT JOIN – return all orders with or without matching customers.**  
    Dataset: CO (Customers/Orders)  

14. **Multiple JOINS – combine ODI, Test, and T20 batting stats for the same player.**  
    Dataset: Cricket  

15. **CTE (Common Table Expression) – compare ODI and Test players with minimum run thresholds.**  
    Dataset: Cricket  


## 📂 How to Use
1. Clone this repository.  
2. Open `queries.sql` in your SQL editor.  
3. Run queries on the respective dataset (mentioned at the end of each query). 

## 📌 Notes
- Queries are written in standard SQL.  
- Dataset names in the queries may vary depending on your environment.
