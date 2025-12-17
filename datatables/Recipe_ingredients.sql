
BEGIN;

-- Recipe 1: Pancakes
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(1,1,'1 cup'),    -- Flour
(1,2,'1 cup'),    -- Milk
(1,3,'1'),        -- Egg
(1,4,'2 tbsp'),   -- Sugar
(1,5,'2 tbsp');   -- Butter

-- Recipe 2: Millet Porridge
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(2,24,'1 cup'),   -- Millet
(2,2,'2 cups'),   -- Milk
(2,25,'1 tbsp');  -- Honey

-- Recipe 3: Oatmeal with Fruits
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(3,25,'1 cup'),   -- Oats
(3,2,'1 cup'),    -- Milk
(3,24,'1/2 cup'), -- Banana
(3,26,'1 tbsp');  -- Honey

-- Recipe 4: Chapati and Tea
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(4,1,'2 cups'),   -- Flour
(4,6,'2 tbsp'),   -- Salt
(4,2,'1/2 cup');  -- Milk

-- Recipe 5: French Toast
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(5,1,'2 slices'), -- Bread (use Flour placeholder)
(5,3,'1'),        -- Egg
(5,2,'1/4 cup'),  -- Milk
(5,4,'1 tbsp'),   -- Sugar
(5,5,'1 tbsp');   -- Butter

-- Recipe 6: Avocado Toast
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(6,24,'1'),       -- Avocado (placeholder ID)
(6,1,'2 slices'), -- Bread (Flour)
(6,6,'pinch');    -- Salt

-- Recipe 7: Eggs Benedict
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(7,3,'2'),        -- Eggs
(7,5,'2 tbsp'),   -- Butter
(7,27,'2 tbsp');  -- Hollandaise Sauce (placeholder ID)

-- Recipe 8: Fruit Smoothie Bowl
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(8,24,'1'),       -- Banana
(8,2,'1 cup'),    -- Milk
(8,26,'1 tbsp');  -- Honey

-- Recipe 9: Poha
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(9,28,'1 cup'),   -- Flattened Rice
(9,10,'1'),       -- Onion
(9,11,'1'),       -- Tomato
(9,29,'1 tsp');   -- Turmeric (placeholder)

-- Recipe 10: Breakfast Burrito
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(10,3,'2'),       -- Eggs
(10,12,'50 g'),   -- Chicken
(10,1,'1 wrap'),  -- Tortilla (Flour)
(10,11,'1'),      -- Tomato
(10,6,'pinch');   -- Salt

-- Recipe 11: Jollof Rice
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(11,14,'2 cups'), -- Rice
(11,11,'2'),      -- Tomato
(11,10,'1'),      -- Onion
(11,28,'1 tbsp'); -- Oil (placeholder)

-- Recipe 12: Chicken Caesar Salad
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(12,12,'100 g'),  -- Chicken
(12,22,'2 cups'), -- Lettuce
(12,35,'2 tbsp'), -- Parmesan
(12,36,'2 tbsp'); -- Dressing

-- Recipe 13: Veggie Wrap
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(13,21,'1/2 cup'), -- Cucumber
(13,22,'1 cup'),   -- Lettuce
(13,24,'1/2 cup'), -- Avocado
(13,1,'1 wrap');   -- Tortilla

-- Recipe 14: Vegetable Fried Rice
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(14,14,'1 cup'),   -- Rice
(14,10,'1'),       -- Onion
(14,16,'1'),       -- Carrot
(14,20,'1/2 cup'), -- Spinach
(14,28,'2 tbsp');  -- Oil

-- Recipe 15: Quinoa Salad
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(15,40,'1 cup'),   -- Quinoa
(15,22,'1 cup'),   -- Lettuce
(15,16,'1'),       -- Carrot
(15,24,'1/2'),     -- Avocado
(15,26,'1 tbsp');  -- Honey

-- Recipe 16: Nyama Choma
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(16,13,'500 g'),   -- Beef
(16,6,'1 tsp');    -- Salt

-- Recipe 17: Egusi Soup
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(17,41,'100 g'),   -- Egusi (placeholder)
(17,12,'200 g'),   -- Chicken
(17,10,'1'),       -- Onion
(17,28,'2 tbsp');  -- Oil

-- Recipe 18: Chicken Curry
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(18,12,'200 g'),   -- Chicken
(18,28,'2 tbsp'),  -- Oil
(18,10,'1'),       -- Onion
(18,27,'1 tsp');   -- Curry Powder (placeholder)

-- Recipe 19: Vegetable Stir Fry
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(19,16,'1 cup'),   -- Carrot
(19,20,'1 cup'),   -- Spinach
(19,10,'1'),       -- Onion
(19,28,'2 tbsp');  -- Oil

-- Recipe 20: Grilled Salmon

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(20,42,'200 g'),   -- Salmon (placeholder)
(20,28,'1 tbsp'),  -- Oil
(20,6,'pinch');    -- Salt

-- Recipes 21–40 would continue in the same pattern...

-- ==============================
-- RECIPE_INGREDIENTS: BATCH 2 (Recipes 41–80)
-- ==============================

-- Recipe 41: Falafel
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(41,42,'1 cup'),   -- Chickpeas
(41,10,'1'),       -- Onion
(41,28,'2 tbsp'),  -- Oil
(41,27,'1 tsp');   -- Spices (placeholder)

-- Recipe 42: Bruschetta
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(42,1,'4 slices'), -- Bread
(42,11,'2'),       -- Tomato
(42,9,'1 clove'),  -- Garlic
(42,8,'1 tbsp');   -- Olive Oil
(42,43,'1 tsp');   -- Basil (placeholder)

-- Recipe 43: Stuffed Mushrooms
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(43,46,'6'),       -- Mushrooms
(43,18,'1/2 cup'), -- Cheese
(43,10,'1'),       -- Onion
(43,8,'1 tbsp');   -- Olive Oil

