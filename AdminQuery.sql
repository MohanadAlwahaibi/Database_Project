use ProjectDatabase

--1- Add a new course (INSERT statement)--
INSERT INTO Course (course_id, title, level, category, duration_hours) VALUES
(5, 'Python Programming Essentials', 'Beginner', 'Programming', 35);

--2 - create a new schedule for a trainer 
INSERT INTO Schedule (schedule_id, course_id, trainer_id, start_date, end_date, time_slot) VALUES
(5, 5, 2, '2025-08-01', '2025-08-10', 'Evening');

--3- View all trainee enrollments with course title and schedule info 
SELECT 
    t.name AS trainee_name,
    c.title AS course_title,
    s.start_date,
    s.end_date,
    s.time_slot
FROM 
    Enrollment e
JOIN 
    Trainee t ON e.trainee_id = t.trainee_id
JOIN 
    Course c ON e.course_id = c.course_id
JOIN 
    Schedule s ON c.course_id = s.course_id
ORDER BY 
    t.name, s.start_date;

--4- Show how many courses each trainer is assigned to 
select name as trainer_name , count(course_id) as CourseNumber
from trainer T
join schedule S on T.trainer_id = S.trainer_id
group by name

--5- List all trainees enrolled in "Data Basics" 
select name as trainee_name,email as trainee_email
from enrollment E
join trainee T on E.trainee_id = T.trainee_id
join course C on E.course_id = C.course_id
where title = 'Data Basics'

--6- Identify the course with the highest number of enrollments 
SELECT 
    title AS course_title,
    COUNT(trainee_id) AS enrollment_count
FROM  Course c
JOIN Enrollment e ON c.course_id = e.course_id
GROUP BY  c.course_id, c.title
order by count(trainee_id) desc

--7- Display all schedules sorted by start date
SELECT * FROM Schedule
ORDER BY start_date ASC;
