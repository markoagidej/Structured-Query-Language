-- Question 2. Managing a Fitness Center Database

-- Task 1: SQL Data Insertion
INSERT INTO Members
VALUES
	('Jane Doe', 25, 1),
	('John Smitch', 20, 1),
	('John Smith', 40, 2),
	('Billy Bob', 17, 2),
	('Indie Cindy', 29, 3);
    
-- Task 2: SQL Data Update
UPDATE WorkoutSessions
SET session_time = 'evening'
WHERE member_name = 'Jane Doe';

-- Task 3: SQL Data Deletion
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Members
WHERE name = 'John Smith';
SET SQL_SAFE_UPDATES = 1;
-- OR (Assuming the only data in the table is what we just previously inserted)
DELETE FROM Members
WHERE id = 3;