-- Recipe 44: Paneer Tikka
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(44,38,'200 g'),   -- Paneer
(44,10,'1'),       -- Onion
(44,11,'1'),       -- Tomato
(44,28,'2 tbsp'),  -- Oil
(44,27,'1 tsp');   -- Spices

-- Recipe 45: Deviled Eggs
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(45,3,'4'),        -- Eggs
(45,44,'2 tbsp'),  -- Mayonnaise
(45,6,'pinch'),    -- Salt
(45,29,'1 tsp');   -- Paprika (placeholder)

-- Recipe 46: Spaghetti Bolognese
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(46,1,'200 g'),    -- Spaghetti (Flour placeholder)
(46,13,'200 g'),   -- Beef
(46,10,'1'),       -- Onion
(46,11,'2'),       -- Tomato
(46,28,'2 tbsp');  -- Oil

-- Recipe 47: Vegetable Couscous
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(47,47,'1 cup'),   -- Couscous (placeholder)
(47,16,'1'),       -- Carrot
(47,20,'1 cup'),   -- Spinach
(47,8,'1 tbsp');   -- Olive Oil

-- Recipe 48: Pepper Soup
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(48,12,'200 g'),   -- Chicken
(48,28,'2 tbsp'),  -- Oil
(48,27,'1 tsp'),   -- Spices
(48,10,'1');       -- Onion

-- Recipe 49: Butter Chicken
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(49,12,'200 g'),   -- Chicken
(49,5,'2 tbsp'),   -- Butter
(49,11,'2'),       -- Tomato
(49,27,'1 tsp'),   -- Spices
(49,2,'1/4 cup');  -- Milk or Cream

-- Recipe 50: Grilled Chicken Breast
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(50,12,'200 g'),   -- Chicken
(50,28,'1 tbsp'),  -- Oil
(50,6,'pinch');    -- Salt

-- Recipe 51: Ugali
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(51,33,'2 cups'),  -- Cornmeal
(51,2,'3 cups');   -- Water/Milk (placeholder)

-- Recipe 52: Mashed Potatoes
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(52,17,'4'),       -- Potato
(52,5,'2 tbsp'),   -- Butter
(52,2,'1/2 cup');  -- Milk

-- Recipe 53: Garlic Bread
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(53,1,'4 slices'), -- Bread
(53,9,'2 cloves'), -- Garlic
(53,5,'2 tbsp'),   -- Butter
(53,6,'pinch');    -- Salt

-- Recipe 54: Steamed Vegetables
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(54,16,'1 cup'),   -- Carrot
(54,20,'1 cup'),   -- Spinach
(54,49,'1 cup');   -- Green Beans

-- Recipe 55: Ratatouille
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(55,16,'1'),       -- Carrot
(55,20,'1'),       -- Spinach
(55,11,'2'),       -- Tomato
(55,50,'1'),       -- Zucchini (placeholder)
(55,8,'2 tbsp');   -- Olive Oil

-- Recipe 56: Creme Brulee
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(56,2,'1 cup'),    -- Milk
(56,3,'2'),        -- Egg
(56,4,'1/2 cup'),  -- Sugar
(56,30,'1 tsp'),   -- Vanilla Extract
(56,5,'1 tbsp');   -- Butter

-- Recipe 57: Fruit Salad
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(57,24,'1'),       -- Banana
(57,51,'1/2 cup'), -- Mixed Fruits (placeholder)
(57,26,'1 tbsp');  -- Honey

-- Recipe 58: Tiramisu
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(58,3,'4'),        -- Eggs
(58,5,'2 tbsp'),   -- Butter
(58,52,'200 g'),   -- Mascarpone (placeholder)
(58,53,'1 cup');   -- Coffee (placeholder)
 
-- Recipe 59: Coconut Mandazi
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(59,38,'2 cups'),  -- Mandazi Dough
(59,26,'1/2 cup'), -- Coconut Milk
(59,4,'2 tbsp'),   -- Sugar
(59,6,'pinch');    -- Salt

-- Recipe 60: Rice Pudding
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(60,14,'1 cup'),   -- Rice
(60,2,'2 cups'),   -- Milk
(60,4,'1/4 cup'),  -- Sugar
(60,30,'1 tsp');   -- Vanilla Extract

-- Recipes 61–80 would continue in the same pattern...

-- ==============================
-- RECIPE_INGREDIENTS (Recipes 61–80)
-- ==============================

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
-- 61: Margherita Pizza
(61,1,'2 cups'),      -- Flour
(61,7,'2'),           -- Tomato
(61,35,'150 g'),      -- Mozzarella
(61,9,'1 tsp'),       -- Garlic
(61,28,'2 tbsp'),     -- Olive Oil
(61,6,'1 tsp'),       -- Salt

-- 62: Banana Bread
(62,1,'2 cups'),
(62,17,'3'),          -- Banana
(62,4,'1/2 cup'),
(62,5,'100 g'),
(62,3,'2'),

-- 63: Chocolate Chip Cookies
(63,1,'2 cups'),
(63,4,'3/4 cup'),
(63,5,'150 g'),
(63,3,'2'),
(63,43,'1 cup'),      -- Chocolate Chips

-- 64: Gluten-Free Muffins
(64,44,'2 cups'),     -- Gluten-free flour
(64,3,'2'),
(64,2,'1 cup'),
(64,4,'1/2 cup'),
(64,5,'80 g'),

-- 65: Lasagna
(65,45,'12 sheets'),  -- Lasagna Pasta
(65,12,'300 g'),      -- Chicken / Beef mince
(65,7,'3'),
(65,8,'1'),
(65,35,'200 g'),

-- 66: Chicken Shawarma
(66,12,'500 g'),
(66,9,'2 tsp'),
(66,46,'1 cup'),      -- Yogurt
(66,28,'2 tbsp'),
(66,6,'1 tsp'),

