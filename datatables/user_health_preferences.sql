-- ==============================
-- USER_HEALTH_PREFERENCES
-- ==============================
BEGIN;

-- Linking users to their health conditions
INSERT INTO user_health_preferences (user_id, health_condition_id) VALUES
(1, 1), -- Wycliff has Diabetes
(2, 2), -- Alice has Hypertension
(3, 3), -- Bob has Gluten Intolerance
(4, 4), -- Carol has Lactose Intolerance
(5, 1); -- David has Diabetes

COMMIT;