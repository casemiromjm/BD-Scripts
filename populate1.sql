/* 
Initial populate file for populating the Bakery database
*/

PRAGMA foreign_keys = ON;

-- inserting data into Person and Client/Employee table
-- Clients (just for organization purposes)
INSERT INTO Person (personID, personName, nif) VALUES (1, 'Casemiro Medeiros', '321304810');
INSERT INTO Person (personID, personName, nif) VALUES (2, 'Daria Mahdych', '');
INSERT INTO Person (personID, personName, nif) VALUES (3, 'Heitor Brandão', '');
INSERT INTO Person (personID, personName, nif) VALUES (4, 'Matilde Martins', '');
INSERT INTO Person (personID, personName, nif) VALUES (5, 'André Villas-Boas', '767112903');

INSERT INTO Client (personID, email, phoneNumber, address, birthDate) VALUES (1, 'casemiromelojorge@gmail.com', '932692390', 'Rua Manuel Pacheco Miranda, 205', '2003-02-20');
INSERT INTO Client (personID, email, phoneNumber, address, birthDate) VALUES (2, '');
INSERT INTO Client (personID, email, phoneNumber, address, birthDate) VALUES (3, '');
INSERT INTO Client (personID, email, phoneNumber, address, birthDate) VALUES (4, '');
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
INSERT INTO Fidelity (personID, pointsBalance, startingDate) VALUES (1, 0, '2021-01-01');
INSERT INTO Fidelity (personID, pointsBalance, startingDate) VALUES (2, 0, '2021-01-01');
INSERT INTO Fidelity (personID, pointsBalance, startingDate) VALUES (3, 0, '2021-01-01');
INSERT INTO Fidelity (personID, pointsBalance, startingDate) VALUES (4, 0, '2021-01-01');
INSERT INTO Fidelity (personID, pointsBalance, startingDate) VALUES (5, 0, '2021-01-01');

-- inserting data into Shift table (shouldnt we have a link with Employee?)
INSERT INTO Shift (shiftID, startingTime, endingTime, intervalBreak) VALUES (1, '08:00', '12:00', '10:00');
INSERT INTO Shift (shiftID, startingTime, endingTime, intervalBreak) VALUES (2, '08:00', '12:00', '10:00');
INSERT INTO Shift (shiftID, startingTime, endingTime, intervalBreak) VALUES (3, '08:00', '12:00', '10:00');
INSERT INTO Shift (shiftID, startingTime, endingTime, intervalBreak) VALUES (4, '08:00', '12:00', '10:00');

-- inserting data into Product table

-- inserting data into Ingredient table

-- inserting data into Order table

-- inserting data into Supplier table

-- inserting data into Sale table

-- inserting data into Delivery table

-- inserting data into Rating table

-- inserting data into Payment table