CREATE TABLE students (
         student_id INT, 
         student_name VARCHAR(100)
     );
     CREATE TABLE workshop_participation (
         participation_id INT, 
         student_id INT, 
         workshop_id INT
     );
     CREATE TABLE awards (
         award_id INT, 
         workshop_id INT, 
         award_name VARCHAR(100)
     );
     INSERT INTO students VALUES 
         (1, 'Alice'), 
         (2, 'Bob'), 
         (3, 'Charlie'), 
         (4, 'Diana');
     INSERT INTO workshop_participation VALUES 
         (1, 1, 1), 
         (2, 1, 2), 
         (3, 1, 3), 
         (4, 1, 4), 
         (5, 1, 5), 
         (6, 1, 6), 
         (7, 2, 1), 
         (8, 3, 2);
     INSERT INTO awards VALUES 
         (1, 1, 'Best Innovator'), 
         (2, 2, 'Best Presenter'), 
         (3, 1, 'Most Creative'), 
         (4, 4, 'Best Team');


SELECT * FROM STUDENTS
SELECT * FROM WORKSHOP_PARTICIPATION
SELECT * FROM AWARDS


/*
Find all students who have participated in more than 5 workshops and have received awards in at least 2 of them.
*/


--STUDENTS
--MORE THAN 5 WORKSHOPS
--ATLEAST 2 AWARDS


SELECT 
    S.STUDENT_NAME,
    COUNT(DISTINCT W.PARTICIPATION_ID) AS NO_OF_PARTICIPATIONS,
    COUNT(DISTINCT A.AWARD_ID) AS NO_OF_AWARDS
FROM 
    STUDENTS S
JOIN 
    WORKSHOP_PARTICIPATION W
ON 
    S.STUDENT_ID = W.STUDENT_ID
LEFT JOIN 
    AWARDS A
ON 
    W.WORKSHOP_ID = A.WORKSHOP_ID
GROUP BY 
    S.STUDENT_NAME
HAVING 
    COUNT(DISTINCT W.PARTICIPATION_ID) > 5
    AND COUNT(DISTINCT A.AWARD_ID) >= 2;


