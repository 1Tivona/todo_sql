CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR NULL,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('complete this daily project', 'input all information', 1, '2017-09-05 11:30:02', NULL);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('figure out how to add the date and time', 'date and time should be current', 2, '2017-09-05 12:15:45', NULL);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('thank Thomas for his help', 'show appreciation for help', 1, '2017-09-05 12:26:30', '2017-09-05 12:26:30');
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('figure out what to have for lunch', 'get lunch', 3, '2017-09-05 12:41:30', NULL);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('plan course of action to catch up on work', 'figure out what needs a little more work', 2, '2017-09-05 12:44:30', NULL );

SELECT title FROM todos WHERE completed_at IS NULL;
SELECT title FROM todos WHERE priority > 1;
UPDATE todos SET completed_at = '2017-09-05 12:54:30' WHERE id = 1;
DELETE FROM todos WHERE completed_at IS NOT NULL;
