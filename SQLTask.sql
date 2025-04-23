CREATE DATABASE LIBRARYDB
USE LIBRARYDB

CREATE TABLE Authors (
    AuthorId INT PRIMARY KEY,
    Name NVARCHAR(100)
);

CREATE TABLE Books (
    BookId INT PRIMARY KEY,
    Title NVARCHAR(200),
    AuthorId INT,
    PublishedYear INT CHECK (PublishedYear > 2000),
    FOREIGN KEY (AuthorId) REFERENCES Authors(AuthorId)
);

CREATE TABLE Genres (
    GenreId INT PRIMARY KEY,
    GenreName NVARCHAR(100)
);

CREATE TABLE BookGenres (
    BookId INT,
    GenreId INT,
    FOREIGN KEY (BookId) REFERENCES Books(BookId),
    FOREIGN KEY (GenreId) REFERENCES Genres(GenreId)
);

INSERT INTO Authors VALUES (1, N'Nizami Gəncəvi');
INSERT INTO Authors VALUES (2, N'Mirzə Ələkbər Sabir');
INSERT INTO Authors VALUES (3, N'Cəlil Məmmədquluzadə');
INSERT INTO Authors VALUES (4, N'Əli və Nino (Qurban Səid)');
INSERT INTO Authors VALUES (5, 'Anar');

INSERT INTO Books VALUES (1, N'Xəmsə', 1, 2005); 
INSERT INTO Books VALUES (2, N'Hophopnamə', 2, 2008); 
INSERT INTO Books VALUES (3, N'Ölülər', 3, 2010); 
INSERT INTO Books VALUES (4, N'Əli və Nino', 4, 2012); 
INSERT INTO Books VALUES (5, N'Beşmərtəbəli Evin Altıncı Mərtəbəsi', 5, 2021); 

INSERT INTO BookGenres VALUES (1, 1); -- Xəmsə - Poema
INSERT INTO BookGenres VALUES (2, 2); -- Hophopnamə - Satira
INSERT INTO BookGenres VALUES (3, 3); -- Ölülər - Dram
INSERT INTO BookGenres VALUES (4, 4); -- Əli və Nino - Roman
INSERT INTO BookGenres VALUES (5, 5); -- Esse

INSERT INTO Genres VALUES (1, 'Poema');
INSERT INTO Genres VALUES (2, 'Satira');
INSERT INTO Genres VALUES (3, 'Dram');
INSERT INTO Genres VALUES (4, 'Roman');
INSERT INTO Genres VALUES (5, 'Esse');

SELECT * FROM Books
WHERE PublishedYear > 2005
ORDER BY Title;

SELECT * FROM Books
WHERE Title LIKE 'H%';

SELECT * FROM Genres
ORDER BY GenreName DESC;




