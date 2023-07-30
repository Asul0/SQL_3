-- Создание таблицы user_groups
CREATE TABLE user_groups (
    user_id INTEGER,
    group_id INTEGER
);

-- Вставка данных в таблицу user_groups
INSERT INTO user_groups (user_id, group_id) VALUES
    (1, 101),
    (1, 102),
    (2, 101),
    (3, 102),
    (3, 103),
    (4, 101);

-- Создание таблицы group_users
CREATE TABLE group_users (
    group_id INTEGER,
    user_id INTEGER
);

-- Вставка данных в таблицу group_users
INSERT INTO group_users (group_id, user_id) VALUES
    (101, 1),
    (101, 2),
    (101, 4),
    (102, 1),
    (102, 3),
    (103, 3);

-- Создание таблицы messages
CREATE TABLE messages (
    sender_id INTEGER,
    receiver_id INTEGER
);

-- Вставка данных в таблицу messages
INSERT INTO messages (sender_id, receiver_id) VALUES
    (1, 3),
    (2, 1),
    (3, 1),
    (3, 2),
    (4, 1),
    (4, 2);


-- ПРИМЕР 
-- SELECT sender_id, COUNT(*) AS message_count
-- FROM messages
-- WHERE receiver_id = 1
-- GROUP BY sender_id
-- ORDER BY message_count DESC
-- LIMIT 1;
-- Результат:

-- sender_id	message_count
-- 3	        1