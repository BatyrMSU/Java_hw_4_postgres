CREATE TABLE academic_performances
(
    course_id   INT NOT NULL REFERENCES courses (id) ON UPDATE CASCADE ON DELETE CASCADE,
    lesson      INT NOT NULL CHECK (lesson >= 0),
    student_id  INT NOT NULL REFERENCES students (id) ON UPDATE CASCADE ON DELETE CASCADE,
    attendance  BOOL DEFAULT false,
    grade       INT CHECK (grade >= 0),
    CONSTRAINT academic_performances_pk PRIMARY KEY (course_id, lesson, student_id)
);