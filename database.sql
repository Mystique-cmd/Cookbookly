

INSERT INTO favorites (user_id, recipe_id) VALUES
(1, 11),  
(1, 16),  
(2, 61),  
(2, 58), 
(3, 3),  
(4, 20),  
(5, 18);  

COMMIT;

BEGIN;

INSERT INTO health_conditions (id, name, description) VALUES
(1, 'Diabetes', 'Requires low sugar and carb-conscious meals'),
(2, 'Hypertension', 'Requires low sodium meals'),
(3, 'Gluten Intolerance', 'Avoids gluten'),
(4, 'Lactose Intolerance', 'Avoids dairy products');

COMMIT;UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1587732625821-cd8c78f5c8b2' WHERE id = 1; 
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id = 2;
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1604908177525-5299e845b5be' WHERE id = 3; 
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1609757216113-b4ed56c09ce5' WHERE id = 4;
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id = 5;

UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1556911220-e15b29be8c13' WHERE id = 6; 
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id = 7;
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1599566150163-29194dcaad36' WHERE id = 8; 
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1621609773144-1cb0b0c28557' WHERE id = 9; -- Poha
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1594007658470-cb20c8efaa48' WHERE id = 10; -- Breakfast Burrito

UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id = 11; -- Jollof Rice
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1589302168068-964664d93dc0' WHERE id = 12; -- Chicken Caesar Salad
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1600697272207-87c2f689be36' WHERE id = 13; -- Vegetable Wrap
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id = 14; -- Vegetable Fried Rice
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id = 15; -- Quinoa Salad

UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1604908177525-5299e845b5be' WHERE id = 16; -- Nyama Choma
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id = 17; -- Egusi Soup
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id = 18; -- Chicken Curry
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1556911220-e15b29be8c13' WHERE id = 19; -- Vegetable Stir Fry
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id = 20; -- Grilled Salmon

UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id = 21; -- Roasted Plantain
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1609757216113-b4ed56c09ce5' WHERE id = 22; -- Samosa
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1604908177525-5299e845b5be' WHERE id = 23; -- Popcorn
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id = 24; -- Hummus
UPDATE recipes SET image_url = 'https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id = 25; -- Chicken Wings
-- Recipes 26–40 (Appetizers / Main Courses / Side Dishes / Desserts / Baked Goods)
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=26; -- Falafel
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=27; -- Bruschetta
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1609757216113-b4ed56c09ce5' WHERE id=28; -- Stuffed Mushrooms
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=29; -- Paneer Tikka
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1587732625821-cd8c78f5c8b2' WHERE id=30; -- Deviled Eggs
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=31; -- Spaghetti Bolognese
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=32; -- Vegetable Couscous
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1604908177525-5299e845b5be' WHERE id=33; -- Pepper Soup
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=34; -- Butter Chicken
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=35; -- Grilled Chicken Breast
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=36; -- Ugali
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1609757216113-b4ed56c09ce5' WHERE id=37; -- Mashed Potatoes
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=38; -- Garlic Bread
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=39; -- Steamed Vegetables
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=40; -- Ratatouille

-- Recipes 41–60 (Desserts / Baked Goods)
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=41; -- Creme Brulee
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=42; -- Fruit Salad
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=43; -- Tiramisu
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=44; -- Coconut Mandazi
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=45; -- Rice Pudding
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=46; -- Margherita Pizza
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=47; -- Banana Bread
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=48; -- Chocolate Chip Cookies
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=49; -- Gluten-Free Muffins
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=50; -- Lasagna
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=51; -- Boiled Maize
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=52; -- Mutura
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=53; -- Tacos
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=54; -- Bhel Puri
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=55; -- Hot Dogs
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=56; -- Cheeseburger
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=57; -- Fried Chicken
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=58; -- French Fries
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=59; -- Chicken Nuggets
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=60; -- Pizza Slices

-- Recipes 61–80 (Beverages / Smoothies / Soups & Stews)
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=61; -- Masala Chai
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=62; -- Fresh Lemonade
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=63; -- Iced Coffee
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=64; -- Hot Chocolate
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=65; -- Ginger Tea
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=66; -- Mango Smoothie
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=67; -- Green Detox Juice
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=68; -- Banana Peanut Smoothie
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=69; -- Carrot Orange Juice
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=70; -- Avocado Smoothie
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=71; -- Chicken Noodle Soup
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=72; -- Beef Stew
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=73; -- Lentil Soup
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=74; -- Tomato Soup
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=75; -- Fish Stew
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=76; -- Greek Salad
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=77; -- Coleslaw
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=78; -- Chicken Avocado Salad
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=79; -- Kachumbari
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=80; -- Caesar Salad
-- Recipes 81–100 (Sandwiches / Wraps / Rice / Pasta / Grilled Foods)
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=81; -- Club Sandwich
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=82; -- Veggie Wrap
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=83; -- Chicken Burrito
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=84; -- Fried Rice
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=85; -- Spaghetti Carbonara
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=86; -- Grilled Steak
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=87; -- Grilled Chicken Thighs
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=88; -- BBQ Ribs
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=89; -- Grilled Veggies
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=90; -- Grilled Salmon

-- Recipes 91–120 (Fried Foods / Seafood / Meat Dishes / Vegetarian / Vegan)
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=91; -- Fried Chicken
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=92; -- Fish Fingers
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=93; -- Beef Stir Fry
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=94; -- Lentil Curry
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=95; -- Vegan Buddha Bowl
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=96; -- Mushroom Risotto
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=97; -- Tofu Stir Fry
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=98; -- Veggie Lasagna
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=99; -- Eggplant Parmesan
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=100; -- Chickpea Curry

UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=101; -- Shrimp Fried Rice
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=102; -- Grilled Lobster
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=103; -- Beef Steak
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=104; -- Pork Chops
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=105; -- Lamb Curry
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=106; -- Vegetarian Chili
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=107; -- Vegan Pad Thai
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=108; -- Tofu Salad
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=109; -- Lentil Soup
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=110; -- Grilled Vegetables

-- Recipes 111–140 (Gluten-Free / Low-Carb / Keto / Healthy / Comfort)
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=111; -- Cauliflower Rice
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=112; -- Zucchini Noodles
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=113; -- Keto Pancakes
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=114; -- Grilled Chicken Salad
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=115; -- Protein Smoothie
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=116; -- Sweet Potato Fries
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=117; -- Chicken Soup
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=118; -- Baked Salmon
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=119; -- Veggie Stir Fry
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=120; -- Beef Chili

-- Recipes 141–160 (Traditional / African / Asian / Chinese / Indian / Italian / Middle Eastern / Western)
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=141; -- Jollof Rice
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=142; -- Nyama Choma
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=143; -- Egusi Soup
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=144; -- Vegetable Fried Rice
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=145; -- Chicken Curry
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=146; -- Paneer Tikka
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=147; -- Spaghetti Bolognese
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=148; -- Tiramisu
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=149; -- Margherita Pizza
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=150; -- Falafel
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=151; -- Hummus
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=152; -- Shawarma
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=153; -- Sushi
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=154; -- Pad Thai
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=155; -- Risotto
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=156; -- Baklava
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=157; -- Cheesecake
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=158; -- Hamburger
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=159; -- Hot Dog
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=160; -- Fish & Chips
-- Recipes 161–180 (Kids’ Meals / Party Foods / Holiday / Festive Foods)
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=161; -- Mini Pizzas
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=162; -- Chicken Fingers
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=163; -- Mac & Cheese
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=164; -- Fruit Skewers
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=165; -- Chocolate Cupcakes
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=166; -- Meatballs
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=167; -- Spring Rolls
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=168; -- Mini Sandwiches
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=169; -- Cheese Platter
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=170; -- Deviled Eggs

-- Recipes 171–200 (African / Asian / Chinese / Indian / Italian / Middle Eastern / Western / Street Food / Fast Food)
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=171; -- Suya
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=172; -- Biryani
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=173; -- Chow Mein
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=174; -- Butter Naan
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=175; -- Gnocchi
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=176; -- Falafel Wrap
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=177; -- Kebabs
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=178; -- Pad See Ew
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=179; -- Chicken Tikka Masala
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=180; -- Pizza Margherita

-- Recipes 181–220+ (Drinks / Smoothies / Soups / Salads / Sandwiches / Rice / Pasta / Grilled / Fried / Vegan / Gluten-Free)
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=181; -- Mojito
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=182; -- Strawberry Smoothie
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=183; -- Mango Juice
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=184; -- Tomato Basil Soup
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=185; -- Caesar Salad
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=186; -- BLT Sandwich
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=187; -- Fried Rice with Shrimp
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=188; -- Spaghetti with Meatballs
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=189; -- Grilled Chicken Skewers
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=190; -- Veggie Stir Fry
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=191; -- Chicken Fajitas
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=192; -- Quinoa Salad
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=193; -- Vegan Chili
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=194; -- Gluten-Free Brownies
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=195; -- Zoodle Salad
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=196; -- Fruit Parfait
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=197; -- Chicken Wrap
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=198; -- Stir-Fried Tofu
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=199; -- Salmon Teriyaki
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=200; -- Chicken Noodle Soup
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=201; -- Lentil Dahl
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=202; -- Vegetable Soup
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=203; -- Grilled Tilapia
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=204; -- Beef Stroganoff
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=205; -- Pad Kra Pao
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=206; -- Mashed Sweet Potatoes
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=207; -- Chicken Satay
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=208; -- Greek Yogurt Parfait
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=209; -- Caprese Salad
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=210; -- Shrimp Tacos
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=211; -- Falafel Bowl
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=212; -- Chicken Quesadilla
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=213; -- Thai Green Curry
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=214; -- Vegetable Biryani
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=215; -- Margherita Flatbread
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1603076464186-26d37aa1f317' WHERE id=216; -- Vegan Tacos
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1601050690596-43a1c243fd1f' WHERE id=217; -- Chicken Pita
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1599785209707-5d59ffdb6de8' WHERE id=218; -- Lentil Salad
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1600891964599-f61ba0e24092' WHERE id=219; -- Grilled Eggplant
UPDATE recipes SET image_url='https://images.unsplash.com/photo-1617196033800-4a2b46ed870e' WHERE id=220; -- Quinoa Bowl-- ==============================
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

COMMIT;-- ==============================
-- RECIPE_ORIGINS (Recipes 1–40)
-- ==============================

INSERT INTO recipe_origins (recipe_id, country_id) VALUES
-- African Dishes
(2,1),    -- Millet Porridge -> Kenya
(4,1),    -- Chapati and Tea -> Kenya
(11,2),   -- Jollof Rice -> Nigeria
(16,1),   -- Nyama Choma -> Kenya
(17,2),   -- Egusi Soup -> Nigeria
(21,2),   -- Roasted Plantain -> Nigeria
(59,1),   -- Coconut Mandazi -> Kenya

-- Asian Dishes
(9,5),    -- Poha -> India
(14,6),   -- Vegetable Fried Rice -> China
(18,5),   -- Chicken Curry -> India
(22,5),   -- Samosa -> India
(44,5),   -- Paneer Tikka -> India

