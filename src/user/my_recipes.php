<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: ../login.php");
    exit;
}

require_once "../includes/db.php";

$user_id = $_SESSION["id"];

// Fetch recipes submitted by the current user with category information
$sql = "SELECT recipes.*, categories.name AS category_name ";
$sql .= "FROM recipes ";
$sql .= "LEFT JOIN categories ON recipes.category_id = categories.id ";
$sql .= "WHERE recipes.user_id = ?";

$recipes = [];
if ($stmt = mysqli_prepare($link, $sql)) {
    mysqli_stmt_bind_param($stmt, "i", $user_id);
    if (mysqli_stmt_execute($stmt)) {
        $result = mysqli_stmt_get_result($stmt);
        $recipes = mysqli_fetch_all($result, MYSQLI_ASSOC);
    }
    mysqli_stmt_close($stmt);
}

?>
<?php include '../includes/header.php'; ?>

<main>
    <h2>My Recipes</h2>
    <a href="add_recipe.php">Add New Recipe</a>
    <table>
        <thead>
            <tr>
                <th>Title</th>
                <th>Category</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php if (count($recipes) > 0) : ?>
                <?php foreach ($recipes as $recipe) : ?>
                    <tr>
                        <td><?php echo $recipe['title']; ?></td>
                        <td><?php echo $recipe['category_name']; ?></td>
                        <td>
                            <a href="edit_recipe.php?id=<?php echo $recipe['id']; ?>">Edit</a>
                            <a href="delete_recipe.php?id=<?php echo $recipe['id']; ?>">Delete</a>
                            <a href="../recipe.php?id=<?php echo $recipe['id']; ?>" target="_blank">View</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            <?php else : ?>
                <tr><td colspan="3">No recipes found. <a href="add_recipe.php">Add your first recipe!</a></td></tr>
            <?php endif; ?>
        </tbody>
    </table>
</main>

<?php include '../includes/footer.php'; ?>