-- 1. Get all dealerships
USE car_dealership;
SELECT * FROM dealerships;

-- 2. Find all vehicles for a specific dealership
USE car_dealership;
SELECT v.*
FROM vehicles v
JOIN inventory i ON v.VIN = i.VIN
WHERE i.dealership_id = 1;

-- 3. Find a car by VIN
USE car_dealership;
SELECT * 
FROM vehicles 
WHERE VIN = 'VIN';

-- 4. Find the dealership where a certain car is located, by VIN
USE car_dealership;
SELECT d.dealership_id, d.name, d.address, d.phone
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
WHERE i.VIN = 'VIN';

-- 5. Find all Dealerships that have a certain car type (i.e. Red Ford Mustang)
USE car_dealership;
SELECT DISTINCT d.dealership_id, d.name, d.address, d.phone
FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN vehicles v ON i.VIN = v.VIN
WHERE v.make = 'MAKE' 
  AND v.model = 'MODEL' 
  AND v.color = 'COLOR';
  
-- 6. Get all sales information for a specific dealer for a specific date range
USE car_dealership;
SELECT sc.*, v.make, v.model, v.year, v.color
FROM sales_contracts sc
JOIN vehicles v ON sc.VIN = v.VIN
JOIN inventory i ON v.VIN = i.VIN
WHERE i.dealership_id = 1
  AND sc.sale_date BETWEEN 'START' AND 'END';  
  