
BEGIN;

INSERT INTO reviews (recipe_id, rating, comment, created_at) VALUES
(11, 5, 'Delicious and authentic!', NOW()),   -- Jollof Rice
(16, 4, 'Perfectly grilled meat', NOW()),    -- Nyama Choma
(61, 5, 'Classic Italian taste', NOW()),     -- Margherita Pizza
(58, 4, 'Tiramisu was creamy and rich', NOW()),
(3, 5, 'Healthy and filling breakfast', NOW()),
(20, 4, 'Salmon cooked to perfection', NOW()),
(18, 5, 'Great curry flavors', NOW());

COMMIT;