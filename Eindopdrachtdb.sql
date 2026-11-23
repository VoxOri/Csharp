CREATE DATABASE IF NOT EXISTS blastermaster;
USE blastermaster;

-- Tabel voor spellen
CREATE TABLE games (
    game_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    genre VARCHAR(100),
    price DECIMAL(4,2)
);

-- Tabel voor spelers
CREATE TABLE players (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

-- Tabel voor highscores
CREATE TABLE highscores (
    score_id INT AUTO_INCREMENT PRIMARY KEY,
    game_id INT,
    player_id INT,
    score INT,
    date DATE,
    FOREIGN KEY (game_id) REFERENCES games(game_id),
    FOREIGN KEY (player_id) REFERENCES players(player_id)
);

-- Tabel voor pogingen (voor inkomstenberekening)
CREATE TABLE attempts (
    attempt_id INT AUTO_INCREMENT PRIMARY KEY,
    game_id INT,
    player_id INT,
    date DATE,
    FOREIGN KEY (game_id) REFERENCES games(game_id),
    FOREIGN KEY (player_id) REFERENCES players(player_id)
);

-- Voeg spellen toe
INSERT INTO games (name, genre, price) VALUES
('Pac-Man', 'Maze / Action', 1.50),
('Space Invaders', 'Shoot \'em up', 1.00),
('Donkey Kong', 'Platform', 1.00),
('Street Fighter II', 'Fighting', 1.00),
('Galaga', 'Shoot \'em up', 1.00),
('Mortal Kombat', 'Fighting', 1.00),
('Asteroids', 'Shoot \'em up', 1.00),
('Ms. Pac-Man', 'Maze / Action', 1.50),
('Frogger', 'Action / Puzzle', 1.50),
('Tetris', 'Puzzle', 1.00),
('Defender', 'Shoot \'em up', 1.00),
('Dig Dug', 'Action / Puzzle', 1.50),
('Bubble Bobble', 'Platform / Puzzle', 1.50),
('NBA Jam', 'Sports', 1.00),
('Metal Slug', 'Run and Gun', 1.00),
('Time Crisis', 'Light Gun Shooter', 1.00),
('Q*bert', 'Puzzle / Action', 1.50),
('Rampage', 'Action', 1.00),
('Track & Field', 'Sports', 1.00),
('Contra', 'Run and Gun', 1.00);

-- Voeg spelers toe
INSERT INTO players (name, email) VALUES
('Alex', 'alex@blastmaster.nova'),
('Thomas', 'thomas@blastmaster.nova'),
('Dani', 'dani@blastmaster.nova'),
('Manoa', 'manoa@blastmaster.nova'),
('Amber', 'amber@blastmaster.nova'),
('Safoune', 'safoune@blastmaster.nova'),
('Thijmen', 'thijmen@blastmaster.nova'),
('Nikhil', 'nikhil@blastmaster.nova'),
('Romy', 'romy@blastmaster.nova'),
('Ryan', 'ryan@blastmaster.nova'),
('Dean', 'dean@blastmaster.nova'),
('Quinten', 'quinten@blastmaster.nova'),
('Robert', 'robert@blastmaster.nova'),
('Daniel', 'daniel@blastmaster.nova'),
('Shane', 'shane@blastmaster.nova'),
('Roxanne', 'roxanne@blastmaster.nova'),
('Sander', 'sander@blastmaster.nova'),
('Wouter', 'wouter@blastmaster.nova'),
('Gregory', 'gregory@blastmaster.nova'),
('Jeroen', 'jeroen@blastmaster.nova');
