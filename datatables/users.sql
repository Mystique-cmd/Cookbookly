BEGIN;

INSERT INTO users (id, username, email, password_hash, created_at) VALUES
(1, 'wycliff', 'wycliff@example.com', 'hashed_password1', NOW()),
(2, 'alice', 'alice@example.com', 'hashed_password2', NOW()),
(3, 'bob', 'bob@example.com', 'hashed_password3', NOW()),
(4, 'carol', 'carol@example.com', 'hashed_password4', NOW()),
(5, 'david', 'david@example.com', 'hashed_password5', NOW());

COMMIT;