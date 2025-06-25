use ProjectDatabase

-- 1 -- show all avalible courses (title,level,category)
select title,level,category from course

--2- view beginner-level Data science courses
select title from course
where level = 'Beginner' and category = 'Data science'


--3- show courses this trainee is enrolled in
select title
from enrollment E
join course C on C.course_id  = E.course_id
where e.trainee_id = 1

--4- view the schedule (start_date, time_slot) for the trainee's enrolled courses
select c.title,s.start_date,s.time_slot
from enrollment E
join course C on e.course_id = c.course_id
join schedule S on c.course_id = s.course_id
where e.trainee_id = 3

--5- Count how many courses the trainee is enrolled in
select count(trainee_id) as enrolled_courses
from enrollment
where trainee_id = 1

--6- Show course titles , trainers names , and time slots the trainnee is attending

select * from course
select * from trainer
select * from schedule

select title,name,time_slot
from enrollment E
join course C on E.course_id = C.course_id
join schedule S on C.course_id = S.course_id
join trainer T on S.trainer_id = T.trainer_id
where E.trainee_id = 1