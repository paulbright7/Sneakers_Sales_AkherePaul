SELECT * 
FROM Sneakers;

ALTER TABLE Sneakers
ALTER COLUMN [Date] date;
-- Let see the product name, 
-- Result = 10 product
SELECT DISTINCT Product_Name
FROM Sneakers;


-- Let see the product Type, 
-- Result = 5 product Type
SELECT DISTINCT Product_Type
FROM Sneakers;

-- Let see the Brand, 
-- Result = 7 Brand
SELECT DISTINCT Brand
FROM Sneakers;

-- Let see the Genders, 
-- Result = 3 Gender
SELECT DISTINCT Gender
FROM Sneakers;

-- Let see the category, 
-- Result = 4 Category 
SELECT DISTINCT Category
FROM Sneakers;

-- Let see the Country, 
-- Result = 7 Countries
SELECT DISTINCT Country
FROM Sneakers;

-- Let see the payment method, 
-- Result = 4 payment mode
SELECT DISTINCT Payment_Mode
FROM Sneakers;

-- We have a slight issues and that is some numbers are saved as text so we have to fix
-- the columns affected
ALTER TABLE Sneakers
ALTER COLUMN Quantity int NOT NULL


-- Total Sales
-- Result 193,103.07
SELECT SUM(Amount) AS 'Total Sales'
FROM Sneakers;

-- Total Quantity SolD
-- Result 1097
SELECT SUM(Quantity) AS 'Total Quantity Sold'
FROM Sneakers;

-- Let see the most payment method used
-- Result Wallet, Card, Cash on Delivery, UPI
SELECT Payment_mode, SUM(Amount) AS 'Total Sales'
FROM Sneakers
GROUP BY Payment_Mode
ORDER BY 'Total Sales' DESC;

-- Let see the total quantity sold by brand
-- Result Nike has the highest quantity sold
SELECT Brand, SUM(Quantity) AS 'Total Quantity Sold'
FROM Sneakers
GROUP BY Brand
ORDER BY 'Total Quantity Sold' DESC;

-- Let see the Payment mehod used in each country
-- Result Card is the main used payment option
SELECT Payment_mode, Country, SUM(Amount) AS 'Total Sales'
FROM Sneakers
GROUP BY Payment_Mode, Country;

-- Let see how the product was sold accross each country
-- Nike dominate the category with the most sold
SELECT Brand, Country, SUM(Quantity) AS 'Total Quantity Sold'
FROM Sneakers
GROUP BY Brand, Country;

-- Let see the country with the highest Revenue
-- Japan generated more revenue
SELECT Country, SUM(Amount) AS 'Total Revenue'
FROM Sneakers
GROUP BY Country
ORDER BY 'Total Revenue' DESC;

-- Let see the country with the highest quantity sold
-- Result Uk is the the country with the highest quantity sold

SELECT Country, SUM(Quantity) AS 'Total Quantity Sold'
FROM Sneakers
GROUP BY Country
ORDER BY 'Total Quantity Sold' DESC;