-- 67: Beef Stir Fry
(67,13,'400 g'),
(67,16,'1'),
(67,8,'1'),
(67,28,'2 tbsp'),
(67,6,'1 tsp'),

-- 68: Vegetable Soup
(68,16,'2'),
(68,13,'1'),
(68,8,'1'),
(68,14,'1 cup'),
(68,6,'1 tsp'),

-- 69: Fried Chicken
(69,12,'600 g'),
(69,1,'1 cup'),
(69,3,'2'),
(69,6,'1 tsp'),
(69,28,'3 cups'),

-- 70: Fish Tacos
(70,42,'400 g'),      -- Fish
(70,1,'4 tortillas'),
(70,7,'1'),
(70,21,'1/2 cup'),
(70,28,'1 tbsp'),

-- 71: Beef Burger
(71,13,'400 g'),
(71,47,'4'),          -- Burger Buns
(71,7,'1'),
(71,22,'1 cup'),
(71,6,'1 tsp'),

-- 72: Chicken Alfredo Pasta
(72,48,'250 g'),      -- Pasta
(72,12,'300 g'),
(72,46,'1 cup'),
(72,35,'100 g'),
(72,6,'1 tsp'),

-- 73: Veggie Pizza
(73,1,'2 cups'),
(73,7,'2'),
(73,16,'1'),
(73,14,'1 cup'),
(73,35,'150 g'),

-- 74: Shrimp Fried Rice
(74,49,'300 g'),      -- Shrimp
(74,10,'2 cups'),
(74,8,'1'),
(74,28,'2 tbsp'),
(74,6,'1 tsp'),

-- 75: Beef Stew
(75,13,'600 g'),
(75,8,'1'),
(75,7,'2'),
(75,28,'2 tbsp'),
(75,6,'1 tsp'),

-- 76: Vegetable Curry
(76,16,'2'),
(76,14,'1 cup'),
(76,8,'1'),
(76,27,'2 tsp'),      -- Curry Powder
(76,28,'2 tbsp'),

-- 77: Chicken Biryani
(77,12,'500 g'),
(77,10,'3 cups'),
(77,8,'1'),
(77,27,'2 tsp'),
(77,28,'3 tbsp'),

-- 78: Lentil Soup
(78,50,'1 cup'),      -- Lentils
(78,8,'1'),
(78,9,'1 tsp'),
(78,6,'1 tsp'),
(78,28,'1 tbsp'),

-- 79: Grilled Vegetables
(79,16,'2'),
(79,14,'1 cup'),
(79,21,'1'),
(79,28,'2 tbsp'),
(79,6,'1 tsp'),

-- 80: Cheesecake
(80,46,'2 cups'),
(80,4,'3/4 cup'),
(80,3,'3'),
(80,1,'1 cup'),
(80,5,'120 g');

-- ==============================
-- RECIPE_INGREDIENTS: BATCH 3 (Recipes 81–120)
-- ==============================

-- Recipe 81: Chicken Fajitas
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(81,12,'200 g'),   -- Chicken
(81,20,'1 cup'),   -- Bell Pepper
(81,10,'1'),       -- Onion
(81,1,'2 wraps'),  -- Flour (Tortilla)
(81,28,'1 tbsp');  -- Oil

-- Recipe 82: Veggie Pizza
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(82,1,'1 base'),   -- Pizza Base (Flour)
(82,18,'1 cup'),   -- Cheese
(82,20,'1/2 cup'), -- Bell Pepper
(82,11,'1'),       -- Tomato
(82,8,'1 tbsp');   -- Olive Oil

-- Recipe 83: Beef Stir Fry
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(83,13,'200 g'),   -- Beef
(83,20,'1 cup'),   -- Bell Pepper
(83,10,'1'),       -- Onion
(83,28,'2 tbsp'),  -- Oil
(83,27,'1 tsp');   -- Spices

-- Recipe 84: Lentil Soup
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(84,44,'1 cup'),   -- Lentils
(84,10,'1'),       -- Onion
(84,28,'2 tbsp'),  -- Oil
(84,27,'1 tsp');   -- Spices

-- Recipe 85: Caesar Salad
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(85,22,'2 cups'),  -- Lettuce
(85,12,'100 g'),   -- Chicken
(85,35,'2 tbsp'),  -- Parmesan
(85,36,'2 tbsp');  -- Dressing

-- Recipe 86: Fish Tacos
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(86,42,'200 g'),   -- Fish Fillet
(86,1,'2 wraps'),  -- Flour (Tortilla)
(86,21,'1/2 cup'), -- Cucumber
(86,22,'1 cup'),   -- Lettuce
(86,28,'1 tbsp');  -- Oil

-- Recipe 87: Vegan Buddha Bowl
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(87,24,'1/2 cup'), -- Banana
(87,40,'1 cup'),   -- Quinoa
(87,16,'1 cup'),   -- Carrot
(87,20,'1 cup'),   -- Spinach
(87,25,'1 tbsp');  -- Honey

-- Recipe 88: Spaghetti Carbonara
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(88,1,'200 g'),    -- Spaghetti (Flour placeholder)
(88,3,'2'),        -- Egg
(88,18,'1/2 cup'), -- Cheese
(88,13,'50 g'),    -- Bacon (placeholder)
(88,6,'pinch');    -- Salt

-- Recipe 89: Chicken Shawarma
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(89,12,'200 g'),   -- Chicken
(89,28,'1 tbsp'),  -- Oil
(89,27,'1 tsp'),   -- Spices
(89,1,'1 wrap');   -- Flatbread

-- Recipe 90: Greek Salad
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(90,22,'1 cup'),   -- Lettuce
(90,18,'1/2 cup'), -- Cheese
(90,11,'2'),       -- Tomato
(90,21,'1/2 cup'), -- Cucumber
(90,8,'1 tbsp');   -- Olive Oil

