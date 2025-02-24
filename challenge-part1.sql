SELECT * FROM users;

SELECT firstName from users AS u
JOIN enrollments ON users.userId=enrollments.userId
JOIN classes ON enrollments.classCode=classes.classCode
JOIN roles ON enrollments.roleId=roles.roleId
WHERE classes.className='Math' AND roles.roleType='Student';


Select * from roles;

SELECT firstName, lastName, classes.className from enrollments 
JOIN users ON enrollments.userId = users.userId
JOIN classes on enrollments.classCode=classes.classCode
WHERE users.username='ehorstead2';