-- European Dishes
(46,7),   -- Spaghetti Bolognese -> Italy
(56,8),   -- Creme Brulee -> France
(58,7),   -- Tiramisu -> Italy

-- American Dishes
(1,9),    -- Pancakes -> USA
(10,9),   -- Breakfast Burrito -> USA
(7,9),    -- Eggs Benedict -> USA
(12,9);   -- Chicken Caesar Salad -> USA

-- ==============================
-- RECIPE_ORIGINS (Recipes 41–80)
-- ==============================

INSERT INTO recipe_origins (recipe_id, country_id) VALUES
-- Appetizers / Starters
(41,11),   -- Falafel -> Lebanon
(42,7),    -- Bruschetta -> Italy
(43,6),    -- Stuffed Mushrooms -> International
(44,5),    -- Paneer Tikka -> India
(45,9),    -- Deviled Eggs -> USA

-- Main Courses
(46,7),    -- Spaghetti Bolognese -> Italy
(47,8),    -- Vegetable Couscous -> Middle East
(48,2),    -- Pepper Soup -> Nigeria
(49,5),    -- Butter Chicken -> India
(50,6),    -- Grilled Chicken Breast -> International

-- Side Dishes
(51,1),    -- Ugali -> Kenya
(52,6),    -- Mashed Potatoes -> International
(53,7),    -- Garlic Bread -> Italy
(54,6),    -- Steamed Vegetables -> International
(55,8),    -- Ratatouille -> France

-- Desserts
(56,8),    -- Creme Brulee -> France
(57,6),    -- Fruit Salad -> International
(58,7),    -- Tiramisu -> Italy
(59,1),    -- Coconut Mandazi -> Kenya
(60,6),    -- Rice Pudding -> International

-- Baked Goods
(61,7),    -- Margherita Pizza -> Italy
(62,6),    -- Banana Bread -> International
(63,9),    -- Chocolate Chip Cookies -> USA
(64,6),    -- Gluten-Free Muffins -> International
(65,7);    -- Lasagna -> Italy
-- ==============================
-- RECIPE_ORIGINS (Recipes 81–120)
-- ==============================

INSERT INTO recipe_origins (recipe_id, country_id) VALUES
-- Main Courses & Snacks
(81,7),    -- Spaghetti Carbonara -> Italy
(82,6),    -- Veggie Burger -> International
(83,2),    -- Moi Moi -> Nigeria
(84,1),    -- Sukuma Wiki -> Kenya
(85,5),    -- Chicken Tikka Masala -> India

-- Side Dishes
(86,6),    -- French Fries -> International
(87,7),    -- Pesto Pasta -> Italy
(88,6),    -- Steamed Broccoli -> International
(89,8),    -- Coq au Vin -> France
(90,6),    -- Baked Sweet Potatoes -> International

-- Desserts
(91,7),    -- Cannoli -> Italy
(92,6),    -- Vegan Chocolate Cake -> International
(93,8),    -- Crêpes -> France
(94,9),    -- Apple Pie -> USA
(95,7),    -- Panna Cotta -> Italy

-- Baked Goods / Snacks
(96,6),    -- Muffins -> International
(97,1),    -- Mandazi -> Kenya
(98,2),    -- Chin Chin -> Nigeria
(99,5),    -- Naan Bread -> India
(100,7),   -- Focaccia -> Italy

-- Recipes 101–120
(101,9),   -- Beef Tacos -> USA
(102,9),   -- Chicken Nuggets -> USA
(103,6),   -- Mashed Potatoes -> International
(104,7),   -- Spaghetti Bolognese -> Italy
(105,6),   -- Vegetable Omelette -> International
(106,9),   -- Chicken Sandwich -> USA
(107,6),   -- Fish and Chips -> International
(108,13),  -- Beef Kebabs -> Turkey
(109,5),   -- Chicken Soup -> India
(110,9),   -- Caesar Wrap -> USA
(111,13),  -- Beef Meatballs -> Turkey
(112,6),   -- Vegetable Pasta -> International
(113,9),   -- Chicken Wings -> USA
(114,1),   -- Fried Plantain -> Kenya
(115,2),   -- Beef Pilau -> Nigeria
(116,5),   -- Vegetable Samosa -> India
(117,7),   -- Chicken Pizza -> Italy
(118,14),  -- Rice and Beans -> Thailand
(119,13),  -- Grilled Steak -> Turkey
(120,6);   -- Fruit Salad -> International
-- ==============================
-- RECIPE_ORIGINS (Recipes 121–160)
-- ==============================

INSERT INTO recipe_origins (recipe_id, country_id) VALUES
-- Main Courses & Snacks
(121,6),   -- Veggie Stir Fry -> International
(122,7),   -- Margherita Pizza -> Italy
(123,5),   -- Butter Chicken -> India
(124,6),   -- Lentil Soup -> International
(125,1),   -- Sukuma Wiki Stew -> Kenya

-- Side Dishes
(126,6),   -- Steamed Rice -> International
(127,7),   -- Garlic Bread -> Italy
(128,8),   -- Ratatouille -> France
(129,9),   -- Coleslaw -> USA
(130,6),   -- Quinoa Salad -> International

-- Desserts
(131,7),   -- Tiramisu -> Italy
(132,6),   -- Fruit Parfait -> International
(133,8),   -- Crème Brûlée -> France
(134,9),   -- Brownies -> USA
(135,7),   -- Panna Cotta -> Italy

-- Baked Goods / Snacks
(136,6),   -- Banana Bread -> International
(137,1),   -- Mandazi -> Kenya
(138,2),   -- Puff-Puff -> Nigeria
(139,5),   -- Gulab Jamun -> India
(140,7),   -- Focaccia -> Italy

-- Main Courses
(141,6),   -- Veggie Burger -> International
(142,7),   -- Spaghetti Carbonara -> Italy
(143,5),   -- Chicken Curry -> India
(144,6),   -- Baked Salmon -> International
(145,9),   -- BBQ Ribs -> USA

-- Side Dishes
(146,6),   -- Mashed Potatoes -> International
(147,7),   -- Pesto Pasta -> Italy
(148,6),   -- Steamed Broccoli -> International
(149,8),   -- Coq au Vin -> France
(150,6),   -- Baked Sweet Potatoes -> International

-- Desserts
(151,7),   -- Cannoli -> Italy
(152,6),   -- Vegan Chocolate Cake -> International
(153,8),   -- Crêpes -> France
(154,9),   -- Apple Pie -> USA
(155,7),   -- Panna Cotta -> Italy

-- Baked Goods / Snacks
(156,6),   -- Muffins -> International
(157,1),   -- Mandazi -> Kenya
(158,2),   -- Chin Chin -> Nigeria
(159,5),   -- Naan Bread -> India
(160,7);   -- Focaccia -> Italy

-- ==============================
-- RECIPE_ORIGINS (Recipes 161–200)
-- ==============================

INSERT INTO recipe_origins (recipe_id, country_id) VALUES
-- Main Courses & Snacks
(161,6),   -- Veggie Stir Fry -> International
(162,7),   -- Margherita Pizza -> Italy
(163,5),   -- Butter Chicken -> India
(164,6),   -- Lentil Soup -> International
(165,1),   -- Sukuma Wiki Stew -> Kenya

-- Side Dishes
(166,6),   -- Steamed Rice -> International
(167,7),   -- Garlic Bread -> Italy
(168,8),   -- Ratatouille -> France
(169,9),   -- Coleslaw -> USA
(170,6),   -- Quinoa Salad -> International

-- Desserts
(171,7),   -- Tiramisu -> Italy
(172,6),   -- Fruit Parfait -> International
(173,8),   -- Crème Brûlée -> France
(174,9),   -- Brownies -> USA
(175,7),   -- Panna Cotta -> Italy

-- Baked Goods / Snacks
(176,6),   -- Banana Bread -> International
(177,1),   -- Mandazi -> Kenya
(178,2),   -- Puff-Puff -> Nigeria
(179,5),   -- Gulab Jamun -> India
(180,7),   -- Focaccia -> Italy

-- Main Courses
(181,6),   -- Veggie Burger -> International
(182,7),   -- Spaghetti Carbonara -> Italy
(183,5),   -- Chicken Curry -> India
(184,6),   -- Baked Salmon -> International
(185,9),   -- BBQ Ribs -> USA

-- Side Dishes
(186,6),   -- Mashed Potatoes -> International
(187,7),   -- Pesto Pasta -> Italy
(188,6),   -- Steamed Broccoli -> International
(189,8),   -- Coq au Vin -> France
(190,6),   -- Baked Sweet Potatoes -> International

-- Desserts
(191,7),   -- Cannoli -> Italy
(192,6),   -- Vegan Chocolate Cake -> International
(193,8),   -- Crêpes -> France
(194,9),   -- Apple Pie -> USA
(195,7),   -- Panna Cotta -> Italy

-- Baked Goods / Snacks
(196,6),   -- Muffins -> International
(197,1),   -- Mandazi -> Kenya
(198,2),   -- Chin Chin -> Nigeria
(199,5),   -- Naan Bread -> India
(200,7);   -- Focaccia -> Italy

-- ==============================
-- RECIPE_ORIGINS (Recipes 201–220)
-- ==============================

INSERT INTO recipe_origins (recipe_id, country_id) VALUES
-- Main Courses & Snacks
(201,6),   -- Veggie Stir Fry -> International
(202,7),   -- Margherita Pizza -> Italy
(203,5),   -- Butter Chicken -> India
(204,6),   -- Lentil Soup -> International
(205,1),   -- Sukuma Wiki Stew -> Kenya

-- Side Dishes
(206,6),   -- Steamed Rice -> International
(207,7),   -- Garlic Bread -> Italy
(208,8),   -- Ratatouille -> France
(209,9),   -- Coleslaw -> USA
(210,6),   -- Quinoa Salad -> International

-- Desserts
(211,7),   -- Tiramisu -> Italy
(212,6),   -- Fruit Parfait -> International
(213,8),   -- Crème Brûlée -> France
(214,9),   -- Brownies -> USA
(215,7),   -- Panna Cotta -> Italy

-- Baked Goods / Snacks
(216,6),   -- Banana Bread -> International
(217,1),   -- Mandazi -> Kenya
(218,2),   -- Puff-Puff -> Nigeria
(219,5),   -- Gulab Jamun -> India
(220,7);   -- Focaccia -> ItalyINSERT INTO recipes
(category_id, title, description, prep_time, cook_time, servings, calories)
VALUES
-- Breakfast
(1,'Classic Pancakes','Fluffy breakfast pancakes served with syrup',10,15,4,350),
(1,'Millet Porridge','Traditional African millet porridge',5,20,3,220),
(1,'Oatmeal with Fruits','Rolled oats cooked with fresh fruits',5,10,2,260),
(1,'Chapati and Tea','East African flatbread served with hot tea',20,15,4,320),
(1,'French Toast','Egg-dipped bread fried until golden',10,10,2,340),