-- Recipe 91: Chicken Fried Rice
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(91,12,'200 g'),   -- Chicken
(91,14,'1 cup'),   -- Rice
(91,10,'1'),       -- Onion
(91,20,'1 cup'),   -- Spinach
(91,28,'2 tbsp');  -- Oil

-- Recipe 92: Vegetable Noodles
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(92,44,'100 g'),   -- Noodles (placeholder)
(92,20,'1 cup'),   -- Spinach
(92,16,'1'),       -- Carrot
(92,10,'1'),       -- Onion
(92,28,'2 tbsp');  -- Oil

-- Recipe 93: Shrimp Fried Rice
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(93,43,'200 g'),   -- Shrimp
(93,14,'1 cup'),   -- Rice
(93,10,'1'),       -- Onion
(93,20,'1 cup'),   -- Spinach
(93,28,'2 tbsp');  -- Oil

-- Recipe 94: Chicken Alfredo Pasta
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(94,12,'200 g'),   -- Chicken
(94,1,'200 g'),    -- Pasta (Flour placeholder)
(94,2,'1 cup'),    -- Milk
(94,18,'1/2 cup'), -- Cheese
(94,5,'2 tbsp');   -- Butter

-- Recipe 95: Vegetarian Chili
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(95,15,'1 cup'),   -- Beans
(95,11,'2'),       -- Tomato
(95,10,'1'),       -- Onion
(95,27,'1 tsp'),   -- Spices
(95,28,'2 tbsp');  -- Oil

-- Recipe 96: Mango Smoothie
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(96,54,'1 cup'),   -- Mango (placeholder)
(96,2,'1 cup'),    -- Milk
(96,26,'1 tbsp');  -- Honey

-- Recipe 97: Tomato Soup
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(97,11,'4'),       -- Tomato
(97,10,'1'),       -- Onion
(97,28,'2 tbsp'),  -- Oil
(97,27,'1 tsp');   -- Spices

-- Recipe 98: Beef Tacos
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(98,13,'200 g'),   -- Beef
(98,1,'2 wraps'),  -- Tortilla (Flour)
(98,22,'1 cup'),   -- Lettuce
(98,21,'1/2 cup'), -- Cucumber
(98,28,'1 tbsp');  -- Oil

-- Recipe 99: Veggie Burger
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(99,44,'1 patty'), -- Veggie Patty (placeholder)
(99,1,'1 bun'),    -- Bun (Flour)
(99,22,'1/2 cup'), -- Lettuce
(99,11,'1'),       -- Tomato
(99,8,'1 tbsp');   -- Olive Oil

-- Recipe 100: Chicken Parmesan
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(100,12,'200 g'),  -- Chicken
(100,18,'1/2 cup'),-- Cheese
(100,11,'2'),      -- Tomato
(100,8,'1 tbsp'),  -- Olive Oil
(100,1,'2 slices');-- Bread (Flour)

-- Recipes 101–120 continue the same pattern...

-- ==============================
-- RECIPE_INGREDIENTS (Recipes 101–120)
-- ==============================

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
-- 101: Beef Tacos
(101,13,'400 g'),
(101,1,'4 tortillas'),
(101,7,'2'),
(101,22,'1 cup'),
(101,28,'1 tbsp'),

-- 102: Chicken Nuggets
(102,12,'500 g'),
(102,1,'1 cup'),
(102,3,'2'),
(102,6,'1 tsp'),
(102,28,'2 cups'),

-- 103: Mashed Potatoes
(103,51,'1 kg'),     -- Potatoes
(103,5,'100 g'),
(103,2,'1/2 cup'),
(103,6,'1 tsp'),

-- 104: Spaghetti Bolognese
(104,48,'250 g'),
(104,13,'300 g'),
(104,7,'3'),
(104,8,'1'),
(104,28,'2 tbsp'),

-- 105: Vegetable Omelette
(105,3,'3'),
(105,16,'1'),
(105,8,'1/2'),
(105,20,'1/2 cup'),
(105,6,'1 tsp'),

-- 106: Chicken Sandwich
(106,12,'200 g'),
(106,52,'2 slices'), -- Bread
(106,22,'1 cup'),
(106,46,'2 tbsp'),
(106,6,'1 tsp'),

-- 107: Fish and Chips
(107,42,'500 g'),
(107,51,'3'),
(107,1,'1 cup'),
(107,6,'1 tsp'),
(107,28,'3 cups'),

-- 108: Beef Kebabs
(108,13,'500 g'),
(108,8,'1'),
(108,9,'1 tsp'),
(108,28,'2 tbsp'),
(108,6,'1 tsp'),

-- 109: Chicken Soup
(109,12,'400 g'),
(109,8,'1'),
(109,16,'1'),
(109,14,'1 cup'),
(109,6,'1 tsp'),

-- 110: Caesar Wrap
(110,12,'200 g'),
(110,1,'1 wrap'),
(110,22,'1 cup'),
(110,36,'2 tbsp'),
(110,35,'2 tbsp'),

-- 111: Beef Meatballs
(111,13,'500 g'),
(111,3,'1'),
(111,1,'1/2 cup'),
(111,6,'1 tsp'),
(111,28,'1 tbsp'),

-- 112: Vegetable Pasta
(112,48,'250 g'),
(112,16,'1'),
(112,14,'1 cup'),
(112,20,'1 cup'),
(112,28,'2 tbsp'),

-- 113: Chicken Wings
(113,12,'800 g'),
(113,28,'2 tbsp'),
(113,9,'1 tsp'),
(113,6,'1 tsp'),

-- 114: Fried Plantain
(114,53,'3'),        -- Plantain
(114,28,'2 cups'),
(114,6,'1 tsp'),

-- 115: Beef Pilau
(115,13,'500 g'),
(115,10,'3 cups'),
(115,8,'1'),
(115,27,'2 tsp'),
(115,28,'3 tbsp'),

