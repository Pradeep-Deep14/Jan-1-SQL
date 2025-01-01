CREATE TABLE hackathon_a (
         student_id INT, 
         student_name VARCHAR(100), 
         participation_date DATE
     );
     CREATE TABLE hackathon_b (
         student_id INT, 
         student_name VARCHAR(100), 
         participation_date DATE
     );
     INSERT INTO hackathon_a VALUES 
         (1, 'Anil Sharma', '2023-04-01'), 
         (2, 'Rita Verma', '2023-05-10'), 
         (3, 'Amit Singh', '2023-08-15');
     INSERT INTO hackathon_b VALUES 
         (1, 'Anil Sharma', '2023-06-20'), 
         (2, 'Rita Verma', '2023-07-05'), 
         (3, 'Rahul Roy', '2023-09-25');

SELECT * FROM HACKATHON_A
SELECT * FROM HACKATHON_B

/*
List all students who have participated in both Hackathon A and Hackathon B in the past year.
*/

SELECT A.STUDENT_NAME
FROM HACKATHON_A A
JOIN HACKATHON_B B
ON A.STUDENT_ID = B.STUDENT_ID
AND A.STUDENT_NAME = B.STUDENT_NAME
WHERE A.PARTICIPATION_DATE >= CURRENT_DATE - INTERVAL '1 YEAR'
AND B.PARTICIPATION_DATE >= CURRENT_DATE - INTERVAL '1 YEAR'


