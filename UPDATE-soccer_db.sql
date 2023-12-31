-- Update data in the 'nation' table
--UPDATE nation SET n_nationName = 'Updated Nation A' WHERE n_nationID = 1;

-- Update data in the 'leagues' table
--UPDATE leagues SET l_leagueName = 'Updated League A' WHERE l_leagueID = 1;

-- Update data in the 'teams' table
--UPDATE teams SET t_wins = 4, t_draws = 2, t_losses = 0 WHERE t_teamID = 1;

-- Update data in the 'players' table
--UPDATE players SET p_age = 28 WHERE p_playerID = 1;

-- Update data in the 'matches' table

--UPDATE matches SET m_homeTeamGoals = 3, m_awayTeamGoals = 1 WHERE m_date = '2023-11-01';

-- Update data in the 'coaches' table
ALTER TABLE coaches
ADD COLUMN c_nationID int;

UPDATE coaches
SET c_nationID = nation.n_nationID
FROM nation
WHERE coaches.c_nationName = nation.n_nationName;

ALTER TABLE coaches
ADD COLUMN c_teamID int;

UPDATE coaches
SET c_teamID = teams.t_teamID
FROM teams
WHERE coaches.c_teamName = teams.t_teamName;

ALTER TABLE players
ADD COLUMN p_teamID int;

UPDATE players
SET p_teamID = teams.t_teamID
FROM teams
WHERE players.p_teamName = teams.t_teamName;
--UPDATE coaches SET c_age = 46 WHERE c_coachID = 1;

-- Update data in the 'stats' table
--UPDATE stats SET s_goals = 3 WHERE s_playerID = 1;