-- 116: Vegetable Samosa
(116,1,'2 cups'),
(116,16,'1'),
(116,14,'1 cup'),
(116,9,'1 tsp'),
(116,28,'1 tbsp'),

-- 117: Chicken Pizza
(117,1,'2 cups'),
(117,12,'300 g'),
(117,7,'2'),
(117,35,'150 g'),
(117,28,'2 tbsp'),

-- 118: Rice and Beans
(118,14,'2 cups'),
(118,54,'1 cup'),    -- Beans
(118,8,'1'),
(118,28,'2 tbsp'),
(118,6,'1 tsp'),

-- 119: Grilled Steak
(119,13,'400 g'),
(119,28,'1 tbsp'),
(119,6,'1 tsp'),

-- 120: Fruit Salad
(120,17,'2'),
(120,24,'1'),
(120,21,'1'),
(120,26,'1 tbsp');

-- ==============================
-- RECIPE_INGREDIENTS: BATCH 4 (Recipes 121–160)
-- ==============================

-- Recipe 121: Shrimp Tacos
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(121,43,'200 g'),   -- Shrimp
(121,1,'2 wraps'),  -- Tortilla (Flour)
(121,22,'1 cup'),   -- Lettuce
(121,21,'1/2 cup'), -- Cucumber
(121,28,'1 tbsp');  -- Oil

-- Recipe 122: Vegan Lasagna
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(122,44,'200 g'),   -- Vegan Cheese
(122,1,'6 sheets'), -- Lasagna Sheets (Flour)
(122,20,'1 cup'),   -- Spinach
(122,16,'1'),       -- Carrot
(122,11,'2'),       -- Tomato
(122,28,'2 tbsp');  -- Oil

-- Recipe 123: Chicken Stir Fry
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(123,12,'200 g'),   -- Chicken
(123,16,'1 cup'),   -- Carrot
(123,20,'1 cup'),   -- Spinach
(123,10,'1'),       -- Onion
(123,28,'2 tbsp');  -- Oil

-- Recipe 124: Pumpkin Soup
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(124,55,'1 cup'),   -- Pumpkin (placeholder)
(124,10,'1'),       -- Onion
(124,28,'2 tbsp'),  -- Oil
(124,27,'1 tsp');   -- Spices

-- Recipe 125: Caprese Salad
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(125,18,'100 g'),   -- Cheese
(125,11,'2'),       -- Tomato
(125,43,'5 leaves'),-- Basil (placeholder)
(125,8,'1 tbsp');   -- Olive Oil

-- Recipe 126: Beef Burger
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(126,13,'200 g'),   -- Beef
(126,1,'1 bun'),    -- Bun (Flour)
(126,22,'1/2 cup'), -- Lettuce
(126,11,'1'),       -- Tomato
(126,28,'1 tbsp');  -- Oil

-- Recipe 127: Fish and Chips
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(127,42,'200 g'),   -- Fish
(127,17,'2'),       -- Potato
(127,28,'2 tbsp'),  -- Oil
(127,6,'pinch');    -- Salt

-- Recipe 128: Veggie Quesadilla
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(128,44,'100 g'),   -- Cheese
(128,1,'2 wraps'),  -- Flour (Tortilla)
(128,20,'1/2 cup'), -- Spinach
(128,16,'1'),       -- Carrot
(128,28,'1 tbsp');  -- Oil

-- Recipe 129: Chicken Tikka Masala
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(129,12,'200 g'),   -- Chicken
(129,27,'1 tsp'),   -- Spices
(129,11,'2'),       -- Tomato
(129,2,'1/4 cup'),  -- Milk/Cream
(129,28,'1 tbsp');  -- Oil

-- Recipe 130: Quiche Lorraine
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(130,1,'1 base'),   -- Pie Base (Flour)
(130,3,'2'),        -- Eggs
(130,18,'1/2 cup'), -- Cheese
(130,13,'50 g'),    -- Bacon
(130,2,'1/4 cup');  -- Milk

-- Recipe 131: Mediterranean Bowl
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(131,14,'1 cup'),   -- Rice
(131,22,'1 cup'),   -- Lettuce
(131,20,'1/2 cup'), -- Spinach
(131,24,'1/2 cup'), -- Avocado
(131,28,'1 tbsp');  -- Oil

-- Recipe 132: Thai Green Curry
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(132,12,'200 g'),   -- Chicken
(132,27,'1 tbsp'),  -- Green Curry Paste
(132,2,'1 cup'),    -- Coconut Milk
(132,20,'1 cup'),   -- Spinach
(132,28,'1 tbsp');  -- Oil

-- Recipe 133: Shepherd’s Pie
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(133,13,'200 g'),   -- Beef
(133,17,'3'),       -- Potato
(133,10,'1'),       -- Onion
(133,5,'2 tbsp');   -- Butter

-- Recipe 134: Mushroom Risotto
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(134,46,'1 cup'),   -- Mushrooms
(134,14,'1 cup'),   -- Rice
(134,2,'2 cups'),   -- Milk/Stock
(134,18,'1/4 cup'); -- Cheese

-- Recipe 135: Vegan Curry
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(135,44,'200 g'),   -- Tofu
(135,27,'1 tsp'),   -- Spices
(135,16,'1 cup'),   -- Carrot
(135,20,'1 cup'),   -- Spinach
(135,28,'1 tbsp');  -- Oil

-- Recipe 136: Banana Pancakes
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(136,1,'1 cup'),    -- Flour
(136,3,'1'),        -- Egg
(136,24,'1'),       -- Banana
(136,2,'1 cup'),    -- Milk
(136,4,'2 tbsp');   -- Sugar

-- Recipe 137: Chicken Noodle Soup
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(137,12,'200 g'),   -- Chicken
(137,44,'100 g'),   -- Noodles
(137,10,'1'),       -- Onion
(137,28,'2 tbsp');  -- Oil

