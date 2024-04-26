INSERT INTO Customers VALUES (CustomerID, 'FirstName', 'LastName', 'Street', 'City', 'State', ZipCode, 'Telephone'),
    (1, 'Alec', 'Baldwin', '123 Broadway Ave', 'New York', 'NY', 10001, '555-643-3456'),
    (2, 'Sean', 'Connery', '4 Euclid Ave', 'Edinburgh', 'Scotland', 12345, '111-867-5309'),
    (3, 'Harrison', 'Ford', '10050 Cielo Dr', 'Los Angeles', 'CA', 90001, '222-432-5678'),
    (4, 'Sam', 'Neill', '101 Kiwi Dr', 'Auckland', 'New Zealand', 67890, '345-234-6454'),
    (5, 'Willem', 'Dafoe', '2 DaFriend Dr', 'Appleton', 'WI', 54321, '456-732-5667'),
    (6, 'James', 'Earl Jones', '300 Moonlight Dr', 'Baton Rouge', 'LA', 70801, '321-456-4332'),
    (7, 'Richard', 'Harris', '400 Maximus St', 'Limerick', 'Ireland', 11111, '987-789-5677'),
    (8, 'Anne', 'Archer', '30211 West St', 'San Diego', 'CA', 92101, '345-121-4565'),
    (9, 'Ben', 'Affleck', '6607 Wrigley Way', 'Chicago', 'IL', 60601, '543-567-3412'),
    (10, 'Morgan', 'Freeman', '700 Shawshank Blvd', 'Miami', 'FL', 33101, '583-456-9870');

CREATE VIEW Collaborator AS
SELECT 
    CustomerID AS CollaboratorID, 
    FirstName AS CollaboratorFirstName,
    LastName AS CollaboratorLastName,
    Street AS CollaboratorStreet,
    City AS CollaboratorCity,
    State AS CollaboratorState,
    ZipCode AS CollaboratorZipCode,
    Telephone AS CollaboratorTelephone
FROM Customers;

DESCRIBE Collaborator;
SELECT * FROM Collaborator LIMIT 5;

