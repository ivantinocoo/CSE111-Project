.headers on 

--Retrieve players who have played at least 22 matches and scored 5 goals
SELECT p_playerName as Name, t_teamName as Team
FROM players, teams
WHERE p_teamID = t_teamID
    AND p_playerID IN (
    SELECT s_playerID
    FROM stats
    WHERE s_matchesPlayed >=22  AND s_goals > 5
);