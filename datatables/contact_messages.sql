
BEGIN;

INSERT INTO contact_messages (user_name, email, subject, message, created_at) VALUES
('Wycliff', 'wycliff@example.com', 'Recipe Suggestion', 'Could you add more African desserts?', NOW()),
('Alice', 'alice@example.com', 'Bug Report', 'Images not loading on the main page', NOW()),
('Bob', 'bob@example.com', 'Feedback', 'Love the variety of recipes!', NOW()),
('Carol', 'carol@example.com', 'Feature Request', 'Add a favorites filter by cuisine', NOW()),
('David', 'david@example.com', 'Question', 'Can I filter recipes by health condition?', NOW());

COMMIT;