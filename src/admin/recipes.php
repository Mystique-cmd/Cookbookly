<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true || $_SESSION["role"] !== 'admin'){
    header("location: ../login.php");
    exit;
}

require_once "../includes/db.php";

// Fetch recipes with category and user information
$sql = "SELECT recipes.*, categories.name AS category_name, users.username AS author_name ";
$sql .= "FROM recipes ";
$sql .= "LEFT JOIN categories ON recipes.category_id = categories.id ";
$sql .= "LEFT JOIN users ON recipes.user_id = users.id";

$result = mysqli_query($link, $sql);
$recipes = mysqli_fetch_all($result, MYSQLI_ASSOC);

?>
<?php include '../includes/header.php'; ?>

<main>
    <h2>Manage Recipes</h2>
    <a href="add_recipe.php">Add New Recipe</a>
    <table>
        <thead>
            <tr>
                <th>Title</th>
                <th>Category</th>
                <th>Author</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($recipes as $recipe) : ?>
                <tr>
                    <td><?php echo $recipe['title']; ?></td>
                    <td><?php echo $recipe['category_name']; ?></td>
                    <td><?php echo $recipe['author_name']; ?></td>
                    <td>
                        <a href="edit_recipe.php?id=<?php echo $recipe['id']; ?>">Edit</a>
                        <a href="delete_recipe.php?id=<?php echo $recipe['id']; ?>">Delete</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</main>

<?php include '../includes/footer.php'; ?>