-- Recipe 138: Veggie Omelette
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(138,3,'2'),        -- Eggs
(138,16,'1/2 cup'), -- Carrot
(138,20,'1/2 cup'), -- Spinach
(138,6,'pinch');    -- Salt

-- Recipe 139: Chocolate Cake
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(139,1,'2 cups'),   -- Flour
(139,4,'1 cup'),    -- Sugar
(139,5,'1/2 cup'),  -- Butter
(139,56,'1/2 cup'), -- Cocoa Powder (placeholder)
(139,3,'3');        -- Eggs

-- Recipe 140: Fruit Tart
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(140,1,'1 crust'),  -- Tart Base (Flour)
(140,18,'1/2 cup'), -- Cheese
(140,57,'1 cup'),   -- Mixed Fruits
(140,26,'2 tbsp');  -- Honey

-- Recipes 141–160 continue similarly...

-- ==============================
-- RECIPE_INGREDIENTS (Recipes 141–160)
-- ==============================

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES

-- 141: Chicken Shawarma
(141,12,'500 g'),
(141,10,'1'),
(141,9,'2 tsp'),
(141,6,'1 tsp'),
(141,28,'2 tbsp'),

-- 142: Falafel Wrap
(142,54,'1 cup'),
(142,1,'1 wrap'),
(142,10,'1/2'),
(142,9,'1 tsp'),
(142,28,'2 tbsp'),

-- 143: Beef Burger
(143,13,'400 g'),
(143,52,'2 buns'),
(143,11,'1'),
(143,22,'1 cup'),
(143,6,'1 tsp'),

-- 144: Chicken Stir Fry
(144,12,'400 g'),
(144,16,'1'),
(144,20,'1 cup'),
(144,8,'1'),
(144,28,'2 tbsp'),

-- 145: Vegetable Curry
(145,16,'2'),
(145,14,'1 cup'),
(145,20,'1 cup'),
(145,27,'2 tsp'),
(145,28,'2 tbsp'),

-- 146: Grilled Chicken
(146,12,'600 g'),
(146,28,'1 tbsp'),
(146,6,'1 tsp'),

-- 147: Fish Curry
(147,42,'500 g'),
(147,8,'1'),
(147,27,'2 tsp'),
(147,28,'2 tbsp'),

-- 148: Pasta Alfredo
(148,48,'300 g'),
(148,2,'1 cup'),
(148,5,'50 g'),
(148,6,'1 tsp'),

-- 149: Beef Stew
(149,13,'600 g'),
(149,10,'1'),
(149,16,'2'),
(149,28,'2 tbsp'),
(149,6,'1 tsp'),

-- 150: Vegetable Soup
(150,16,'2'),
(150,14,'1 cup'),
(150,20,'1 cup'),
(150,10,'1'),
(150,6,'1 tsp'),

-- 151: Chicken Tikka
(151,12,'500 g'),
(151,2,'1/2 cup'),
(151,9,'2 tsp'),
(151,6,'1 tsp'),

-- 152: Beef Wrap
(152,13,'400 g'),
(152,1,'1 wrap'),
(152,22,'1 cup'),
(152,6,'1 tsp'),

-- 153: Rice Pilaf
(153,14,'2 cups'),
(153,10,'1'),
(153,28,'2 tbsp'),
(153,6,'1 tsp'),

-- 154: Fried Rice
(154,14,'2 cups'),
(154,3,'2'),
(154,16,'1'),
(154,28,'2 tbsp'),
(154,6,'1 tsp'),

-- 155: Chicken Salad
(155,12,'300 g'),
(155,22,'2 cups'),
(155,21,'1'),
(155,36,'2 tbsp'),

-- 156: Beef Kebabs
(156,13,'500 g'),
(156,8,'1'),
(156,9,'1 tsp'),
(156,6,'1 tsp'),

-- 157: Lentil Stew
(157,55,'1 cup'),
(157,10,'1'),
(157,16,'1'),
(157,28,'1 tbsp'),

-- 158: Grilled Fish
(158,42,'400 g'),
(158,28,'1 tbsp'),
(158,6,'1 tsp'),

-- 159: Vegetable Pizza
(159,1,'2 cups'),
(159,16,'1'),
(159,20,'1 cup'),
(159,35,'150 g'),
(159,28,'2 tbsp'),

-- 160: Fruit Smoothie
(160,24,'1'),
(160,17,'1'),
(160,2,'1 cup'),
(160,26,'1 tbsp');

-- ==============================
-- RECIPE_INGREDIENTS: BATCH 5 (Recipes 161–200)
-- ==============================
BEGIN;

-- Recipe 161: Chicken Quesadilla
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(161,12,'200 g'),   -- Chicken
(161,1,'2 wraps'),  -- Flour (Tortilla)
(161,18,'1/2 cup'), -- Cheese
(161,20,'1/2 cup'), -- Spinach
(161,28,'1 tbsp');  -- Oil

-- Recipe 162: Vegan Chili
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(162,44,'200 g'),   -- Tofu/Plant Protein
(162,15,'1 cup'),   -- Beans
(162,11,'2'),       -- Tomato
(162,10,'1'),       -- Onion
(162,28,'2 tbsp');  -- Oil

-- Recipe 163: Fish Curry
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(163,42,'200 g'),   -- Fish
(163,2,'1 cup'),    -- Coconut Milk
(163,27,'1 tsp'),   -- Spices
(163,10,'1');       -- Onion

-- Recipe 164: Beef Stroganoff
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(164,13,'200 g'),   -- Beef
(164,46,'1 cup'),   -- Mushrooms
(164,2,'1/2 cup'),  -- Milk/Cream
(164,28,'1 tbsp');  -- Oil

-- Recipe 165: Greek Yogurt Parfait
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(165,58,'1 cup'),   -- Yogurt (placeholder)
(165,57,'1/2 cup'), -- Mixed Fruits
(165,26,'1 tbsp');  -- Honey

