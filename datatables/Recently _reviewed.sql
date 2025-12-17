-- ==============================
-- RECENTLY_VIEWED
-- ==============================
BEGIN;

INSERT INTO recently_viewed (user_id, recipe_id, viewed_at) VALUES
(1, 14, NOW()),
(1, 15, NOW()),
(2, 61, NOW()),
(2, 62, NOW()),
(3, 3, NOW()),
(4, 20, NOW()),
(5, 18, NOW());

COMMIT;