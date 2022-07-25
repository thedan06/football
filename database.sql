create database footlbal; -- Creating Database called: Football
use footlbal; -- Using database we just created above

-- Creating Teams table
CREATE TABLE teams (
    team_id int primary key auto_increment,
    team_name varchar(25) unique,
    team_color varchar(20) null,
    city varchar(30) null,
    county varchar(30) default 'Tanzania'
);

-- Inserting data into Tables
INSERT INTO teams(team_name, team_color, city, county)
VALUES ('Simba', 'Red', 'Dar es Salaam', 'Tanzania');

INSERT INTO teams(team_name, team_color, city, county)
VALUES ('Yanga', 'Yellow', 'Dar es Salaam', 'Tanzania');

INSERT INTO teams(team_name, team_color, city, county)
VALUES ('Mtibwa Sugar', 'Blue', 'Morogoro', 'Tanzania');

INSERT INTO teams(team_name, team_color, city, county)
VALUES ('Mbeya City', 'Magenta', 'Mbeya', 'Tanzania');

INSERT INTO teams(team_name, team_color, city, county)
VALUES ('Azam FC', 'White', 'Dar es Salaam', 'Tanzania');

INSERT INTO teams(team_name, team_color, city, county)
VALUES ('Kagera Sugar', 'Black', 'Kagera', 'Tanzania');

-- Inserting data into Table, while country is inserted by default
INSERT INTO teams(team_name, team_color, city)
VALUES ('Costal Union', 'White', 'Tanga');

-- Select Data from Table.
SELECT * FROM teams where team_id = 1;
SELECT * FROM teams where team_id < 3;
SELECT * FROM teams where team_color = 'red';
SELECT team_name, team_color, city FROM teams where team_color = 'red';
SELECT team_name, team_color, city FROM teams where city = 'Dar es Salaam';

-- Delete Data from Table
DELETE FROM teams;
DELETE FROM teams WHERE city = 'Kagera';

-- Deleting all data from Table
TRUNCATE TABLE teams;

-- Updating Data in Table
UPDATE teams
SET team_color = 'Green'
WHERE team_name = 'Yanga';


-- Creating Players table
CREATE TABLE players (
    player_id int primary key auto_increment,
    player_first_name varchar(25),
    player_last_name varchar(25),
    player_age int(10),
    position varchar(20) null,
    county varchar(30) default 'Tanzania',

    team_id int(10)
);

-- Inserting Players
INSERT INTO players(player_first_name, player_last_name, player_age, position, county, team_id)
VALUES ('John', 'Boko', 35, 'Forward', 'Tanzania', 1);

INSERT INTO players(player_first_name, player_last_name, player_age, position, county, team_id)
VALUES ('Fei', 'Toto', 32, 'Midfield', 'Zanzibar', 2);

INSERT INTO players(player_first_name, player_last_name, player_age, position, county, team_id)
VALUES ('Mayele', 'Mayele', 40, 'Forward', 'Tanzania', 2);

INSERT INTO players(player_first_name, player_last_name, player_age, position, county, team_id)
VALUES ('Muhammed', 'Hussain', 29, 'Fullback', 'Tanzania', 1);

INSERT INTO players(player_first_name, player_last_name, player_age, position, county, team_id)
VALUES ('Kagere', 'Kagere', 38, 'Foward', 'Tanzania', 1);

INSERT INTO players(player_first_name, player_last_name, player_age, position, county, team_id)
VALUES ('Cloutus', 'Chama', 28, 'Midfield', 'Tanzania', 1);

-- Joining multiple tables:
SELECT player_last_name, position, team_name FROM players
JOIN teams on teams.team_id = players.team_id