-- Recipe 166: Chicken Pad Thai
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(166,12,'200 g'),   -- Chicken
(166,44,'100 g'),   -- Rice Noodles
(166,16,'1/2 cup'), -- Carrot
(166,20,'1/2 cup'), -- Spinach
(166,28,'2 tbsp');  -- Oil

-- Recipe 167: Veggie Wrap
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(167,44,'1/2 cup'), -- Tofu/Plant Protein
(167,1,'1 wrap'),   -- Flour (Tortilla)
(167,16,'1/2 cup'), -- Carrot
(167,20,'1/2 cup'), -- Spinach
(167,22,'1/2 cup'); -- Lettuce

-- Recipe 168: Chicken Teriyaki
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(168,12,'200 g'),   -- Chicken
(168,27,'2 tbsp'),  -- Teriyaki Sauce
(168,20,'1/2 cup'), -- Spinach
(168,28,'1 tbsp');  -- Oil

-- Recipe 169: Beef Tacos
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(169,13,'200 g'),   -- Beef
(169,1,'2 wraps'),  -- Flour (Tortilla)
(169,22,'1 cup'),   -- Lettuce
(169,21,'1/2 cup'), -- Cucumber
(169,28,'1 tbsp');  -- Oil

-- Recipe 170: Mushroom Pizza
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(170,1,'1 base'),   -- Pizza Base
(170,46,'1 cup'),   -- Mushrooms
(170,18,'1/2 cup'), -- Cheese
(170,8,'1 tbsp');   -- Olive Oil

-- Recipe 171: Chicken Soup
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(171,12,'200 g'),   -- Chicken
(171,10,'1'),       -- Onion
(171,44,'100 g'),   -- Noodles
(171,28,'2 tbsp');  -- Oil

-- Recipe 172: Vegan Curry
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(172,44,'200 g'),   -- Tofu/Plant Protein
(172,16,'1 cup'),   -- Carrot
(172,20,'1 cup'),   -- Spinach
(172,27,'1 tsp'),   -- Spices
(172,28,'2 tbsp');  -- Oil

-- Recipe 173: Chocolate Muffins
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(173,1,'2 cups'),   -- Flour
(173,4,'1 cup'),    -- Sugar
(173,5,'1/2 cup'),  -- Butter
(173,56,'1/2 cup'), -- Cocoa Powder
(173,3,'2');        -- Eggs

-- Recipe 174: Banana Bread
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(174,1,'2 cups'),   -- Flour
(174,24,'2'),       -- Banana
(174,4,'1/2 cup'),  -- Sugar
(174,5,'1/4 cup'),  -- Butter
(174,3,'2');        -- Eggs

-- Recipe 175: Chicken Salad
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(175,12,'200 g'),   -- Chicken
(175,22,'1 cup'),   -- Lettuce
(175,21,'1/2 cup'), -- Cucumber
(175,8,'1 tbsp');   -- Olive Oil

-- Recipe 176: Veggie Fried Rice
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(176,14,'1 cup'),   -- Rice
(176,16,'1 cup'),   -- Carrot
(176,20,'1 cup'),   -- Spinach
(176,10,'1'),       -- Onion
(176,28,'2 tbsp');  -- Oil

-- Recipe 177: Chicken Parmesan
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(177,12,'200 g'),   -- Chicken
(177,18,'1/2 cup'), -- Cheese
(177,11,'2'),       -- Tomato
(177,8,'1 tbsp');   -- Olive Oil

-- Recipe 178: Veggie Sandwich
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(178,1,'2 slices'), -- Bread
(178,16,'1/2 cup'), -- Carrot
(178,20,'1/2 cup'), -- Spinach
(178,22,'1/2 cup'), -- Lettuce
(178,26,'1 tbsp');  -- Honey

-- Recipe 179: Beef Stew
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(179,13,'200 g'),   -- Beef
(179,17,'2'),       -- Potato
(179,10,'1'),       -- Onion
(179,27,'1 tsp'),   -- Spices
(179,28,'2 tbsp');  -- Oil

-- Recipe 180: Fish Curry
INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES
(180,42,'200 g'),   -- Fish
(180,2,'1 cup'),    -- Coconut Milk
(180,27,'1 tsp'),   -- Spices
(180,10,'1');       -- Onion

-- Recipe 181–200 continue similarly...

-- ==============================
-- RECIPE_INGREDIENTS (Recipes 181–200)
-- ==============================

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES

-- 181: Chicken Fajitas
(181,12,'400 g'),
(181,1,'4 tortillas'),
(181,16,'1'),
(181,11,'1'),
(181,28,'2 tbsp'),

-- 182: Beef Lasagna
(182,13,'500 g'),
(182,48,'300 g'),
(182,35,'200 g'),
(182,28,'2 tbsp'),
(182,6,'1 tsp'),

-- 183: Veggie Burger
(183,1,'2 buns'),
(183,16,'1'),
(183,22,'1 cup'),
(183,24,'1'),
(183,28,'1 tbsp'),

-- 184: Chicken Parmesan
(184,12,'400 g'),
(184,48,'200 g'),
(184,35,'100 g'),
(184,28,'2 tbsp'),
(184,6,'1 tsp'),

-- 185: Beef Chili
(185,13,'500 g'),
(185,54,'1 cup'),
(185,10,'1'),
(185,28,'2 tbsp'),
(185,6,'1 tsp'),

-- 186: Vegetable Lasagna
(186,48,'300 g'),
(186,16,'1'),
(186,20,'1 cup'),
(186,35,'150 g'),
(186,28,'2 tbsp'),

-- 187: Chicken Fried Rice
(187,12,'400 g'),
(187,14,'2 cups'),
(187,16,'1'),
(187,28,'2 tbsp'),
(187,6,'1 tsp'),

