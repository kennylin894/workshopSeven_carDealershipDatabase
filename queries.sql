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