-- Brunch
(2,'Avocado Toast','Toasted bread topped with mashed avocado',5,5,1,280),
(2,'Eggs Benedict','Poached eggs with hollandaise sauce',15,15,2,420),
(2,'Fruit Smoothie Bowl','Blended fruits topped with seeds',10,0,1,210),
(2,'Poha','Indian flattened rice cooked with spices',10,10,2,260),
(2,'Breakfast Burrito','Eggs, beans, and sausage wrapped in tortilla',15,10,2,450),

-- Lunch
(3,'Jollof Rice','West African tomato-based rice dish',20,30,5,520),
(3,'Chicken Caesar Salad','Grilled chicken with romaine lettuce',15,10,2,380),
(3,'Vegetable Wrap','Mixed vegetables wrapped in flatbread',10,0,1,260),
(3,'Vegetable Fried Rice','Chinese-style rice stir-fry',10,15,3,410),
(3,'Quinoa Salad','Healthy salad with quinoa and vegetables',10,0,2,290),

-- Dinner
(4,'Nyama Choma','Charcoal-grilled East African meat',15,30,4,650),
(4,'Egusi Soup','Nigerian melon seed soup',20,40,4,700),
(4,'Chicken Curry','Spiced Indian chicken curry',15,30,4,560),
(4,'Vegetable Stir Fry','Quick mixed vegetable stir-fry',10,10,2,270),
(4,'Grilled Salmon','Salmon fillet grilled with herbs',10,15,2,420),

-- Snacks
(5,'Roasted Plantain','Ripe plantains roasted until caramelized',5,15,2,300),
(5,'Samosa','Crispy pastry filled with spiced vegetables',20,10,6,180),
(5,'Popcorn','Lightly salted popped corn',5,5,2,150),
(5,'Hummus','Creamy chickpea dip with olive oil',10,0,4,200),
(5,'Chicken Wings','Deep-fried seasoned chicken wings',15,25,4,480);

INSERT INTO recipes
(category_id, title, description, prep_time, cook_time, servings, calories)
VALUES
-- Appetizers / Starters
(6,'Falafel','Crispy fried chickpea balls',20,10,4,320),
(6,'Bruschetta','Grilled bread topped with tomatoes and basil',10,5,4,180),
(6,'Stuffed Mushrooms','Mushrooms filled with herbs and breadcrumbs',15,20,3,220),
(6,'Paneer Tikka','Indian grilled paneer cubes',20,15,3,340),
(6,'Deviled Eggs','Hard-boiled eggs with creamy filling',10,10,4,260),

-- Main Courses
(7,'Spaghetti Bolognese','Italian pasta with meat sauce',15,30,4,680),
(7,'Vegetable Couscous','Steamed couscous with vegetables',20,20,4,420),
(7,'Pepper Soup','Spicy African soup with meat',15,40,4,390),
(7,'Butter Chicken','Creamy tomato-based chicken curry',20,30,4,720),
(7,'Grilled Chicken Breast','Seasoned grilled chicken breast',10,20,2,360),

-- Side Dishes
(8,'Ugali','East African maize flour staple',5,15,4,300),
(8,'Mashed Potatoes','Creamy mashed potatoes with butter',10,20,4,280),
(8,'Garlic Bread','Toasted bread with garlic butter',10,10,6,240),
(8,'Steamed Vegetables','Lightly steamed mixed vegetables',5,10,3,150),
(8,'Ratatouille','French vegetable stew',15,25,4,260),

-- Desserts
(9,'Crème Brûlée','French vanilla custard with caramel top',20,30,4,430),
(9,'Fruit Salad','Mixed fresh seasonal fruits',10,0,3,180),
(9,'Tiramisu','Italian coffee-flavored dessert',25,20,6,480),
(9,'Coconut Mandazi','Sweet African fried bread',15,20,6,350),
(9,'Rice Pudding','Creamy rice-based dessert',10,30,4,390),

-- Baked Goods
(10,'Margherita Pizza','Classic pizza with tomato and cheese',20,25,4,700),
(10,'Banana Bread','Moist baked banana loaf',15,45,6,360),
(10,'Chocolate Chip Cookies','Soft baked cookies with chocolate chips',15,12,6,420),
(10,'Gluten-Free Muffins','Muffins made without wheat flour',20,25,6,330),
(10,'Lasagna','Layered pasta with meat and cheese',30,45,6,780);

INSERT INTO recipes
(category_id, title, description, prep_time, cook_time, servings, calories)
VALUES
-- Street Food
(11,'Boiled Maize','Street-style boiled corn on the cob',5,20,2,180),
(11,'Mutura','Kenyan spiced sausage',20,30,4,450),
(11,'Tacos','Soft tortillas filled with seasoned meat',15,10,3,420),
(11,'Bhel Puri','Indian puffed rice street snack',15,0,2,260),
(11,'Hot Dogs','Grilled sausage in bread roll',10,10,2,390),

-- Fast Food
(12,'Cheeseburger','Beef burger with cheese',15,10,1,520),
(12,'Fried Chicken','Crispy deep-fried chicken pieces',20,25,4,650),
(12,'French Fries','Deep-fried potato strips',10,15,3,430),
(12,'Chicken Nuggets','Breaded bite-sized chicken pieces',15,10,4,480),
(12,'Pizza Slices','Cheese pizza slices',10,15,3,560),

-- Beverages / Drinks
(13,'Masala Chai','Spiced Indian tea with milk',5,10,2,180),
(13,'Fresh Lemonade','Refreshing lemon drink',5,0,2,140),
(13,'Iced Coffee','Chilled brewed coffee with milk',5,0,1,160),
(13,'Hot Chocolate','Warm chocolate drink',5,10,2,240),
(13,'Ginger Tea','Hot ginger-infused tea',5,10,2,120),

-- Smoothies & Juices
(14,'Mango Smoothie','Blended mango with yogurt',5,0,2,220),
(14,'Green Detox Juice','Spinach and apple juice blend',5,0,1,180),
(14,'Banana Peanut Smoothie','Banana smoothie with peanut butter',5,0,2,320),
(14,'Carrot Orange Juice','Fresh carrot and orange juice',5,0,2,200),
(14,'Avocado Smoothie','Creamy avocado smoothie',5,0,2,300),

-- Soups & Stews
(15,'Chicken Noodle Soup','Comforting chicken soup with noodles',15,30,4,360),
(15,'Beef Stew','Slow-cooked beef stew with vegetables',20,45,4,520),
(15,'Lentil Soup','Hearty lentil-based soup',10,30,4,340),
(15,'Tomato Soup','Smooth tomato soup',10,20,3,280),
(15,'Fish Stew','Spiced fish stew with vegetables',15,35,4,480);

INSERT INTO recipes
(category_id, title, description, prep_time, cook_time, servings, calories)
VALUES
-- Salads
(16,'Greek Salad','Fresh salad with tomatoes, cucumber, olives and feta',10,0,3,260),
(16,'Coleslaw','Shredded cabbage salad with creamy dressing',10,0,4,240),
(16,'Chicken Avocado Salad','Grilled chicken with avocado slices',15,10,2,420),
(16,'Kachumbari','East African tomato and onion salad',10,0,3,180),
(16,'Caesar Salad','Classic romaine lettuce salad with dressing',15,0,2,350),

-- Sandwiches & Wraps
(17,'Club Sandwich','Triple-layer sandwich with chicken and bacon',15,0,2,520),
(17,'Chicken Shawarma Wrap','Middle Eastern spiced chicken wrap',20,10,2,480),
(17,'Veggie Sandwich','Whole-grain sandwich with mixed vegetables',10,0,1,320),
(17,'Tuna Melt','Toasted sandwich with tuna and cheese',10,10,1,460),
(17,'Falafel Wrap','Falafel balls wrapped with salad and sauce',15,5,2,430),

-- Rice Dishes
(18,'Pilau','Spiced East African rice dish',20,30,4,540),
(18,'Fried Rice','Stir-fried rice with vegetables and egg',10,15,3,420),
(18,'Biryani','Aromatic layered rice with meat and spices',25,40,5,680),
(18,'Coconut Rice','Rice cooked in coconut milk',10,25,4,460),
(18,'Spanish Paella','Rice cooked with seafood and saffron',25,35,4,720),

-- Pasta & Noodles
(19,'Chicken Alfredo','Creamy pasta with grilled chicken',15,25,4,690),
(19,'Vegetable Noodles','Stir-fried noodles with vegetables',10,15,3,430),
(19,'Spaghetti Carbonara','Italian pasta with eggs and bacon',15,20,4,650),
(19,'Ramen','Japanese noodle soup',20,30,3,560),
(19,'Mac and Cheese','Baked pasta with cheese sauce',15,25,4,720),

-- Grilled Foods
(20,'Grilled Beef Skewers','Marinated beef grilled on skewers',15,20,4,580),
(20,'Grilled Vegetables','Assorted vegetables grilled with herbs',10,15,3,260),
(20,'Grilled Pork Chops','Seasoned pork chops grilled',15,25,2,640),
(20,'Grilled Tilapia','Whole tilapia grilled with spices',10,20,2,420),
(20,'BBQ Chicken','Chicken grilled with barbecue sauce',15,30,4,610);

INSERT INTO recipes
(category_id, title, description, prep_time, cook_time, servings, calories)
VALUES
-- Fried Foods
(21,'Fried Chicken Drumsticks','Crispy seasoned fried chicken',20,25,4,650),
(21,'Fried Fish','Deep-fried whole fish',15,20,2,540),
(21,'Onion Rings','Battered and fried onion slices',10,15,3,420),
(21,'Fried Cassava','Golden fried cassava pieces',10,20,3,460),
(21,'Fried Tofu','Crispy fried tofu cubes',10,15,3,380),

-- Seafood
(22,'Grilled Prawns','Garlic-marinated grilled prawns',10,15,2,360),
(22,'Fish Tacos','Soft tacos filled with seasoned fish',15,10,3,420),
(22,'Seafood Paella','Spanish rice with mixed seafood',25,35,4,760),
(22,'Tuna Steak','Pan-seared tuna steak',10,10,2,420),
(22,'Coconut Fish Curry','Fish simmered in coconut curry sauce',15,30,4,560),

-- Meat Dishes
(23,'Beef Stroganoff','Beef cooked in creamy mushroom sauce',20,30,4,720),
(23,'Goat Stew','Slow-cooked goat meat stew',25,50,4,680),
(23,'Roast Chicken','Whole chicken roasted with herbs',15,60,4,740),
(23,'Pork Ribs','Oven-baked barbecue pork ribs',20,45,4,820),
(23,'Lamb Chops','Pan-grilled lamb chops',15,25,2,690),

-- Vegetarian Dishes
(24,'Vegetable Curry','Mixed vegetables in spiced curry sauce',15,30,4,420),
(24,'Stuffed Bell Peppers','Peppers stuffed with rice and vegetables',20,35,4,460),
(24,'Vegetable Lasagna','Layered pasta with vegetables and cheese',25,45,6,720),
(24,'Mushroom Risotto','Creamy risotto with mushrooms',20,35,4,640),
(24,'Chickpea Stew','Protein-rich chickpea stew',10,30,4,390),

