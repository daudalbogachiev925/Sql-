CREATE TABLE students (id INTEGER PRIMARY KEY, name TEXT, class_id INTEGER);
CREATE TABLE classes (id INTEGER PRIMARY KEY, name TEXT);
CREATE TABLE subjects (id INTEGER PRIMARY KEY, name TEXT);
CREATE TABLE grades (student_id INTEGER, subject_id INTEGER,
    grade INTEGER, date DATE);
CREATE TABLE attendance (student_id INTEGER, date DATE, present INTEGER);
