/* 
Initial populate file for populating the Bakery database
*/

PRAGMA foreign_keys = ON;

-- inserting data into Person and Client/Employee table
-- Clients (just for organization purposes)
INSERT INTO Person (personID, personName, nif) VALUES (1, 'Casemiro Medeiros', '321304810');
INSERT INTO Person (personID, personName, nif) VALUES (2, 'Daria Mahdych', '908743133');
INSERT INTO Person (personID, personName, nif) VALUES (3, 'Heitor Brandão', '554121309');
INSERT INTO Person (personID, personName, nif) VALUES (4, 'Matilde Martins', '987566313');
INSERT INTO Person (personID, personName, nif) VALUES (5, 'André Villas-Boas', '767112903');

INSERT INTO Client (personID, email, phoneNumber, address, birthDate) VALUES (1, 'casemiromelojorge@gmail.com', '932692390', 'Rua Manuel Pacheco Miranda, 205', '2003-02-20');
INSERT INTO Client (personID, email, phoneNumber, address, birthDate) VALUES (2, 'dariamahdych@gmail.com', '960440992', 'Praça 9 de Abril, 251', '2002-04-18');
INSERT INTO Client (personID, email, phoneNumber, address, birthDate) VALUES (3, 'heitorbrandao@gmail.com', '912360650', 'Rua do Breiner, 333', '2003-08-02');
INSERT INTO Client (personID, email, phoneNumber, address, birthDate) VALUES (4, 'mmartins@gmail.com', '221909566', 'Rua Monsenhor Fonseca Soares, 188', '1999-12-12');
INSERT INTO Client (personID, email, phoneNumber, address, birthDate) VALUES (5, 'andrevillasboas@fcporto.pt', '945089921', 'Via Futebol Clube do Porto, s/n', '1977-10-17');

-- Employees (just for organization purposes)
INSERT INTO Person (personID, personName, nif) VALUES (6, 'Felipe Silveira', '457189087');
INSERT INTO Person (personID, personName, nif) VALUES (7, 'Dinis Pinto', '986312765');
INSERT INTO Person (personID, personName, nif) VALUES (8, 'Margarida Ferreira', '987677012');
INSERT INTO Person (personID, personName, nif) VALUES (9, 'Inês Abreu', '765562190');
INSERT INTO Person (personID, personName, nif) VALUES (10, 'Mafalda Almeida', '823908452');

-- (what about manager?)

INSERT INTO Employee (personID, job, salary, hiringDate) VALUES (6, 'Baker', 1200, '2021-02-01');
INSERT INTO Employee (personID, job, salary, hiringDate) VALUES (7, 'Waiter', 930, '2021-02-01');
INSERT INTO Employee (personID, job, salary, hiringDate) VALUES (8, 'Waiter', 860, '2021-06-01');
INSERT INTO Employee (personID, job, salary, hiringDate) VALUES (9, 'Waiter', 860, '2021-06-01');
INSERT INTO Employee (personID, job, salary, hiringDate) VALUES (10, 'Baker', 1100, '2023-01-15');

-- inserting data into Bakery table
INSERT INTO Bakery (bakeryID, name, location, phoneNumber) VALUES (1, 'Pão Quente', '', '');
INSERT INTO Bakery (bakeryID, name, location, phoneNumber) VALUES (2, '', '', '');
INSERT INTO Bakery (bakeryID, name, location, phoneNumber) VALUES (3, '', '', '');
INSERT INTO Bakery (bakeryID, name, location, phoneNumber) VALUES (4, '', '', '');
INSERT INTO Bakery (bakeryID, name, location, phoneNumber) VALUES (5, '', '', '');

-- inserting data into Fidelity table
INSERT INTO Fidelity (personID, pointsBalance, startingDate) VALUES (1, 0, '2021-04-01');
INSERT INTO Fidelity (personID, pointsBalance, startingDate) VALUES (2, 0, '2021-04-01');
INSERT INTO Fidelity (personID, pointsBalance, startingDate) VALUES (3, 0, '2021-04-01');
INSERT INTO Fidelity (personID, pointsBalance, startingDate) VALUES (4, 0, '2022-01-16');
INSERT INTO Fidelity (personID, pointsBalance, startingDate) VALUES (5, 0, '2022-05-09');