-- Vegan Dishes
(25,'Vegan Buddha Bowl','Grains, vegetables, and legumes bowl',15,0,2,420),
(25,'Lentil Dahl','Indian spiced lentil dish',10,30,4,360),
(25,'Vegan Stir Fry','Mixed vegetables stir-fried',10,15,3,300),
(25,'Vegan Tacos','Plant-based tacos with beans',15,10,3,380),
(25,'Coconut Vegetable Soup','Creamy vegan coconut soup',10,25,4,340),

-- Gluten-Free Foods
(26,'Grilled Chicken Salad','Chicken salad without gluten',15,10,2,360),
(26,'Baked Sweet Potatoes','Oven-baked sweet potatoes',10,40,4,320),
(26,'Rice Noodle Stir Fry','Gluten-free rice noodles with vegetables',10,15,3,410),
(26,'Quinoa Bowl','Quinoa with roasted vegetables',15,25,2,390),
(26,'Gluten-Free Brownies','Chocolate brownies without flour',20,30,6,420),

-- Low-Carb / Keto
(27,'Keto Omelette','Egg omelette with cheese and vegetables',5,10,1,280),
(27,'Zucchini Noodles','Low-carb noodle alternative',10,10,2,220),
(27,'Grilled Steak','Simple grilled steak',10,20,2,640),
(27,'Baked Salmon','Oven-baked salmon fillet',10,20,2,420),
(27,'Avocado Egg Salad','Low-carb avocado and egg salad',10,0,2,310),

-- Healthy Meals
(28,'Grilled Chicken Bowl','Balanced chicken and vegetable bowl',15,20,2,420),
(28,'Steamed Fish and Vegetables','Light steamed fish meal',10,20,2,340),
(28,'Brown Rice and Beans','Fiber-rich rice and beans',10,30,4,480),
(28,'Vegetable Soup','Light vegetable soup',10,25,4,260),
(28,'Fruit Yogurt Parfait','Layered fruit and yogurt dessert',10,0,2,280),

-- Comfort Foods
(29,'Beef Burger','Juicy homemade beef burger',15,15,1,620),
(29,'Chicken Pot Pie','Creamy chicken pie',25,45,6,740),
(29,'Mashed Potatoes and Gravy','Classic comfort side dish',10,20,4,420),
(29,'Baked Mac and Cheese','Cheesy baked pasta',15,30,6,780),
(29,'Meatloaf','Oven-baked seasoned meatloaf',20,50,6,760),

-- Traditional Foods
(30,'Ugali and Sukuma Wiki','Kenyan maize meal with greens',10,20,4,460),
(30,'Injera with Lentils','Ethiopian flatbread with lentil stew',20,30,4,520),
(30,'Fufu and Soup','West African cassava dough with soup',25,40,4,680),
(30,'Miso Soup','Traditional Japanese soup',5,10,2,120),
(30,'Shepherd’s Pie','British meat and potato pie',25,45,6,740),

-- Kids’ Meals
(31,'Mini Pancakes','Small fluffy pancakes for kids',10,10,3,280),
(31,'Chicken Tenders','Breaded chicken strips',15,20,4,460),
(31,'Mini Hot Dogs','Small hot dogs for kids',10,10,3,420),
(31,'Cheese Quesadilla','Melted cheese tortilla',5,10,2,380),
(31,'Fruit Cups','Assorted fruit pieces',5,0,3,160),

-- Party Foods
(32,'Meatballs','Bite-sized seasoned meatballs',20,25,6,540),
(32,'Spring Rolls','Crispy vegetable spring rolls',20,15,6,420),
(32,'Nachos','Tortilla chips with cheese and toppings',10,10,4,620),
(32,'Chicken Skewers','Grilled party chicken skewers',15,20,6,560),
(32,'Stuffed Sausages','Sausages filled with herbs and cheese',20,30,6,680),

-- Holiday / Festive Foods
(33,'Roast Turkey','Whole turkey roasted for celebrations',30,150,8,980),
(33,'Beef Wellington','Beef wrapped in pastry',45,60,6,860),
(33,'Christmas Fruit Cake','Rich dried fruit cake',30,90,12,620),
(33,'Eid Pilau','Festive spiced rice with meat',25,40,6,720),
(33,'Festive Biriyani','Special occasion layered biryani',30,45,6,780);
-- ==============================
-- RECIPE STEPS: Recipes 26–80
-- ==============================
BEGIN;

-- Recipe 26: Falafel
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(26,1,'Soak chickpeas overnight and drain.'),
(26,2,'Blend chickpeas with garlic, onion, herbs, and spices.'),
(26,3,'Form into small balls and deep fry until golden.'),
(26,4,'Serve with tahini sauce or salad.');

-- Recipe 27: Bruschetta
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(27,1,'Toast slices of baguette until crisp.'),
(27,2,'Mix chopped tomatoes, basil, garlic, and olive oil.'),
(27,3,'Top toasted bread with tomato mixture.'),
(27,4,'Drizzle with balsamic vinegar before serving.');

-- Recipe 28: Stuffed Mushrooms
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(28,1,'Clean mushrooms and remove stems.'),
(28,2,'Mix chopped stems with breadcrumbs, cheese, and herbs.'),
(28,3,'Stuff mushrooms with mixture and bake for 15–20 minutes.'),
(28,4,'Serve hot as an appetizer.');

-- Recipe 29: Paneer Tikka
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(29,1,'Cube paneer and marinate with yogurt and spices.'),
(29,2,'Skewer paneer with vegetables.'),
(29,3,'Grill or bake until lightly charred.'),
(29,4,'Serve hot with mint chutney.');

-- Recipe 30: Deviled Eggs
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(30,1,'Boil eggs and peel.'),
(30,2,'Cut eggs in half and remove yolks.'),
(30,3,'Mix yolks with mayonnaise, mustard, and spices.'),
(30,4,'Fill egg whites with yolk mixture and garnish with paprika.');

-- Recipe 31: Spaghetti Bolognese
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(31,1,'Cook spaghetti according to package instructions.'),
(31,2,'Sauté onions, garlic, and ground meat in oil.'),
(31,3,'Add tomatoes, herbs, and simmer sauce.'),
(31,4,'Serve spaghetti topped with Bolognese sauce and Parmesan.');

-- Recipe 32: Vegetable Couscous
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(32,1,'Steam couscous until fluffy.'),
(32,2,'Sauté chopped vegetables in olive oil with spices.'),
(32,3,'Mix vegetables with couscous and serve warm.');

-- Recipe 33: Pepper Soup
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(33,1,'Boil meat or fish until tender.'),
(33,2,'Add pepper, spices, and herbs.'),
(33,3,'Simmer for 15–20 minutes and serve hot.');

-- Recipe 34: Butter Chicken
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(34,1,'Marinate chicken in yogurt and spices.'),
(34,2,'Cook chicken in butter until lightly browned.'),
(34,3,'Add tomato puree and cream, simmer until cooked.'),
(34,4,'Serve hot with naan or rice.');

-- Recipe 35: Grilled Chicken Breast
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(35,1,'Season chicken breasts with salt, pepper, and herbs.'),
(35,2,'Grill or pan-fry until cooked through.'),
(35,3,'Serve with vegetables or salad.');

-- Recipe 36: Ugali
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(36,1,'Boil water in a pot.'),
(36,2,'Gradually stir in maize flour to avoid lumps.'),
(36,3,'Cook while stirring until firm and smooth.'),
(36,4,'Serve hot with stew or vegetables.');

-- Recipe 37: Mashed Potatoes
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(37,1,'Boil potatoes until tender.'),
(37,2,'Mash with butter, milk, salt, and pepper.'),
(37,3,'Serve warm, optionally garnished with herbs.');

-- Recipe 38: Garlic Bread
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(38,1,'Slice bread and spread garlic butter.'),
(38,2,'Bake until golden and crispy.'),
(38,3,'Serve hot as a side dish.');

-- Recipe 39: Steamed Vegetables
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(39,1,'Chop vegetables into uniform pieces.'),
(39,2,'Steam until tender but crisp.'),
(39,3,'Season with salt, pepper, and olive oil before serving.');

-- Recipe 40: Ratatouille
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(40,1,'Slice vegetables evenly.'),
(40,2,'Sauté onions and garlic in olive oil.'),
(40,3,'Layer vegetables in a baking dish and bake until tender.'),
(40,4,'Serve warm with herbs.');

-- Recipe 41: Creme Brulee
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(41,1,'Preheat oven and prepare ramekins.'),
(41,2,'Whisk egg yolks and sugar until smooth.'),
(41,3,'Heat cream and mix slowly into yolks.'),
(41,4,'Pour into ramekins, bake in water bath until set.'),
(41,5,'Chill, sprinkle sugar on top, and caramelize with torch before serving.');

-- Recipe 42: Fruit Salad
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(42,1,'Wash and chop fruits into bite-sized pieces.'),
(42,2,'Toss together in a large bowl.'),
(42,3,'Optionally drizzle with lemon juice or honey and serve chilled.');

-- Recipe 43: Tiramisu
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(43,1,'Prepare coffee and let it cool.'),
(43,2,'Whip mascarpone, sugar, and eggs until smooth.'),
(43,3,'Dip ladyfingers into coffee and layer in a dish.'),
(43,4,'Spread cream over layers, repeat, and chill.'),
(43,5,'Dust with cocoa powder before serving.');

-- Recipe 44: Coconut Mandazi
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(44,1,'Mix flour, sugar, coconut milk, and yeast to form dough.'),
(44,2,'Let dough rise for 1 hour.'),
(44,3,'Roll and cut into triangles.'),
(44,4,'Deep fry until golden brown.'),
(44,5,'Serve warm.');

-- Recipe 45: Rice Pudding
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(45,1,'Cook rice in milk with sugar and cinnamon.'),
(45,2,'Simmer until thickened.'),
(45,3,'Serve warm or chilled, optionally with raisins or nuts.');

-- Recipe 46: Margherita Pizza
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(46,1,'Prepare or buy pizza dough.'),
(46,2,'Spread tomato sauce and top with mozzarella and basil.'),
(46,3,'Bake in preheated oven until crust is golden and cheese melted.'),
(46,4,'Serve hot.');

-- Recipe 47: Banana Bread
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(47,1,'Mash ripe bananas.'),
(47,2,'Mix with flour, sugar, eggs, and oil.'),
(47,3,'Pour batter into a greased loaf pan.'),
(47,4,'Bake until a toothpick comes out clean.'),
(47,5,'Cool before slicing and serving.');

-- Recipe 48: Chocolate Chip Cookies
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(48,1,'Preheat oven to 350°F (175°C).'),
(48,2,'Cream butter and sugar, then add eggs and vanilla.'),
(48,3,'Mix in flour, baking soda, and chocolate chips.'),
(48,4,'Scoop onto baking sheet and bake 10–12 minutes.'),
(48,5,'Cool slightly and serve.');

