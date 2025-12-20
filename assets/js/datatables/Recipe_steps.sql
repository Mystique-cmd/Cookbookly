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