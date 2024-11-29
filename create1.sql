/* 
Initial create file for creating the Bakery database
*/

PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Person;
CREATE TABLE Person (
    personID INTEGER PRIMARY KEY NOT NULL CHECK (personID > 0),
    personName TEXT NOT NULL,
    nif VARCHAR(9) NOT NULL UNIQUE,
);

DROP TABLE IF EXISTS Client;
CREATE TABLE Client (
    personID INTEGER PRIMARY KEY NOT NULL CHECK (personID > 0),
    email TEXT NOT NULL UNIQUE,
    phoneNumber TEXT NOT NULL,
    address TEXT NOT NULL,
    birthDate TEXT NOT NULL,

    FOREIGN KEY (personID) REFERENCES Person(personID) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee (
    personID INTEGER PRIMARY KEY NOT NULL CHECK (personID > 0),
    job TEXT NOT NULL,
    salary NUMERIC NOT NULL CHECK (salary > 0),
    hiringDate TEXT NOT NULL,

    FOREIGN KEY (personID) REFERENCES Person(personID) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS Bakery;
CREATE TABLE Bakery (
    bakeryID INTEGER PRIMARY KEY NOT NULL CHECK (bakeryID > 0),
    name TEXT NOT NULL,
    location TEXT NOT NULL,
    phoneNumber TEXT NOT NULL,
);

DROP TABLE IF EXISTS Fidelity;
CREATE TABLE Fidelity (
    personID PRIMARY KEY NOT NULL UNIQUE CHECK (fidelityProgramID > 0),
    pointsBalance INTEGER NOT NULL DEFAULT 0 CHECK (pointsBalance >= 0),
    startingDate TEXT NOT NULL,       -- starting date of the membership
    
    FOREIGN KEY (personID) REFERENCES Client(personID) ON DELETE CASCADE ON UPDATE CASCADE,
);

DROP TABLE IF EXISTS Shift;
CREATE TABLE Shift (
    shiftID PRIMARY KEY NOT NULL UNIQUE CHECK (shiftID > 0),
    startingTime TEXT NOT NULL CHECK (startingTime < endingTime),
    endingTime TEXT NOT NULL,
    intervalBreak TEXT NOT NULL,
);

DROP TABLE IF EXISTS Product;
CREATE TABLE Product (
    productID PRIMARY KEY
    name TEXT NOT NULL,
    price NUMERIC NOT NULL CHECK (price > 0),
    productType
);

DROP TABLE IF EXISTS Ingredient;
CREATE TABLE Ingredient (
    ingredientID PRIMARY KEY NOT NULL UNIQUE CHECK (ingredientID > 0),
    name TEXT NOT NULL,
    unit TEXT NOT NULL,
    expirationDate TEXT NOT NULL,
    stockQuantity INTEGER NOT NULL CHECK (stockQuantity >= 0),
);

DROP TABLE IF EXISTS Supplier;
CREATE TABLE Supplier (
    supplierID PRIMARY KEY NOT NULL UNIQUE CHECK (supplierID > 0),
    supplierName TEXT NOT NULL,
    contactNumber TEXT NOT NULL,
    ingredient
);

DROP TABLE IF EXISTS Sale;
CREATE TABLE Sale (
    saleID PRIMARY KEY NOT NULL UNIQUE CHECK (saleID > 0),
    description TEXT NOT NULL,
    discountPercentage NUMERIC NOT NULL CHECK (discountPercentage >= 0),
    startingDate TEXT NOT NULL
    endingDate TEXT NOT NULL
);

DROP TABLE IF EXISTS Delivery;
CREATE TABLE Delivery (
    deliveryID PRIMARY KEY NOT NULL UNIQUE CHECK (deliveryID > 0),
    deliveryAddress TEXT NOT NULL,
    deliveryDate TEXT NOT NULL,
    deliveryStatus TEXT NOT NULL
);

DROP TABLE IF EXISTS Order;
CREATE TABLE Order (
    orderID PRIMARY KEY NOT NULL UNIQUE CHECK (orderID > 0),
    orderDate TEXT NOT NULL,
    totalValue NUMERIC NOT NULL CHECK (totalValue > 0),
    orderStatus TEXT NOT NULL,
);

DROP TABLE IF EXISTS Rating;
CREATE TABLE Rating (
    ratingID PRIMARY KEY NOT NULL UNIQUE CHECK (ratingID > 0),
    score INTEGER NOT NULL CHECK (score >= 0 AND score <= 5),
    comment TEXT NOT NULL,
    orderID INTEGER NOT NULL,

    FOREIGN KEY (orderID) REFERENCES Order(orderID) ON DELETE CASCADE ON UPDATE CASCADE
);

DROP TABLE IF EXISTS Payment;
CREATE TABLE Payment (
    paymentID PRIMARY KEY NOT NULL UNIQUE CHECK (paymentID > 0),
    paymentMethod TEXT NOT NULL,
    paymentDate TEXT NOT NULL,
    paymentValue NUMERIC NOT NULL CHECK (paymentValue > 0),
    orderID INTEGER NOT NULL,

    FOREIGN KEY (orderID) REFERENCES Order(orderID) ON DELETE CASCADE ON UPDATE CASCADE
);