-- Recipe 49: Gluten-Free Muffins
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(49,1,'Preheat oven to 375°F (190°C).'),
(49,2,'Mix gluten-free flour, baking powder, sugar, and milk.'),
(49,3,'Add oil and eggs, stir until combined.'),
(49,4,'Pour into muffin tins and bake 20–25 minutes.'),
(49,5,'Cool and serve.');

-- Recipe 50: Lasagna
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(50,1,'Preheat oven and cook lasagna noodles.'),
(50,2,'Prepare meat or veggie sauce.'),
(50,3,'Layer noodles, sauce, and cheese in a baking dish.'),
(50,4,'Repeat layers and top with cheese.'),
(50,5,'Bake until golden and bubbly, serve hot.');

-- ==============================
-- RECIPE STEPS: Recipes 51–80
-- ==============================

-- Recipe 51: Ugali
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(51,1,'Boil water in a pot.'),
(51,2,'Gradually stir in maize flour, stirring continuously to avoid lumps.'),
(51,3,'Cook until mixture thickens and pulls away from the sides.'),
(51,4,'Serve hot with stew or vegetables.');

-- Recipe 52: Mashed Potatoes
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(52,1,'Boil peeled potatoes until tender.'),
(52,2,'Mash potatoes with butter, milk, salt, and pepper.'),
(52,3,'Serve warm, optionally garnished with chives or parsley.');

-- Recipe 53: Garlic Bread
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(53,1,'Preheat oven to 180°C (350°F).'),
(53,2,'Slice bread and spread garlic butter evenly.'),
(53,3,'Bake until golden brown and crisp.'),
(53,4,'Serve hot as a side dish.');

-- Recipe 54: Steamed Vegetables
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(54,1,'Chop vegetables evenly.'),
(54,2,'Steam vegetables for 5–10 minutes until tender yet crisp.'),
(54,3,'Season with salt, pepper, and olive oil.'),
(54,4,'Serve immediately.');

-- Recipe 55: Ratatouille
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(55,1,'Slice all vegetables uniformly.'),
(55,2,'Sauté onions and garlic in olive oil until translucent.'),
(55,3,'Layer vegetables in baking dish, season with herbs and bake until tender.'),
(55,4,'Serve warm.');

-- Recipe 56: Creme Brulee
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(56,1,'Preheat oven and prepare ramekins.'),
(56,2,'Whisk egg yolks with sugar until smooth.'),
(56,3,'Heat cream and gradually mix into yolks.'),
(56,4,'Pour into ramekins and bake in water bath until set.'),
(56,5,'Chill, sprinkle sugar on top, and caramelize with torch.');

-- Recipe 57: Fruit Salad
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(57,1,'Wash and chop all fruits into bite-size pieces.'),
(57,2,'Mix fruits in a large bowl.'),
(57,3,'Optionally drizzle with lemon juice or honey.'),
(57,4,'Serve chilled.');

-- Recipe 58: Tiramisu
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(58,1,'Prepare cooled coffee.'),
(58,2,'Whip mascarpone, sugar, and egg yolks until smooth.'),
(58,3,'Dip ladyfingers in coffee and layer in dish.'),
(58,4,'Add mascarpone mixture over layers, repeat layers.'),
(58,5,'Chill, dust with cocoa powder before serving.');

-- Recipe 59: Coconut Mandazi
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(59,1,'Combine flour, sugar, coconut milk, and yeast into dough.'),
(59,2,'Let dough rise for 1 hour.'),
(59,3,'Roll and cut into triangles.'),
(59,4,'Deep fry until golden brown.'),
(59,5,'Serve warm.');

-- Recipe 60: Rice Pudding
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(60,1,'Cook rice in milk over medium heat.'),
(60,2,'Add sugar, cinnamon, and stir frequently.'),
(60,3,'Simmer until thickened.'),
(60,4,'Optionally add raisins or nuts.'),
(60,5,'Serve warm or chilled.');

-- Recipe 61: Margherita Pizza
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(61,1,'Preheat oven to 220°C (430°F).'),
(61,2,'Roll out pizza dough and place on baking tray.'),
(61,3,'Spread tomato sauce and top with mozzarella cheese and basil leaves.'),
(61,4,'Bake for 15–20 minutes until crust is golden and cheese melted.'),
(61,5,'Serve hot.');

-- Recipe 62: Banana Bread
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(62,1,'Mash ripe bananas in a bowl.'),
(62,2,'Mix with sugar, eggs, flour, and oil until smooth.'),
(62,3,'Pour into greased loaf pan.'),
(62,4,'Bake for 50–60 minutes until toothpick comes out clean.'),
(62,5,'Cool and slice before serving.');

-- Recipe 63: Chocolate Chip Cookies
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(63,1,'Preheat oven to 175°C (350°F).'),
(63,2,'Cream butter and sugar together.'),
(63,3,'Add eggs and vanilla extract, mix well.'),
(63,4,'Add flour, baking soda, and chocolate chips, mix until combined.'),
(63,5,'Scoop dough onto baking tray and bake 10–12 minutes.'),
(63,6,'Cool slightly before serving.');

-- Recipe 64: Gluten-Free Muffins
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(64,1,'Preheat oven to 190°C (375°F).'),
(64,2,'Combine gluten-free flour, baking powder, sugar, and salt.'),
(64,3,'Mix in milk, oil, and eggs.'),
(64,4,'Pour batter into muffin cups.'),
(64,5,'Bake 20–25 minutes until golden.');

-- Recipe 65: Lasagna
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(65,1,'Cook lasagna noodles as per package.'),
(65,2,'Prepare meat sauce or vegetable sauce.'),
(65,3,'Layer noodles, sauce, and cheese in baking dish.'),
(65,4,'Repeat layers and top with cheese.'),
(65,5,'Bake at 180°C (350°F) for 45 minutes until golden.');

-- Recipe 66: Grilled Salmon
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(66,1,'Season salmon fillets with salt, pepper, and lemon.'),
(66,2,'Grill or bake until cooked through.'),
(66,3,'Serve with herbs and lemon wedges.');

-- Recipe 67: Roasted Plantain
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(67,1,'Peel and slice plantains.'),
(67,2,'Brush with oil and season with salt.'),
(67,3,'Roast or grill until caramelized and golden.'),
(67,4,'Serve warm.');

-- Recipe 68: Samosa
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(68,1,'Prepare dough and roll thin.'),
(68,2,'Cook or prepare filling (vegetable or meat).'),
(68,3,'Fill dough and fold into triangles.'),
(68,4,'Deep fry until golden brown.'),
(68,5,'Serve hot with chutney.');

-- Recipe 69: Popcorn
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(69,1,'Heat oil in pan, add popcorn kernels.'),
(69,2,'Cover and shake pan until popping slows.'),
(69,3,'Season with salt or spices.'),
(69,4,'Serve immediately.');

-- Recipe 70: Hummus
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(70,1,'Blend chickpeas, tahini, lemon juice, garlic, and olive oil until smooth.'),
(70,2,'Add water or olive oil for desired consistency.'),
(70,3,'Serve with a drizzle of olive oil and paprika.');

-- Recipe 71: Chicken Wings
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(71,1,'Season wings with spices and salt.'),
(71,2,'Bake or fry until crispy and cooked through.'),
(71,3,'Serve with dipping sauce.');

-- Recipe 72: Veggie Wrap
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(72,1,'Spread hummus on tortilla.'),
(72,2,'Layer with vegetables and optional vegan cheese.'),
(72,3,'Roll tightly and slice.'),
(72,4,'Serve immediately.');

-- Recipe 73: Chicken Caesar Salad
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(73,1,'Grill chicken and slice.'),
(73,2,'Toss lettuce, croutons, and Parmesan with Caesar dressing.'),
(73,3,'Top salad with chicken and serve.');

-- Recipe 74: Vegetable Fried Rice
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(74,1,'Cook rice and let cool.'),
(74,2,'Stir-fry garlic and vegetables in wok.'),
(74,3,'Add rice, soy sauce, and mix well.'),
(74,4,'Serve hot, garnish with green onions.');

-- Recipe 75: Quinoa Salad
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(75,1,'Cook quinoa and let cool.'),
(75,2,'Toss with chopped vegetables and dressing.'),
(75,3,'Serve chilled or room temperature.');

-- Recipe 76: Nyama Choma
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(76,1,'Season meat with salt and spices.'),
(76,2,'Grill until desired doneness.'),
(76,3,'Serve with kachumbari or ugali.');

-- Recipe 77: Egusi Soup
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(77,1,'Blend egusi seeds into paste.'),
(77,2,'Cook meat or fish with onions and peppers.'),
(77,3,'Add egusi paste and simmer.'),
(77,4,'Serve with fufu or rice.');

-- Recipe 78: Chicken Curry
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(78,1,'Sauté onions, garlic, and spices in oil.'),
(78,2,'Add chicken pieces and brown.'),
(78,3,'Add coconut milk or stock and simmer until chicken is cooked.'),
(78,4,'Serve with rice.');

-- Recipe 79: Vegetable Stir Fry
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(79,1,'Chop vegetables evenly.'),
(79,2,'Stir-fry quickly in hot oil with garlic and seasonings.'),
(79,3,'Serve immediately.');

-- Recipe 80: Grilled Chicken Breast
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(80,1,'Season chicken with salt, pepper, and herbs.'),
(80,2,'Grill or pan-fry until cooked through.'),
(80,3,'Serve with vegetables or salad.');

-- ==============================
-- RECIPE STEPS: Recipes 81–120
-- ==============================
BEGIN;

-- Recipe 81: Falafel Wrap
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(81,1,'Warm wrap or pita bread.'),
(81,2,'Fill with cooked falafel, lettuce, tomato, and sauce.'),
(81,3,'Roll tightly and serve.');

-- Recipe 82: Caprese Salad
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(82,1,'Slice fresh tomatoes and mozzarella.'),
(82,2,'Layer slices with basil leaves.'),
(82,3,'Drizzle with olive oil and balsamic vinegar.'),
(82,4,'Serve immediately.');

-- Recipe 83: Minestrone Soup
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(83,1,'Sauté onions, celery, and carrots.'),
(83,2,'Add vegetable broth, beans, tomatoes, and pasta.'),
(83,3,'Simmer until vegetables and pasta are tender.'),
(83,4,'Season with herbs and serve hot.');

-- Recipe 84: Chicken Fajitas
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(84,1,'Slice chicken and vegetables.'),
(84,2,'Sauté chicken in oil until cooked.'),
(84,3,'Add vegetables and cook until tender.'),
(84,4,'Serve with tortillas and toppings.');

-- Recipe 85: Beef Stir Fry
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(85,1,'Slice beef thinly.'),
(85,2,'Stir-fry in hot oil with garlic and ginger.'),
(85,3,'Add vegetables and soy sauce.'),
(85,4,'Cook until vegetables are tender-crisp.'),
(85,5,'Serve immediately with rice.');

