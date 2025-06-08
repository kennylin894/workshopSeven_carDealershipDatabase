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


