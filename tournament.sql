-- Table definitions for the tournament project.

-- Drop DB
DROP DATABASE IF EXISTS tournament;

-- Create DB
CREATE DATABASE tournament;

-- Connect to DB
\c tournament;

-- Create player table
CREATE TABLE players (
    player_id serial PRIMARY KEY,
    player_name text
);

-- Create match table
CREATE TABLE matches (
    match_id serial PRIMARY KEY,
    winner integer,
    loser integer,
    FOREIGN KEY(winner) REFERENCES players(player_id),
    FOREIGN KEY(loser) REFERENCES players(player_id)
);

-- Creates view for matches played. Sort by winner(count)
CREATE VIEW position AS
    SELECT p.player_id as player_id, p.player_name,
        (SELECT count(*) FROM matches WHERE matches.winner = p.player_id) as won,
        (SELECT count(*) FROM matches WHERE p.player_id in (winner, loser)) as played
    FROM players p
    GROUP BY p.player_id
    ORDER BY won DESC;