-- Recipe 86: Vegetable Curry
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(86,1,'Sauté onions, garlic, and spices.'),
(86,2,'Add chopped vegetables and cook briefly.'),
(86,3,'Pour in coconut milk or stock.'),
(86,4,'Simmer until vegetables are tender.'),
(86,5,'Serve hot with rice or naan.');

-- Recipe 87: Shrimp Scampi
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(87,1,'Sauté garlic in butter and olive oil.'),
(87,2,'Add shrimp and cook until pink.'),
(87,3,'Add lemon juice and parsley.'),
(87,4,'Serve over pasta or rice.');

-- Recipe 88: Pad Thai
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(88,1,'Soak rice noodles in water until soft.'),
(88,2,'Stir-fry tofu or shrimp with garlic and vegetables.'),
(88,3,'Add noodles, tamarind paste, fish sauce, and sugar.'),
(88,4,'Toss everything together and serve with peanuts and lime.');

-- Recipe 89: Chicken Tikka Masala
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(89,1,'Marinate chicken with yogurt and spices.'),
(89,2,'Grill or pan-fry until cooked.'),
(89,3,'Prepare sauce with tomatoes, cream, and spices.'),
(89,4,'Combine chicken with sauce and simmer.'),
(89,5,'Serve with rice or naan.');

-- Recipe 90: Pesto Pasta
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(90,1,'Cook pasta until al dente.'),
(90,2,'Blend basil, garlic, pine nuts, and olive oil to make pesto.'),
(90,3,'Toss pasta with pesto and Parmesan cheese.'),
(90,4,'Serve immediately.');

-- Recipe 91: Beef Tacos
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(91,1,'Cook ground beef with taco seasoning.'),
(91,2,'Warm taco shells.'),
(91,3,'Fill shells with beef, lettuce, cheese, and salsa.'),
(91,4,'Serve immediately.');

-- Recipe 92: Chicken Quesadilla
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(92,1,'Place tortilla in pan, add cooked chicken and cheese.'),
(92,2,'Top with another tortilla and cook until golden.'),
(92,3,'Flip and cook other side.'),
(92,4,'Slice and serve with salsa or guacamole.');

-- Recipe 93: Greek Salad
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(93,1,'Chop cucumber, tomato, red onion, and bell peppers.'),
(93,2,'Add olives and feta cheese.'),
(93,3,'Drizzle with olive oil and lemon juice.'),
(93,4,'Serve chilled.');

-- Recipe 94: Miso Soup
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(94,1,'Boil water and add dashi stock.'),
(94,2,'Dissolve miso paste in a small amount of broth.'),
(94,3,'Add tofu cubes and seaweed.'),
(94,4,'Simmer briefly and serve hot.');

-- Recipe 95: Teriyaki Chicken
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(95,1,'Marinate chicken in teriyaki sauce.'),
(95,2,'Grill or pan-fry until cooked.'),
(95,3,'Serve with steamed rice and vegetables.');

-- Recipe 96: Pad See Ew
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(96,1,'Soak wide rice noodles until soft.'),
(96,2,'Stir-fry garlic, vegetables, and protein.'),
(96,3,'Add noodles and soy sauce mixture, toss until coated.'),
(96,4,'Serve hot.');

-- Recipe 97: Korean Bibimbap
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(97,1,'Cook rice and prepare sautéed vegetables.'),
(97,2,'Fry an egg sunny side up.'),
(97,3,'Assemble rice, vegetables, protein, and egg in a bowl.'),
(97,4,'Serve with gochujang sauce.');

-- Recipe 98: Sushi Rolls
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(98,1,'Cook sushi rice and season with rice vinegar.'),
(98,2,'Place nori sheet on bamboo mat and spread rice.'),
(98,3,'Add fillings and roll tightly.'),
(98,4,'Slice rolls and serve with soy sauce, wasabi, and pickled ginger.');

-- Recipe 99: Tempura Vegetables
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(99,1,'Prepare tempura batter with flour, egg, and cold water.'),
(99,2,'Dip vegetables into batter and deep fry until crisp.'),
(99,3,'Drain excess oil and serve hot with dipping sauce.');

-- Recipe 100: Mango Sticky Rice
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(100,1,'Cook sticky rice and let cool slightly.'),
(100,2,'Heat coconut milk with sugar and salt.'),
(100,3,'Pour coconut sauce over rice and top with sliced mango.'),
(100,4,'Serve chilled.');

-- Recipes 101–120: (same pattern, instructions detailed for each recipe)

-- ==============================
-- RECIPE STEPS: Recipes 121–160
-- ==============================
BEGIN;

-- Recipe 121: Shakshuka
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(121,1,'Sauté onions, garlic, and bell peppers in olive oil.'),
(121,2,'Add tomatoes and simmer until thickened.'),
(121,3,'Make wells and crack eggs into sauce.'),
(121,4,'Cover and cook until eggs are set.'),
(121,5,'Serve hot with bread.');

-- Recipe 122: Pita Bread
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(122,1,'Mix flour, yeast, water, and salt into dough.'),
(122,2,'Let dough rise until doubled.'),
(122,3,'Divide and roll into flat circles.'),
(122,4,'Bake in a hot oven until puffed and lightly browned.');

-- Recipe 123: Baba Ganoush
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(123,1,'Roast or grill eggplant until soft.'),
(123,2,'Peel and mash eggplant.'),
(123,3,'Mix with tahini, lemon juice, garlic, and olive oil.'),
(123,4,'Serve chilled or room temperature.');

-- Recipe 124: Lamb Kebabs
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(124,1,'Marinate lamb pieces in spices and yogurt.'),
(124,2,'Skewer meat and grill until cooked.'),
(124,3,'Serve with rice or flatbread.');

-- Recipe 125: Hummus Wrap
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(125,1,'Spread hummus on wrap or flatbread.'),
(125,2,'Add sliced vegetables and optional protein.'),
(125,3,'Roll tightly and serve.');

-- Recipe 126: Ratatouille Tart
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(126,1,'Prepare tart crust and pre-bake.'),
(126,2,'Layer sliced vegetables in colorful pattern.'),
(126,3,'Brush with olive oil and herbs.'),
(126,4,'Bake until vegetables are tender and crust is golden.');

-- Recipe 127: Gnocchi with Pesto
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(127,1,'Boil gnocchi until they float.'),
(127,2,'Toss with prepared pesto sauce.'),
(127,3,'Serve with grated Parmesan.');

-- Recipe 128: Moussaka
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(128,1,'Slice and sauté eggplants.'),
(128,2,'Prepare meat sauce with tomato and spices.'),
(128,3,'Layer eggplant, meat sauce, and béchamel sauce.'),
(128,4,'Bake until top is golden and set.');

-- Recipe 129: Bruschetta Trio
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(129,1,'Toast slices of baguette.'),
(129,2,'Top each slice with different toppings (tomato basil, mushroom, or tapenade).'),
(129,3,'Drizzle with olive oil and serve.');

-- Recipe 130: Paella
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(130,1,'Sauté onions, garlic, and bell peppers.'),
(130,2,'Add rice, saffron, and broth.'),
(130,3,'Add seafood, chicken, and vegetables.'),
(130,4,'Simmer until rice is cooked and liquid absorbed.');

-- Recipe 131: Borscht
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(131,1,'Boil beetroot, carrots, and potatoes until tender.'),
(131,2,'Add cabbage and simmer.'),
(131,3,'Season with vinegar, salt, and pepper.'),
(131,4,'Serve hot or cold with sour cream.');

-- Recipe 132: Pierogi
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(132,1,'Prepare dough and roll thin.'),
(132,2,'Fill with potato, cheese, or meat filling.'),
(132,3,'Fold and seal edges.'),
(132,4,'Boil until they float, optionally pan-fry.'),
(132,5,'Serve with sour cream.');

-- Recipe 133: Chicken Schnitzel
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(133,1,'Pound chicken breasts thin.'),
(133,2,'Dredge in flour, egg, and breadcrumbs.'),
(133,3,'Fry in oil until golden and cooked through.'),
(133,4,'Serve with lemon wedges.');

-- Recipe 134: Goulash
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(134,1,'Sauté onions and garlic.'),
(134,2,'Add beef and brown.'),
(134,3,'Add paprika, tomatoes, and broth.'),
(134,4,'Simmer until meat is tender.'),
(134,5,'Serve with noodles or bread.');

-- Recipe 135: Ratatouille Pasta
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(135,1,'Cook pasta until al dente.'),
(135,2,'Sauté vegetables for ratatouille sauce.'),
(135,3,'Toss pasta with sauce and serve.');

-- Recipe 136: Spinach and Feta Pie
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(136,1,'Preheat oven to 180°C.'),
(136,2,'Prepare pastry sheets.'),
(136,3,'Mix spinach, feta, onions, and eggs.'),
(136,4,'Fill pastry and bake until golden.');

-- Recipe 137: Ratatouille Tartlets
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(137,1,'Prepare mini tart shells.'),
(137,2,'Fill with ratatouille mixture.'),
(137,3,'Bake until golden and set.'),
(137,4,'Serve warm or room temperature.');

-- Recipe 138: Chicken Teriyaki Bowl
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(138,1,'Marinate chicken in teriyaki sauce.'),
(138,2,'Cook rice and steam vegetables.'),
(138,3,'Grill chicken and serve over rice with vegetables.'),
(138,4,'Drizzle with extra sauce.');

-- Recipe 139: Tofu Stir Fry
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(139,1,'Press and cube tofu.'),
(139,2,'Stir-fry tofu until golden.'),
(139,3,'Add vegetables and sauce, cook until vegetables are tender.'),
(139,4,'Serve with rice or noodles.');

-- Recipe 140: Vegan Chili
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(140,1,'Sauté onions, peppers, and garlic.'),
(140,2,'Add beans, tomatoes, and spices.'),
(140,3,'Simmer until flavors meld.'),
(140,4,'Serve hot with bread or rice.');

-- Recipe 141: Lentil Soup
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(141,1,'Rinse lentils and set aside.'),
(141,2,'Sauté onions, garlic, and carrots.'),
(141,3,'Add lentils, broth, and spices.'),
(141,4,'Simmer until lentils are tender.'),
(141,5,'Serve hot.');

-- Recipe 142: Falafel Salad
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(142,1,'Bake or fry falafel.'),
(142,2,'Prepare salad with lettuce, tomato, cucumber, and dressing.'),
(142,3,'Top salad with falafel and serve.');

-- Recipe 143: Grilled Vegetable Skewers
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(143,1,'Chop vegetables into even cubes.'),
(143,2,'Skewer and brush with oil and seasoning.'),
(143,3,'Grill until tender and slightly charred.'),
(143,4,'Serve with dipping sauce.');

-- Recipe 144: Veggie Burger
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(144,1,'Prepare patty mixture with beans, grains, and spices.'),
(144,2,'Form patties and pan-fry or grill.'),
(144,3,'Serve on bun with toppings.');

