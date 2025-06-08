DROP DATABASE IF EXISTS car_dealership;

CREATE DATABASE car_dealership;

USE car_dealership;

-- Table 1: dealerships
CREATE TABLE dealerships (
    dealership_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phone VARCHAR(12) NOT NULL,
    PRIMARY KEY (dealership_id)
);

-- Table 2: vehicles  
CREATE TABLE vehicles (
    VIN VARCHAR(17) NOT NULL,
    year INT NOT NULL,
    make VARCHAR(30) NOT NULL,
    model VARCHAR(30) NOT NULL,
    color VARCHAR(20) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    mileage INT NOT NULL,
    type VARCHAR(20) NOT NULL,
    SOLD BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (VIN)
);

-- Table 3: inventory
CREATE TABLE inventory (
    dealership_id INT NOT NULL,
    VIN VARCHAR(17) NOT NULL
);

-- Table 4: sales_contracts
CREATE TABLE sales_contracts (
    id INT NOT NULL AUTO_INCREMENT,
    VIN VARCHAR(17) NOT NULL,
    sale_date DATE NOT NULL,
    sale_price DECIMAL(10, 2) NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100),
    PRIMARY KEY (id)
);

-- Sample data for dealerships
INSERT INTO dealerships (name, address, phone) VALUES
('Downtown Motors', '123 Main Street', '555-0001'),
('Westside Auto', '456 Oak Avenue', '555-0002'),
('Northside Cars', '789 Pine Road', '555-0003'),
('Eastside Autos', '321 Elm Street', '555-0004'),
('Metro Car Sales', '987 First Avenue', '555-0005');

-- Sample data for vehicles
INSERT INTO vehicles (VIN, year, make, model, color, price, mileage, type, SOLD) VALUES
('1HGBH41JXMN109186', 2020, 'Honda', 'Civic', 'Blue', 22000.00, 15000, 'Sedan', FALSE),
('2FMDK3GC5BBA01234', 2019, 'Ford', 'Mustang', 'Red', 35000.00, 8000, 'Coupe', TRUE),
('3VWDX7AJ5DM123456', 2021, 'Volkswagen', 'Jetta', 'White', 24000.00, 12000, 'Sedan', FALSE),
('1G1YY22G965123789', 2018, 'Chevrolet', 'Camaro', 'Black', 28000.00, 25000, 'Coupe', TRUE),
('WVWZZZ1JZ3W654321', 2022, 'Volkswagen', 'Golf', 'Silver', 26000.00, 5000, 'Hatchback', FALSE),
('1FTFW1ET5DFC98765', 2020, 'Ford', 'F-150', 'Red', 32000.00, 18000, 'Truck', FALSE),
('JTDKN3DU8E0147852', 2021, 'Toyota', 'Prius', 'Green', 25000.00, 10000, 'Hybrid', FALSE),
('1N4AL3AP8JC963741', 2019, 'Nissan', 'Altima', 'Gray', 21000.00, 22000, 'Sedan', TRUE),
('1HGCM82633A004352', 2021, 'Honda', 'Accord', 'Black', 28000.00, 8000, 'Sedan', FALSE),
('2T1BURHE0JC014567', 2022, 'Toyota', 'Corolla', 'White', 23000.00, 3000, 'Sedan', FALSE),
('KNDJN2A2XJ7654321', 2021, 'Kia', 'Forte', 'Red', 20000.00, 15000, 'Sedan', FALSE),
('1G1ZT53846F123456', 2017, 'Chevrolet', 'Malibu', 'Silver', 18000.00, 35000, 'Sedan', FALSE),
('5NPF34AF2JH456789', 2022, 'Hyundai', 'Sonata', 'Blue', 26000.00, 5000, 'Sedan', TRUE),
('1FTEW1E59MKE87654', 2021, 'Ford', 'F-150', 'Black', 42000.00, 15000, 'Truck', FALSE),
('WBA3A5C59FK987321', 2020, 'BMW', '330i', 'White', 41000.00, 11000, 'Sedan', FALSE);

-- Sample data for inventory
INSERT INTO inventory (dealership_id, VIN) VALUES
(1, '1HGBH41JXMN109186'),
(1, '2FMDK3GC5BBA01234'),
(2, '3VWDX7AJ5DM123456'),
(2, '1G1YY22G965123789'),
(3, 'WVWZZZ1JZ3W654321'),
(3, '1FTFW1ET5DFC98765'),
(1, 'JTDKN3DU8E0147852'),
(1, '1N4AL3AP8JC963741'),
(2, '1HGCM82633A004352'),
(2, '2T1BURHE0JC014567'),
(3, 'KNDJN2A2XJ7654321'),
(3, '1G1ZT53846F123456'),
(4, '5NPF34AF2JH456789'),
(4, '1FTEW1E59MKE87654'),
(5, 'WBA3A5C59FK987321');

-- Sample data for sales contracts
INSERT INTO sales_contracts (VIN, sale_date, sale_price, customer_name, customer_email) VALUES
('1G1YY22G965123789', '2023-06-15', 27500.00, 'John Smith', 'john.smith@email.com'),
('2FMDK3GC5BBA01234', '2023-08-10', 34000.00, 'Mike Brown', 'mbrown@email.com'),
('1N4AL3AP8JC963741', '2023-09-22', 20500.00, 'Sarah Johnson', 'sarah.j@email.com'),
('5NPF34AF2JH456789', '2023-11-05', 25500.00, 'Emily Davis', 'emily.davis@email.com');
