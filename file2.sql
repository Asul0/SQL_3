-- Создание таблицы users
CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    firstname TEXT,
    lastname TEXT,
    age INTEGER,
    gender TEXT
);

-- Вставка данных в таблицу users
INSERT INTO users (user_id, firstname, lastname, age, gender) VALUES
    (1, 'John', 'Doe', 40, 'male'),
    (2, 'Jane', 'Smith', 30, 'female'),
    (3, 'Michael', 'Johnson', 50, 'male'),
    (4, 'Emily', 'Williams', 25, 'female');

-- Создание таблицы friend_requests
CREATE TABLE friend_requests (
    request_id INTEGER PRIMARY KEY,
    sender_id INTEGER,
    receiver_id INTEGER,
    status TEXT
);

-- Вставка данных в таблицу friend_requests
INSERT INTO friend_requests (request_id, sender_id, receiver_id, status) VALUES
    (1, 1, 3, 'pending'),
    (2, 2, 1, 'accepted'),
    (3, 3, 1, 'accepted'),
    (4, 3, 2, 'pending'),
    (5, 4, 1, 'declined'),
    (6, 4, 2, 'accepted');
