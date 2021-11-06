CREATE TABLE teachers
(
    id          SERIAL  NOT NULL,
    first_name  VARCHAR NOT NULL,
    last_name   VARCHAR NOT NULL,
    patronymic  VARCHAR,
    position    VARCHAR,
    CONSTRAINT  teachers_pk PRIMARY KEY (id)
);

CREATE TABLE students
(
    id          SERIAL  NOT NULL,
    first_name  VARCHAR NOT NULL,
    last_name   VARCHAR NOT NULL,
    patronymic  VARCHAR,
    CONSTRAINT  students_pk PRIMARY KEY (id)
);

CREATE TABLE courses
(
    id          SERIAL  NOT NULL,
    name        VARCHAR NOT NULL,
    description TEXT,
    CONSTRAINT  courses_pk PRIMARY KEY (id)
);

CREATE TABLE enrolled_students
(
    course_id   INT NOT NULL REFERENCES courses (id) ON UPDATE CASCADE ON DELETE CASCADE,
    student_id  INT NOT NULL REFERENCES students (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT  enrolled_students_pk PRIMARY KEY (course_id, student_id)
);

CREATE TABLE schedule
(
    lesson_id   INT NOT NULL,
    lesson_name VARCHAR,
    course_id   INT NOT NULL REFERENCES courses (id) ON UPDATE CASCADE ON DELETE CASCADE,
    teacher_id  INT NOT NULL REFERENCES teachers (id) ON UPDATE CASCADE ON DELETE CASCADE,
    lesson_time TIMESTAMP,
    CONSTRAINT  schedule_pk PRIMARY KEY (lesson_id)
);

CREATE TABLE lessons_reviews
(
    lesson_id   INT NOT NULL REFERENCES schedule (lesson_id) ON UPDATE CASCADE ON DELETE CASCADE,
    student_id  INT NOT NULL REFERENCES students (id) ON UPDATE CASCADE ON DELETE CASCADE,
    review      TEXT,
    CONSTRAINT  lessons_reviews_pk PRIMARY KEY (lesson_id, student_id)
);