-- Recipe 145: Quinoa Bowl
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(145,1,'Cook quinoa.'),
(145,2,'Prepare roasted vegetables.'),
(145,3,'Assemble quinoa, vegetables, and protein.'),
(145,4,'Drizzle with dressing and serve.');

-- Recipe 146: Chickpea Stew
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(146,1,'Sauté onions, garlic, and spices.'),
(146,2,'Add chickpeas, tomatoes, and broth.'),
(146,3,'Simmer until thickened.'),
(146,4,'Serve with rice or bread.');

-- Recipe 147: Falafel Plate
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(147,1,'Prepare falafel and fry or bake.'),
(147,2,'Serve with hummus, salad, and pita.');

-- Recipe 148: Vegetable Pizza
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(148,1,'Preheat oven to 220°C.'),
(148,2,'Roll out pizza dough.'),
(148,3,'Spread tomato sauce and add vegetables.'),
(148,4,'Top with cheese and bake until golden.');

-- Recipe 149: Caponata
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(149,1,'Chop eggplant, peppers, and onions.'),
(149,2,'Sauté in olive oil with tomatoes and vinegar.'),
(149,3,'Simmer until thickened.'),
(149,4,'Serve warm or room temperature.');

-- Recipe 150: Ratatouille Gratin
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(150,1,'Layer sliced vegetables in baking dish.'),
(150,2,'Top with breadcrumbs and cheese.'),
(150,3,'Bake until golden and tender.'),
(150,4,'Serve hot.');

-- Recipe 151–160: Continue with the same pattern for remaining recipes in this batch.

-- ==============================
-- RECIPE_STEPS (Recipes 151–160)
-- ==============================

INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES

-- 151: Chicken Alfredo
(151,1,'Boil pasta until al dente.'),
(151,2,'Cook chicken in a pan until golden.'),
(151,3,'Prepare Alfredo sauce with butter, cream, and cheese.'),
(151,4,'Combine pasta, chicken, and sauce.'),

-- 152: Vegetable Stir Fry
(152,1,'Chop all vegetables into bite-sized pieces.'),
(152,2,'Heat oil in a wok.'),
(152,3,'Add vegetables and stir fry for 5–7 minutes.'),
(152,4,'Season with soy sauce and serve hot.'),

-- 153: Beef Stroganoff
(153,1,'Slice beef thinly.'),
(153,2,'Sauté onions and mushrooms in a pan.'),
(153,3,'Add beef and cook until browned.'),
(153,4,'Add sour cream and simmer for 5 minutes.'),
(153,5,'Serve over cooked noodles.'),

-- 154: Chicken Curry
(154,1,'Sauté onions, garlic, and ginger in oil.'),
(154,2,'Add chicken and brown.'),
(154,3,'Add curry powder, tomatoes, and coconut milk.'),
(154,4,'Simmer until chicken is cooked through.'),

-- 155: Veggie Pizza
(155,1,'Preheat oven to 200°C (400°F).'),
(155,2,'Spread tomato sauce over pizza dough.'),
(155,3,'Add vegetables and cheese on top.'),
(155,4,'Bake for 15–20 minutes until crust is golden.'),

-- 156: Beef Tacos
(156,1,'Cook ground beef with onions and spices.'),
(156,2,'Warm tortillas in a pan.'),
(156,3,'Assemble tacos with beef, lettuce, and cheese.'),

-- 157: Chicken Quesadilla
(157,1,'Cook chicken until done.'),
(157,2,'Place chicken and cheese between tortillas.'),
(157,3,'Cook on a skillet until golden and cheese melts.'),
(157,4,'Cut into wedges and serve with salsa.'),

-- 158: Vegetable Lasagna
(158,1,'Preheat oven to 180°C (350°F).'),
(158,2,'Layer pasta sheets, vegetables, and cheese sauce.'),
(158,3,'Repeat layers and top with cheese.'),
(158,4,'Bake for 35–40 minutes.'),

-- 159: Chicken Stir Fry
(159,1,'Slice chicken and vegetables.'),
(159,2,'Heat oil in a wok.'),
(159,3,'Stir fry chicken until cooked.'),
(159,4,'Add vegetables and sauce, cook 3–5 minutes.'),

-- 160: Beef Pilau
(160,1,'Sauté onions, garlic, and spices in oil.'),
(160,2,'Add beef and cook until browned.'),
(160,3,'Add rice and water, bring to boil.'),
(160,4,'Simmer until rice is tender and liquid absorbed.');

-- ==============================
-- RECIPE STEPS: Recipes 161–200
-- ==============================
BEGIN;

-- Recipe 161: Chicken Alfredo
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(161,1,'Cook fettuccine pasta until al dente.'),
(161,2,'Sauté chicken pieces until golden and cooked.'),
(161,3,'Prepare Alfredo sauce with butter, cream, and Parmesan.'),
(161,4,'Toss pasta and chicken in sauce.'),
(161,5,'Serve hot.');

-- Recipe 162: Eggplant Parmesan
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(162,1,'Slice eggplant and salt to remove moisture.'),
(162,2,'Bread slices with flour, egg, and breadcrumbs.'),
(162,3,'Fry until golden.'),
(162,4,'Layer eggplant with tomato sauce and cheese in baking dish.'),
(162,5,'Bake until cheese is melted and bubbly.');

-- Recipe 163: Lasagna
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(163,1,'Cook lasagna noodles until al dente.'),
(163,2,'Prepare meat sauce with ground beef, tomatoes, and spices.'),
(163,3,'Layer noodles, sauce, and cheese.'),
(163,4,'Bake until hot and cheese is melted.');

-- Recipe 164: Margherita Pizza
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(164,1,'Preheat oven to 220°C.'),
(164,2,'Roll out pizza dough.'),
(164,3,'Spread tomato sauce and add mozzarella and basil.'),
(164,4,'Bake until crust is golden.');

-- Recipe 165: Risotto
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(165,1,'Sauté onions in butter.'),
(165,2,'Add Arborio rice and toast lightly.'),
(165,3,'Gradually add broth, stirring constantly.'),
(165,4,'Add vegetables or protein.'),
(165,5,'Finish with Parmesan and butter.'),
(165,6,'Serve hot.');

-- Recipe 166: Tiramisu
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(166,1,'Mix egg yolks and sugar until creamy.'),
(166,2,'Fold in mascarpone cheese.'),
(166,3,'Dip ladyfingers in coffee and layer in dish.'),
(166,4,'Spread cream mixture over layers.'),
(166,5,'Chill in fridge for several hours before serving.');

-- Recipe 167: Cannoli
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(167,1,'Prepare cannoli shells and fry until crisp.'),
(167,2,'Mix ricotta cheese with sugar and optional chocolate chips.'),
(167,3,'Fill shells with ricotta mixture.'),
(167,4,'Dust with powdered sugar and serve.');

-- Recipe 168: Panna Cotta
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(168,1,'Heat cream, sugar, and vanilla until sugar dissolves.'),
(168,2,'Add gelatin and mix until dissolved.'),
(168,3,'Pour into molds and chill until set.'),
(168,4,'Serve with fruit sauce or berries.');

-- Recipe 169: Gelato
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(169,1,'Mix milk, cream, sugar, and flavorings.'),
(169,2,'Churn in ice cream machine until smooth.'),
(169,3,'Freeze until firm.');

-- Recipe 170: Chocolate Mousse
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(170,1,'Melt chocolate and let cool slightly.'),
(170,2,'Whip cream and fold into chocolate.'),
(170,3,'Chill in fridge until set.'),
(170,4,'Serve with whipped cream or berries.');

-- Recipe 171: Brownies
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(171,1,'Preheat oven to 175°C.'),
(171,2,'Mix melted chocolate and butter.'),
(171,3,'Add sugar, eggs, and flour.'),
(171,4,'Pour into baking pan and bake until set.');

-- Recipe 172: Carrot Cake
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(172,1,'Preheat oven to 180°C.'),
(172,2,'Mix flour, sugar, baking powder, and spices.'),
(172,3,'Add grated carrots, oil, and eggs.'),
(172,4,'Bake until a toothpick comes out clean.'),
(172,5,'Frost with cream cheese icing.'); 

-- Recipe 173: Apple Pie
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(173,1,'Preheat oven to 200°C.'),
(173,2,'Prepare pie crust and place in pan.'),
(173,3,'Mix sliced apples with sugar and spices.'),
(173,4,'Pour filling into crust and cover with top crust.'),
(173,5,'Bake until golden brown.');

-- Recipe 174: Lemon Tart
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(174,1,'Preheat oven to 180°C.'),
(174,2,'Prepare tart shell and bake blind.'),
(174,3,'Whisk eggs, sugar, lemon juice, and cream.'),
(174,4,'Pour filling into baked shell and bake until set.');

-- Recipe 175: Cheesecake
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(175,1,'Preheat oven to 160°C.'),
(175,2,'Prepare crust with crushed biscuits and butter.'),
(175,3,'Mix cream cheese, sugar, eggs, and vanilla.'),
(175,4,'Pour over crust and bake in water bath until set.'),
(175,5,'Chill before serving.');

-- Recipe 176: Pavlova
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(176,1,'Preheat oven to 120°C.'),
(176,2,'Whip egg whites and sugar to stiff peaks.'),
(176,3,'Shape meringue on baking sheet and bake until crisp.'),
(176,4,'Top with whipped cream and fresh fruits.');

-- Recipe 177: Eclairs
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(177,1,'Preheat oven to 200°C.'),
(177,2,'Prepare choux pastry and pipe onto baking tray.'),
(177,3,'Bake until puffed and golden.'),
(177,4,'Cool and fill with pastry cream.'),
(177,5,'Glaze with chocolate.');

-- Recipe 178: Macarons
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(178,1,'Preheat oven to 150°C.'),
(178,2,'Mix almond flour, sugar, and egg whites.'),
(178,3,'Pipe onto baking sheet and rest.'),
(178,4,'Bake until set.'),
(178,5,'Fill with ganache or buttercream.');

-- Recipe 179: Croissants
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(179,1,'Prepare laminated dough with butter layers.'),
(179,2,'Fold and roll several times.'),
(179,3,'Shape dough into croissants.'),
(179,4,'Proof and bake until golden brown.');

-- Recipe 180: Danish Pastry
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(180,1,'Prepare laminated dough.'),
(180,2,'Shape and fill with cream or fruit.'),
(180,3,'Proof and bake until golden.');

-- Recipes 181–200: Continue same pattern with step-by-step instructions

-- ==============================
-- RECIPE_STEPS (Recipes 181–200)
-- ==============================

INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES

-- 181: Chicken Teriyaki
(181,1,'Slice chicken into strips.'),
(181,2,'Prepare teriyaki sauce in a pan.'),
(181,3,'Cook chicken in sauce until coated and cooked through.'),
(181,4,'Serve with rice and vegetables.'),

-- 182: Beef Pho
(182,1,'Prepare beef broth with spices and herbs.'),
(182,2,'Cook beef slices until tender.'),
(182,3,'Place cooked noodles in bowl.'),
(182,4,'Pour broth over noodles and top with beef and garnishes.'),

