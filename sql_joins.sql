SELECT p.Name AS Product, c.Name AS Category FROM products AS p JOIN categories AS c ON p.CategoryID = c.CategoryID WHERE c.Name = "Computers";

SELECT p.Name, p.Price, r.Rating FROM products AS p JOIN reviews AS r ON p.ProductID = r.ProductID WHERE r.Rating = 5;

SELECT CONCAT(e.FirstName, " ", e.LastName) AS Employee, SUM(s.Quantity) AS Total FROM employees AS e JOIN sales AS s ON e.EmployeeID = s.EmployeeID GROUP BY e.EmployeeID ORDER BY Total DESC LIMIT 5;

SELECT d.Name AS Department, c.Name AS Category FROM categories AS c JOIN departments AS d ON d.DepartmentID = c.DepartmentID WHERE c.Name = "Appliances" OR c.Name = "Games";

SELECT p.Name AS Product, SUM(s.Quantity) AS TotalQuantity, SUM(s.PricePerUnit * s.Quantity) AS TotalValue FROM products AS p JOIN sales AS s ON p.ProductID = s.ProductID WHERE p.Name = "Eagles: Hotel California";

SELECT MIN(r.Rating) AS MinForVisioTV FROM reviews AS r JOIN products AS p ON p.ProductID = r.ProductID WHERE p.Name = "Visio TV";

SELECT e.EmployeeID, e.FirstName, e.LastName, s.Quantity, p.Name FROM employees AS e JOIN sales AS s ON e.EmployeeID = s.EmployeeID JOIN products AS p ON s.ProductID = p.ProductID ORDER BY e.EmployeeID;