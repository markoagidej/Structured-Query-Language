-- Question 2. Managing a Fitness Center Database

-- Task 1: SQL Data Insertion
INSERT INTO Members
VALUES
	('Jane Doe', 25, 1),
	('John Smitch', 20, 1),
	('John Smith', 40, 2),
	('Billy Bob', 17, 2),
	('Indie Cindy', 29, 3);

INSERT INTO WorkoutSessions
VALUES
	(1, '2024-01-01', 'morning', 'running'),
	(2, '2024-01-01', 'evening', 'cycling'),
	(3, '2024-01-01', 'morning', 'lifting'),
	(4, '2024-01-01', 'evening', 'stretching'),
	(5, '2024-01-01', 'evening', 'running'),
	(1, '2024-01-02', 'morning', 'running'),
	(2, '2024-01-02', 'evening', 'cycling'),
	(3, '2024-01-02', 'morning', 'lifting');
    
-- Task 2: SQL Data Update
UPDATE WorkoutSessions
SET session_time = 'evening'
WHERE member_name = 'Jane Doe' AND session_date = '2024-01-02';

-- Task 3: SQL Data Deletion
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Members
WHERE name = 'John Smith';
SET SQL_SAFE_UPDATES = 1;
-- OR (Assuming the only data in the table is what we just previously inserted)
DELETE FROM Members
WHERE id = 3;