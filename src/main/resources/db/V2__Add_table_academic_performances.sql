CREATE TABLE students_performances
(
    lesson_id   INT NOT NULL REFERENCES schedule (lesson_id)  ON UPDATE CASCADE ON DELETE CASCADE,
    student_id  INT NOT NULL REFERENCES students (id) ON UPDATE CASCADE ON DELETE CASCADE,
    grade       INT CHECK (grade >= 0),
    CONSTRAINT students_performances_pk PRIMARY KEY (lesson_id, student_id)
);

CREATE TABLE students_attendances
(
    lesson_id   INT NOT NULL REFERENCES schedule (lesson_id)  ON UPDATE CASCADE ON DELETE CASCADE,
    student_id  INT NOT NULL REFERENCES students (id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT students_attendances_pk PRIMARY KEY (lesson_id, student_id)
);
