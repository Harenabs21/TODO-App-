CREATE DATABASE todo_app;
-- connection to the DATABASE
\c todo_app;
-- Creation of table --
CREATE TABLE todo(
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    deadline TIMESTAMP CHECK(deadline >= CURRENT_DATE),
    priority int CHECK(priority BETWEEN 0 AND 10) DEFAULT 5,
    done BOOLEAN DEFAULT false
);