use ProjectDatabase

create table Trainee (
              trainee_id int primary key,
			  name nvarchar(100),
			  gender varchar(1),
			  email varchar(100),
			  background varchar(255)
);

CREATE TABLE Trainer (
		trainer_id INT PRIMARY KEY,
		name NVARCHAR(100),
		specialty VARCHAR(100),
		phone VARCHAR(8),
		email VARCHAR(100)
);

CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    title NVARCHAR(50),
    level VARCHAR(50),
    category VARCHAR(100),
    duration_hours INT
);

CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY,
    enrollment_date DATE,
    trainee_id INT,
    course_id INT,
    FOREIGN KEY (trainee_id) REFERENCES Trainee(trainee_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

CREATE TABLE Schedule (
    schedule_id INT PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    time_slot VARCHAR(50),
    course_id INT,
    trainer_id INT,
    FOREIGN KEY (course_id) REFERENCES Course(course_id),
    FOREIGN KEY (trainer_id) REFERENCES Trainer(trainer_id)
);

select * from Trainee
select * from Trainer
select * from Course
select * from Schedule
select * from Enrollment


INSERT INTO Trainee (trainee_id, name, gender, email, background) VALUES
(1, 'Aisha Al-Harthy', 'F', 'aisha@example.com', 'Engineering'),
(2, 'Sultan Al-Farsi', 'M', 'sultan@example.com', 'Business'),
(3, 'Mariam Al-Saadi', 'F', 'mariam@example.com', 'Marketing'),
(4, 'Omar Al-Balushi', 'M', 'omar@example.com', 'Computer Science'),
(5, 'Fatma Al-Hinai', 'F', 'fatma@example.com', 'Data Science');


alter table trainer
alter column phone varchar(12)


INSERT INTO Trainer (trainer_id, name, specialty, phone, email) VALUES
(1, 'Khalid Al-Maawali', 'Databases', '96891234567', 'khalid@example.com'),
(2, 'Noura Al-Kindi', 'Web Development', '96892345678', 'noura@example.com'),
(3, 'Salim Al-Harthy', 'Data Science', '96893456789', 'salim@example.com');



INSERT INTO Course (course_id, title, level, category, duration_hours) VALUES
(1, 'Database Fundamentals', 'Beginner', 'Databases', 20),
(2, 'Web Development Basics', 'Beginner', 'Web', 30),
(3, 'Data Science Introduction', 'Intermediate', 'Data Science', 25),
(4, 'Advanced SQL Queries', 'Advanced', 'Databases', 15);


INSERT INTO Schedule (schedule_id, course_id, trainer_id, start_date, end_date, time_slot) VALUES
(1, 1, 1, '2025-07-01', '2025-07-10', 'Morning'),
(2, 2, 2, '2025-07-05', '2025-07-20', 'Evening'),
(3, 3, 3, '2025-07-10', '2025-07-25', 'Weekend'),
(4, 4, 1, '2025-07-15', '2025-07-22', 'Morning');


INSERT INTO Enrollment (enrollment_id, trainee_id, course_id, enrollment_date) VALUES
(1, 1, 1, '2025-06-01'),
(2, 2, 1, '2025-06-02'),
(3, 3, 2, '2025-06-03'),
(4, 4, 3, '2025-06-04'),
(5, 5, 3, '2025-06-05'),
(6, 1, 4, '2025-06-06');

select * from Trainee
select * from Trainer
select * from Course
select * from Schedule
select * from Enrollment