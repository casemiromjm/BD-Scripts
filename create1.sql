/* 
Initial create file for creating the Bakery database
*/

PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS Person;
CREATE TABLE Person (
    personID INTEGER PRIMARY KEY NOT NULL CHECK (personID > 0) ON DELETE CASCADE,
    personName TEXT NOT NULL,
    nif VARCHAR(9) NOT NULL UNIQUE,
);

DROP TABLE IF EXISTS Client;
CREATE TABLE Client (
    personID INTEGER PRIMARY KEY NOT NULL CHECK (personID > 0) ON UPDATE CASCADE,
    email TEXT NOT NULL UNIQUE,
    phoneNumber TEXT NOT NULL,
    address TEXT NOT NULL,
    birthDate TEXT NOT NULL,

    FOREIGN KEY (personID) REFERENCES Person(personID)
);

DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee (
    personID INTEGER PRIMARY KEY NOT NULL CHECK (personID > 0) ON UPDATE CASCADE,
    job TEXT NOT NULL,
    salary NUMERIC NOT NULL CHECK (salary > 0),
    hiringDate TEXT NOT NULL,

    FOREIGN KEY (personID) REFERENCES Person(personID)
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
    
    FOREIGN KEY (personID) REFERENCES Client(personID),
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
    name
    unit
    expirationDate
    stockQuantity
);

DROP TABLE IF EXISTS Supplier;
CREATE TABLE Supplier (
    supplierID
    supplierName
    contactNumber
    ingredient
);

DROP TABLE IF EXISTS Sale;
CREATE TABLE Sale (
    saleID PRIMARY KEY
    description
    discountPercentage
    startingDate TEXT NOT NULL
    endingDate TEXT NOT NULL
);

DROP TABLE IF EXISTS Delivery;
CREATE TABLE Delivery (
    deliveryID
    deliveryAddress
    deliveryDate
    deliveryStatus
);

DROP TABLE IF EXISTS Order;
CREATE TABLE Order (
    orderID
    orderDate
    totalValue
    orderStatus
);

DROP TABLE IF EXISTS Rating;
CREATE TABLE Rating (
    ratingID
    score
    comment
    orderID
);

DROP TABLE IF EXISTS Payment;
CREATE TABLE Payment (
    paymentID
    paymentMethod
    paymentDate
    paymentValue
    orderID
);