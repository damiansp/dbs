CREATE TABLE Shoes (Id    char(10)      PRIMARY KEY,
                    Brand char(10)      NOT NULL,
                    Color char(250)     NOT   NULL,
                    Price decimal(8, 2) NOT NULL,
                    Descr varchar(750)  NULL);

INSERT INTO Shoes
VALUES ('012345', 'Brooks', 'blue', 52.27, 'running shoe');

-- Better:
INSERT INTO Shoes (Id, Brand, Color, Price, Descr)
VALUES ('012345', 'Brooks', 'blue', 52.27, 'running shoe');
