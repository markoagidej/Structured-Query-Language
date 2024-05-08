-- Question 1. Database Development for a Music Library

USE assignment_sql;
-- Task 1: SQL Table Creation
CREATE TABLE Artists (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name TEXT NOT NULL,
    formation_year VARCHAR(4) NOT NULL,
    current_label TEXT
);

CREATE TABLE Genres (
	id INT AUTO_INCREMENT PRIMARY KEY,
    greater_category TEXT NOT NULL,
    specific_category TEXT
);

CREATE TABLE Albums (
	id INT AUTO_INCREMENT PRIMARY KEY,
    title TEXT NOT NULL,
    id_artist INT NOT NULL,
    id_genre INT NOT NULL,
    release_year VARCHAR(4) NOT NULL,
    total_tracks INT NOT NULL,
    -- Task 3: SQL Foreign Key Establishment
    FOREIGN KEY (id_artist) REFERENCES Artists(id),
    FOREIGN KEY (id_genre) REFERENCES Genres(id)
);

-- Task 2: SQL Alteration
ALTER TABLE Albums
ADD duration_min INT NOT NULL;