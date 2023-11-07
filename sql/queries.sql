-- QUERY 1: Top 3 colleges that have contributed the most players to the NFL

SELECT u.uni_name, COUNT(tp.id) AS player_count
FROM universities AS u
LEFT JOIN teams_players AS tp 
ON u.id = tp.uni_id
GROUP BY u.uni_name
ORDER BY player_count DESC
LIMIT 3;

-- QUERY 2: Which university they studied at and which team they ended up playing for

SELECT u.uni_name, tp.team
FROM universities as u
LEFT JOIN teams_players as tp 
ON u.id = tp.uni_id;

-- QUERY 3: Universities that include 'football' in its description

SELECT uni_name, description
FROM universities
WHERE description LIKE '%football%';

-- QUERY 4: Top 3 teams that have the most senior players

SELECT tp.team, COUNT(*) AS seniors
FROM teams_players AS tp
WHERE tp.experience BETWEEN 10 AND 15
GROUP BY tp.team
ORDER BY seniors DESC
LIMIT 3;

-- QUERY 5: Average age per team

SELECT tp.team, CAST(AVG(tp.age) AS SIGNED) AS avg_age
FROM teams_players AS tp
GROUP BY tp.team;

-- QUERY 6: Average height per position

SELECT tp.position, AVG(tp.height) AS avg_height
FROM teams_players tp
WHERE tp.position IN ('QB', 'RB', 'P')
GROUP BY tp.position
ORDER BY avg_height DESC;

-- QUERY 7: Average weight per team

SELECT tp.team, AVG(tp.weight) AS avg_weight
FROM teams_players AS tp
GROUP BY tp.team
LIMIT 5;

-- QUERY 8: Number of universities per city

SELECT state, COUNT(*) AS num_universities
FROM universities
GROUP BY state
ORDER BY num_universities DESC
LIMIT 5;