-- 188: Beef Tacos
(188,13,'400 g'),
(188,1,'4 tortillas'),
(188,11,'1'),
(188,22,'1 cup'),
(188,28,'1 tbsp'),

-- 189: Chicken Wrap
(189,12,'300 g'),
(189,1,'1 wrap'),
(189,22,'1 cup'),
(189,36,'2 tbsp'),
(189,6,'1 tsp'),

-- 190: Grilled Vegetable Skewers
(190,16,'2'),
(190,20,'1 cup'),
(190,10,'1'),
(190,28,'1 tbsp'),

-- 191: Fish Tacos
(191,42,'400 g'),
(191,1,'4 tortillas'),
(191,11,'1'),
(191,28,'2 tbsp'),

-- 192: Chicken Quesadilla
(192,12,'300 g'),
(192,1,'2 tortillas'),
(192,35,'50 g'),
(192,28,'2 tbsp'),

-- 193: Vegetable Curry
(193,16,'2'),
(193,14,'1 cup'),
(193,20,'1 cup'),
(193,27,'2 tsp'),
(193,28,'2 tbsp'),

-- 194: Beef Stroganoff
(194,13,'500 g'),
(194,48,'200 g'),
(194,2,'1/2 cup'),
(194,28,'2 tbsp'),

-- 195: Chicken Caesar Salad
(195,12,'300 g'),
(195,22,'2 cups'),
(195,36,'2 tbsp'),
(195,35,'2 tbsp'),

-- 196: Vegetable Fried Rice
(196,14,'2 cups'),
(196,16,'1'),
(196,20,'1 cup'),
(196,28,'2 tbsp'),

-- 197: Beef Kabobs
(197,13,'500 g'),
(197,8,'1'),
(197,9,'1 tsp'),
(197,28,'2 tbsp'),

-- 198: Chicken Noodle Soup
(198,12,'400 g'),
(198,14,'2 cups'),
(198,3,'2'),
(198,28,'1 tbsp'),

-- 199: Veggie Pizza
(199,1,'2 cups'),
(199,16,'1'),
(199,20,'1 cup'),
(199,35,'150 g'),
(199,28,'2 tbsp'),

-- 200: Fruit Parfait
(200,24,'1'),
(200,26,'2 tbsp'),
(200,17,'1'),
(200,2,'1 cup');

-- ==============================
-- RECIPE_INGREDIENTS (Recipes 201–220)
-- ==============================

INSERT INTO recipe_ingredients (recipe_id, ingredient_id, quantity) VALUES

-- 201: Chicken Teriyaki
(201,12,'400 g'),
(201,28,'2 tbsp'),
(201,9,'1 tsp'),
(201,16,'1'),

-- 202: Beef Pho
(202,13,'500 g'),
(202,14,'2 cups'),
(202,3,'2'),
(202,28,'2 tbsp'),

-- 203: Veggie Spring Rolls
(203,16,'2'),
(203,20,'1 cup'),
(203,1,'4 wraps'),
(203,28,'1 tbsp'),

-- 204: Chicken Burrito Bowl
(204,12,'400 g'),
(204,14,'2 cups'),
(204,16,'1'),
(204,28,'2 tbsp'),

-- 205: Beef Enchiladas
(205,13,'400 g'),
(205,1,'4 tortillas'),
(205,35,'100 g'),
(205,28,'2 tbsp'),

-- 206: Vegetable Stir Fry
(206,16,'2'),
(206,20,'1 cup'),
(206,14,'1 cup'),
(206,28,'2 tbsp'),

-- 207: Chicken Tacos
(207,12,'400 g'),
(207,1,'4 tortillas'),
(207,11,'1'),
(207,28,'2 tbsp'),

-- 208: Beef Fajitas
(208,13,'500 g'),
(208,1,'4 tortillas'),
(208,16,'1'),
(208,11,'1'),
(208,28,'2 tbsp'),

-- 209: Vegetable Quesadilla
(209,16,'2'),
(209,20,'1 cup'),
(209,1,'2 tortillas'),
(209,35,'50 g'),
(209,28,'1 tbsp'),

-- 210: Chicken Pasta
(210,12,'400 g'),
(210,48,'200 g'),
(210,28,'2 tbsp'),
(210,6,'1 tsp'),

-- 211: Beef Sandwich
(211,13,'400 g'),
(211,52,'2 slices'),
(211,22,'1 cup'),
(211,28,'1 tbsp'),

-- 212: Chicken Pizza
(212,12,'300 g'),
(212,1,'2 cups'),
(212,35,'150 g'),
(212,28,'2 tbsp'),

-- 213: Vegetable Soup
(213,16,'2'),
(213,14,'1 cup'),
(213,20,'1 cup'),
(213,28,'1 tbsp'),

-- 214: Beef Chili
(214,13,'500 g'),
(214,54,'1 cup'),
(214,10,'1'),
(214,28,'2 tbsp'),

-- 215: Chicken Salad
(215,12,'300 g'),
(215,22,'2 cups'),
(215,36,'2 tbsp'),
(215,35,'2 tbsp'),

-- 216: Vegetable Lasagna
(216,48,'300 g'),
(216,16,'1'),
(216,20,'1 cup'),
(216,35,'150 g'),
(216,28,'2 tbsp'),

-- 217: Beef Kabobs
(217,13,'500 g'),
(217,8,'1'),
(217,9,'1 tsp'),
(217,28,'2 tbsp'),

-- 218: Chicken Noodle Soup
(218,12,'400 g'),
(218,14,'2 cups'),
(218,3,'2'),
(218,28,'1 tbsp'),

-- 219: Veggie Pizza
(219,1,'2 cups'),
(219,16,'1'),
(219,20,'1 cup'),
(219,35,'150 g'),
(219,28,'2 tbsp'),

-- 220: Fruit Parfait
(220,24,'1'),
(220,26,'2 tbsp'),
(220,17,'1'),
(220,2,'1 cup');

COMMIT;