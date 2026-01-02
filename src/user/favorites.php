<?php
require_once '../includes/auth_check.php';
check_user_access();

require_once "../includes/db.php";

$user_id = $_SESSION["id"];

// Fetch favorite recipes for the current user
$sql = "SELECT favorites.id AS favorite_id, recipes.id AS recipe_id, recipes.title, categories.name AS category_name, users.username AS author_name, recipes.recipe_image ";
$sql .= "FROM favorites ";
$sql .= "LEFT JOIN recipes ON favorites.recipe_id = recipes.id ";
$sql .= "LEFT JOIN categories ON recipes.category_id = categories.id ";
$sql .= "LEFT JOIN users ON recipes.user_id = users.id ";
$sql .= "WHERE favorites.user_id = ?";

$favorites = [];
if ($stmt = mysqli_prepare($link, $sql)) {
    mysqli_stmt_bind_param($stmt, "i", $user_id);
    if (mysqli_stmt_execute($stmt)) {
        $result = mysqli_stmt_get_result($stmt);
        $favorites = mysqli_fetch_all($result, MYSQLI_ASSOC);
    }
    mysqli_stmt_close($stmt);
}

?>
<?php include '../includes/header.php'; ?>

<main>
    <h2>My Favorites</h2>
    <table>
        <thead>
            <tr>
                <th>Image</th>
                <th>Title</th>
                <th>Category</th>
                <th>Author</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php if (count($favorites) > 0) : ?>
                <?php foreach ($favorites as $favorite) : ?>
                    <tr>
                        <td><img src="../uploads/recipes/<?php echo $favorite['recipe_image']; ?>" alt="<?php echo $favorite['title']; ?>" width="50"></td>
                        <td><?php echo $favorite['title']; ?></td>
                        <td><?php echo $favorite['category_name']; ?></td>
                        <td><?php echo $favorite['author_name']; ?></td>
                        <td>
                            <a href="../recipe.php?id=<?php echo $favorite['recipe_id']; ?>" target="_blank">View</a>
                            <a href="remove_favorite.php?id=<?php echo $favorite['favorite_id']; ?>">Remove</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            <?php else : ?>
                <tr><td colspan="5">No favorite recipes found.</td></tr>
            <?php endif; ?>
        </tbody>
    </table>
</main>

<?php include '../includes/footer.php'; ?>