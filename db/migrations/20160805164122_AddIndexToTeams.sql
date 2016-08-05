-- +micrate Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE UNIQUE INDEX index_teams_on_name on teams (name);

-- +micrate Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP INDEX IF EXISTS index_teams_on_name