-- inserting data into Shift table (shouldnt we have a link with Employee?)
INSERT INTO Shift (shiftID, startingTime, endingTime, intervalBreak) VALUES (1, '08:00', '12:00', '10:00');
INSERT INTO Shift (shiftID, startingTime, endingTime, intervalBreak) VALUES (2, '08:00', '12:00', '10:00');
INSERT INTO Shift (shiftID, startingTime, endingTime, intervalBreak) VALUES (3, '08:00', '12:00', '10:00');
INSERT INTO Shift (shiftID, startingTime, endingTime, intervalBreak) VALUES (4, '08:00', '12:00', '10:00');

-- inserting data into Product table (change the products)
INSERT INTO Product (productID, name, price, productType) VALUES (1, 'Pão de Deus', 1.5, 'Bread');
INSERT INTO Product (productID, name, price, productType) VALUES (2, 'Pão de Ló', 2.5, 'Cake');
INSERT INTO Product (productID, name, price, productType) VALUES (3, 'Pão de Forma', 1.0, 'Bread');
INSERT INTO Product (productID, name, price, productType) VALUES (4, 'Pão de Cereais', 1.5, 'Bread');
INSERT INTO Product (productID, name, price, productType) VALUES (5, 'Pão de Água', 0.5, 'Bread');

-- inserting data into Ingredient table (change the quantity)
INSERT INTO Ingredient (ingredientID, name, unit, expirationDate, stockQuantity) VALUES (1, 'Farinha', 'kg', '2023-12-31', 100);
INSERT INTO Ingredient (ingredientID, name, unit, expirationDate, stockQuantity) VALUES (2, 'Açúcar', 'kg', '2023-12-31', 100);
INSERT INTO Ingredient (ingredientID, name, unit, expirationDate, stockQuantity) VALUES (3, 'Ovos', 'un', '2023-12-31', 100);
INSERT INTO Ingredient (ingredientID, name, unit, expirationDate, stockQuantity) VALUES (4, 'Leite', 'l', '2023-12-31', 100);
INSERT INTO Ingredient (ingredientID, name, unit, expirationDate, stockQuantity) VALUES (5, 'Fermento', 'g', '2023-12-31', 100);

-- inserting data into Order table
INSERT INTO Order1 (orderID, orderDate, totalValue, orderStatus) VALUES (1, '2021-04-01', 10, 'Done');
INSERT INTO Order1 (orderID, orderDate, totalValue, orderStatus) VALUES (2, '2021-04-01', 10, 'Done');

-- inserting data into Supplier table
INSERT INTO Supplier (supplierID, supplierName, contactNumber, ingredientSupplied) VALUES (1, 'LMRLF Distribuidora', '932692389', 1);


-- inserting data into Sale table

-- inserting data into Delivery table (should have a link with Order ?)
INSERT INTO Delivery (deliveryID, deliveryAddress, deliveryDate, deliveryStatus) VALUES (1, '2021-04-01', 'Done', 1);

-- inserting data into Rating table
INSERT INTO Rating (ratingID, score, comment, orderID) VALUES (1, 5, 'Muito bom!', 1);
INSERT INTO Rating (ratingID, score, comment, orderID) VALUES (2, 4, 'Bom!', 1);
INSERT INTO Rating (ratingID, score, comment, orderID) VALUES (3, 3, 'Meh', 1);
INSERT INTO Rating (ratingID, score, comment, orderID) VALUES (4, 2, 'Mau', 1);
INSERT INTO Rating (ratingID, score, comment, orderID) VALUES (5, 1, 'Muito mau', 1);

-- inserting data into Payment table (should vary the payment methods)
INSERT INTO Payment (paymentID, paymentMethod, paymentDate, paymentValue, orderID) VALUES (1, 'MBWay', '2021-04-01', 10, 1);
-- INSERT INTO Payment (paymentID, paymentMethod, paymentDate, paymentValue, orderID) VALUES (2, 'Card', '2021-04-01', 10, 1);
-- INSERT INTO Payment (paymentID, paymentMethod, paymentDate, paymentValue, orderID) VALUES (3, 'Cash', '2021-04-01', 10, 1);
-- INSERT INTO Payment (paymentID, paymentMethod, paymentDate, paymentValue, orderID) VALUES (4, 'MBWay', '2021-04-01', 10, 1);
-- INSERT INTO Payment (paymentID, paymentMethod, paymentDate, paymentValue, orderID) VALUES (5, 'Card', '2021-04-01', 10, 1);