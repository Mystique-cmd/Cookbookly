INSERT INTO recipes
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
