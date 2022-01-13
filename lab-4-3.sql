-- Who hit the most home runs in 2019, and what team did he play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+

Select name, first_name, last_name, max(home_runs) from players 
join stats on players.id = stats.player_id
join teams on teams.id = stats.team_id 
where year = 2019;
