use ProjectDatabase

-- 1 - List all cources the trainer is assigned to 

select title as courseTitlet
from schedule S
JOIN course C on S.course_id = C.course_id
where s.trainer_id = 1

-- 2-- show upcoming sessions (with dates and time slots)
select title as courseTitle,start_date , time_slot
from schedule S
JOIN course C on S.course_id = C.course_id
where s.trainer_id = 1

--3 - see how many trainees are enrooled in each of your courses
select title as Course_title , count (trainee_id) as trainee_count
from schedule S
join course C on S.course_id = C.course_id
left join enrollment E on C.course_id = e.course_id
where s.trainer_id = 1
group by title


--4-- List names and emails of trainees in each of your courses 
SELECT 
    c.title AS course_title,
    t.name AS trainee_name,
    t.email AS trainee_email
FROM 
    Enrollment e
JOIN 
    Trainee t ON e.trainee_id = t.trainee_id
JOIN 
    Course c ON e.course_id = c.course_id
ORDER BY 
    c.title, t.name;

--5 - Show the trainer's contact info and assigned courses 
select phone,email,title
from trainer T
join schedule S on T.trainer_id = S.trainer_id
join course C on S.course_id = C.course_id
where S.trainer_id = 1


-- 6 - count the number of courses the trainer teaches
select count(title) as NumberCourses
from schedule S
JOIN course C on S.course_id = C.course_id
where s.trainer_id = 3




