CREATE table course(
	course_id int PRIMARY KEY,
	course_name varchar(255) not null,
	credit_hours int not null
);

CREATE table lecturer(
	lecturer_id int PRIMARY KEY,
	lecturer_name varchar(255) not null,
	specialization varchar(255) not null
);

CREATE table student(
	student_id int PRIMARY KEY,
	student_name varchar(255) not null,
	birthdate varchar(255) not null,
	major varchar(255) not null,
	gender varchar(255) not null
);

CREATE table registration_info(
	registration_id int PRIMARY KEY,
	course_id int,
	lecturer_id int,
	student_id int,
	registration_date varchar(255) not null,
	FOREIGN KEY(course_id) REFERENCES course(course_id),
	FOREIGN KEY(lecturer_id) REFERENCES lecturer(lecturer_id),
	FOREIGN KEY(student_id) REFERENCES student(student_id)
);
