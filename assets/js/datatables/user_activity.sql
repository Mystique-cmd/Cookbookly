-- ==============================
-- USER_ACTIVITY
-- ==============================
BEGIN;

INSERT INTO user_activity (user_id, activity_type, recipe_id, activity_time) VALUES
(1, 'viewed', 11, NOW()),
(1, 'favorited', 16, NOW()),
(2, 'viewed', 61, NOW()),
(2, 'favorited', 58, NOW()),
(3, 'viewed', 3, NOW()),
(4, 'viewed', 20, NOW()),
(5, 'favorited', 18, NOW());

COMMIT;