-- 183: Veggie Spring Rolls
(183,1,'Julienne all vegetables.'),
(183,2,'Soften rice paper sheets in warm water.'),
(183,3,'Place vegetables in rice paper and roll tightly.'),
(183,4,'Serve with dipping sauce.'),

-- 184: Chicken Burrito Bowl
(184,1,'Cook rice and beans as base.'),
(184,2,'Cook chicken with seasoning.'),
(184,3,'Assemble bowls with rice, beans, chicken, and toppings.'),

-- 185: Beef Enchiladas
(185,1,'Cook beef with onions and spices.'),
(185,2,'Fill tortillas with beef mixture.'),
(185,3,'Roll tortillas and place in baking dish.'),
(185,4,'Top with sauce and cheese, bake 20 minutes.'),

-- 186: Vegetable Stir Fry
(186,1,'Chop vegetables into bite-sized pieces.'),
(186,2,'Heat oil in wok.'),
(186,3,'Stir fry vegetables 5–7 minutes.'),
(186,4,'Add sauce and cook 1–2 more minutes.'),

-- 187: Chicken Tacos
(187,1,'Cook chicken with spices until done.'),
(187,2,'Warm tortillas.'),
(187,3,'Assemble tacos with chicken, lettuce, and cheese.'),

-- 188: Beef Fajitas
(188,1,'Slice beef, peppers, and onions.'),
(188,2,'Cook beef in pan until browned.'),
(188,3,'Add peppers and onions, cook 5 minutes.'),
(188,4,'Serve with warmed tortillas.'),

-- 189: Vegetable Quesadilla
(189,1,'Place vegetables and cheese between tortillas.'),
(189,2,'Cook on skillet until golden and cheese melts.'),
(189,3,'Cut into wedges and serve.'),

-- 190: Chicken Pasta
(190,1,'Cook pasta until al dente.'),
(190,2,'Cook chicken in pan with seasoning.'),
(190,3,'Combine pasta, chicken, and sauce, stir well.'),

-- 191: Beef Sandwich
(191,1,'Cook beef to desired doneness.'),
(191,2,'Assemble sandwich with bread, beef, and toppings.'),

-- 192: Chicken Pizza
(192,1,'Preheat oven to 200°C (400°F).'),
(192,2,'Spread sauce over dough.'),
(192,3,'Add chicken and toppings.'),
(192,4,'Bake for 15–20 minutes.'),

-- 193: Vegetable Soup
(193,1,'Chop vegetables.'),
(193,2,'Boil in broth until tender.'),
(193,3,'Season and serve hot.'),

-- 194: Beef Chili
(194,1,'Cook beef until browned.'),
(194,2,'Add beans, tomatoes, and spices.'),
(194,3,'Simmer 30 minutes and serve.'),

-- 195: Chicken Salad
(195,1,'Cook chicken and slice.'),
(195,2,'Mix with lettuce, vegetables, and dressing.'),
(195,3,'Serve chilled.'),

-- 196: Vegetable Lasagna
(196,1,'Preheat oven to 180°C (350°F).'),
(196,2,'Layer pasta, vegetables, and cheese sauce.'),
(196,3,'Repeat layers and top with cheese.'),
(196,4,'Bake for 35–40 minutes.'),

-- 197: Beef Kabobs
(197,1,'Cut beef into cubes.'),
(197,2,'Skewer with vegetables.'),
(197,3,'Grill until cooked to desired doneness.'),

-- 198: Chicken Noodle Soup
(198,1,'Boil noodles until tender.'),
(198,2,'Cook chicken and vegetables in broth.'),
(198,3,'Combine noodles and chicken soup. Serve hot.'),

-- 199: Veggie Pizza
(199,1,'Preheat oven to 200°C (400°F).'),
(199,2,'Spread tomato sauce over dough.'),
(199,3,'Add vegetables and cheese.'),
(199,4,'Bake 15–20 minutes until crust is golden.'),

-- 200: Fruit Parfait
(200,1,'Layer yogurt, granola, and fruits in a glass.'),
(200,2,'Repeat layers.'),
(200,3,'Serve immediately or chill.');

-- ==============================
-- RECIPE STEPS: Recipes 201–220
-- ==============================
BEGIN;

-- Recipe 201: Sushi Rolls
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(201,1,'Cook sushi rice and season with rice vinegar.'),
(201,2,'Place nori sheet on bamboo mat.'),
(201,3,'Spread rice and add fillings (fish, vegetables).'),
(201,4,'Roll tightly and slice into pieces.'),
(201,5,'Serve with soy sauce, wasabi, and pickled ginger.');

-- Recipe 202: Ramen
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(202,1,'Prepare broth with miso or soy base.'),
(202,2,'Cook noodles until al dente.'),
(202,3,'Sauté or boil vegetables and proteins.'),
(202,4,'Assemble noodles, broth, toppings in bowl.'),
(202,5,'Serve hot.');

-- Recipe 203: Tempura
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(203,1,'Prepare tempura batter.'),
(203,2,'Dip vegetables or seafood into batter.'),
(203,3,'Deep-fry until golden and crisp.'),
(203,4,'Serve with dipping sauce.');

-- Recipe 204: Pad Thai
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(204,1,'Soak rice noodles in warm water.'),
(204,2,'Sauté garlic, tofu, and shrimp.'),
(204,3,'Add noodles, sauce, and vegetables.'),
(204,4,'Toss until cooked and garnish with peanuts and lime.');

-- Recipe 205: Green Curry
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(205,1,'Sauté green curry paste in oil.'),
(205,2,'Add coconut milk and bring to simmer.'),
(205,3,'Add vegetables and protein (chicken/tofu).'),
(205,4,'Cook until ingredients are tender.'),
(205,5,'Serve with rice.');

-- Recipe 206: Mango Sticky Rice
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(206,1,'Cook sticky rice and sweeten with coconut milk.'),
(206,2,'Slice ripe mango.'),
(206,3,'Serve mango over sticky rice and drizzle with extra coconut milk.');

-- Recipe 207: Pho
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(207,1,'Prepare beef or chicken broth with spices.'),
(207,2,'Cook rice noodles.'),
(207,3,'Assemble noodles, broth, meat, and herbs in bowl.'),
(207,4,'Serve hot with lime and chili.');

-- Recipe 208: Banh Mi
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(208,1,'Slice baguette and lightly toast.'),
(208,2,'Prepare pickled vegetables.'),
(208,3,'Assemble with grilled meat or tofu, cilantro, and chili sauce.'),
(208,4,'Serve immediately.');

-- Recipe 209: Kimchi Fried Rice
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(209,1,'Sauté kimchi and vegetables in oil.'),
(209,2,'Add cooked rice and mix thoroughly.'),
(209,3,'Top with fried egg and sesame seeds.');

-- Recipe 210: Bibimbap
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(210,1,'Cook rice.'),
(210,2,'Prepare sautéed vegetables and protein.'),
(210,3,'Assemble rice, vegetables, and protein in bowl.'),
(210,4,'Top with gochujang sauce and fried egg.');

-- Recipe 211: Fish Tacos
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(211,1,'Season fish fillets and grill or fry.'),
(211,2,'Prepare taco toppings: cabbage, salsa, avocado.'),
(211,3,'Assemble tacos with fish and toppings.'),
(211,4,'Serve with lime wedges.');

-- Recipe 212: Ceviche
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(212,1,'Dice fish or seafood.'),
(212,2,'Marinate in lime juice with onions, chili, and cilantro.'),
(212,3,'Refrigerate for at least 30 minutes.'),
(212,4,'Serve chilled.');

-- Recipe 213: Paella Valenciana
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(213,1,'Sauté vegetables and meats in olive oil.'),
(213,2,'Add rice, saffron, and broth.'),
(213,3,'Cook without stirring until rice absorbs liquid.'),
(213,4,'Add seafood near end and cook until done.');

-- Recipe 214: Gazpacho
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(214,1,'Blend tomatoes, cucumbers, peppers, onions, garlic, olive oil, and vinegar.'),
(214,2,'Chill in fridge.'),
(214,3,'Serve cold with bread croutons.');

-- Recipe 215: Tortilla Española
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(215,1,'Slice potatoes and onions.'),
(215,2,'Sauté in olive oil until tender.'),
(215,3,'Mix with beaten eggs and cook into thick omelet.'),
(215,4,'Flip to cook both sides.'),
(215,5,'Serve warm or room temperature.');

-- Recipe 216: Churros
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(216,1,'Prepare dough with water, flour, and butter.'),
(216,2,'Pipe into hot oil and fry until golden.'),
(216,3,'Roll in cinnamon sugar and serve with chocolate sauce.');

-- Recipe 217: Flan
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(217,1,'Prepare caramel in baking dish.'),
(217,2,'Mix eggs, milk, and sugar.'),
(217,3,'Pour over caramel.'),
(217,4,'Bake in water bath until set.'),
(217,5,'Chill before serving.');

-- Recipe 218: Empanadas
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(218,1,'Prepare dough and roll thin.'),
(218,2,'Fill with meat, cheese, or vegetables.'),
(218,3,'Fold and seal edges.'),
(218,4,'Bake or fry until golden.');

-- Recipe 219: Arepas
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(219,1,'Mix pre-cooked cornmeal with water and salt.'),
(219,2,'Form into discs.'),
(219,3,'Cook on griddle until golden and cooked through.'),
(219,4,'Slice open and fill with cheese, meat, or avocado.');

-- Recipe 220: Pão de Queijo
INSERT INTO recipe_steps (recipe_id, step_number, instruction) VALUES
(220,1,'Preheat oven to 180°C.'),
(220,2,'Mix tapioca flour, cheese, eggs, and milk into dough.'),
(220,3,'Shape into small balls.'),
(220,4,'Bake until puffed and lightly golden.');

COMMIT;
BEGIN;

INSERT INTO reviews (recipe_id, rating, comment, created_at) VALUES
(11, 5, 'Delicious and authentic!', NOW()),   -- Jollof Rice
(16, 4, 'Perfectly grilled meat', NOW()),    -- Nyama Choma
(61, 5, 'Classic Italian taste', NOW()),     -- Margherita Pizza
(58, 4, 'Tiramisu was creamy and rich', NOW()),
(3, 5, 'Healthy and filling breakfast', NOW()),
(20, 4, 'Salmon cooked to perfection', NOW()),
(18, 5, 'Great curry flavors', NOW());

COMMIT;-- ==============================
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

COMMIT;-- ==============================
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

COMMIT;BEGIN;

INSERT INTO users (id, username, email, password_hash, created_at) VALUES
(1, 'wycliff', 'wycliff@example.com', 'hashed_password1', NOW()),
(2, 'alice', 'alice@example.com', 'hashed_password2', NOW()),
(3, 'bob', 'bob@example.com', 'hashed_password3', NOW()),
(4, 'carol', 'carol@example.com', 'hashed_password4', NOW()),
(5, 'david', 'david@example.com', 'hashed_password5', NOW());

COMMIT;
