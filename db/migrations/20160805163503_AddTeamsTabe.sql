-- +micrate Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE teams(id INT PRIMARY KEY, name VARCHAR(255) NOT NULL);


-- +micrate Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE teams;
