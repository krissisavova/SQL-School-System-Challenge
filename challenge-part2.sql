INSERT INTO classes (classCode, className)
VALUES (6, 'Geography');

INSERT INTO users (userId, firstName, lastName, username, password)
VALUES (11, 'Petar', 'Petrov', 'ppetrov', NULL), (12, 'Kristina', 'Savova', NULL, NULL), (13, 'Martin', 'Vladimirov', NULL, NULL);

UPDATE users
SET username='mvladimirov' WHERE userId=13;

UPDATE users
SET password='abcdefgH' WHERE password IS NULL;

select * from users;

INSERT INTO enrollments (classCode, roleId, userId)
VALUES (6, 2, 11), (6, 1, 12), (6, 1, 13);

select * from enrollments;

INSERT INTO enrollments (classCode, roleId, userId)
VALUES (4, 2, 11);

UPDATE enrollments 
SET roleId=3 WHERE classCode=4;

select * from enrollments;

ROLLBACK;

SELECT users.userId, firstName, lastName, classes.className FROM users
JOIN enrollments ON users.userId=enrollments.userId
JOIN classes ON enrollments.classCode=classes.classCode
WHERE classes.classCode=6
ORDER BY firstName;