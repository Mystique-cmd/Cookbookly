<?php include 'includes/header.php'; ?>

<main>
    <h2>Add New Recipe</h2>
    <form action="add_recipe.php" method="post" enctype="multipart/form-data">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required>

        <label for="description">Description:</label>
        <textarea id="description" name="description" required></textarea>

        <label for="category">Category:</label>
        <select id="category" name="category_id" required>
            <!-- Categories will be populated from the database -->
        </select>

        <label for="health_condition">Health Condition (optional):</label>
        <select id="health_condition" name="health_condition_id">
            <!-- Health conditions will be populated from the database -->
        </select>

        <label for="prep_time">Preparation Time:</label>
        <input type="text" id="prep_time" name="prep_time" required>

        <label for="cook_time">Cooking Time:</label>
        <input type="text" id="cook_time" name="cook_time" required>

        <label for="servings">Servings:</label>
        <input type="number" id="servings" name="servings" required>

        <label for="recipe_image">Recipe Image:</label>
        <input type="file" id="recipe_image" name="recipe_image" required>

        <label for="ingredients">Ingredients (one per line):</label>
        <textarea id="ingredients" name="ingredients" required></textarea>

        <label for="instructions">Instructions (one step per line):</label>
        <textarea id="instructions" name="instructions" required></textarea>

        <button type="submit">Add Recipe</button>
    </form>
</main>

<?php include 'includes/footer.php'; ?>
