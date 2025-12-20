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

// Fetch reviews submitted by the current user
$sql = "SELECT reviews.id AS review_id, reviews.rating, reviews.review, recipes.title AS recipe_title, recipes.id AS recipe_id ";
$sql .= "FROM reviews ";
$sql .= "LEFT JOIN recipes ON reviews.recipe_id = recipes.id ";
$sql .= "WHERE reviews.user_id = ?";

$reviews = [];
if ($stmt = mysqli_prepare($link, $sql)) {
    mysqli_stmt_bind_param($stmt, "i", $user_id);
    if (mysqli_stmt_execute($stmt)) {
        $result = mysqli_stmt_get_result($stmt);
        $reviews = mysqli_fetch_all($result, MYSQLI_ASSOC);
    }
    mysqli_stmt_close($stmt);
}

?>
<?php include '../includes/header.php'; ?>

<main>
    <h2>My Reviews</h2>
    <table>
        <thead>
            <tr>
                <th>Recipe</th>
                <th>Rating</th>
                <th>Review</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php if (count($reviews) > 0) : ?>
                <?php foreach ($reviews as $review) : ?>
                    <tr>
                        <td><a href="../recipe.php?id=<?php echo $review['recipe_id']; ?>" target="_blank"><?php echo $review['recipe_title']; ?></a></td>
                        <td><?php echo $review['rating']; ?>/5</td>
                        <td><?php echo $review['review']; ?></td>
                        <td>
                            <a href="edit_review.php?id=<?php echo $review['review_id']; ?>">Edit</a>
                            <a href="delete_review.php?id=<?php echo $review['review_id']; ?>">Delete</a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            <?php else : ?>
                <tr><td colspan="4">No reviews found.</td></tr>
            <?php endif; ?>
        </tbody>
    </table>
</main>

<?php include '../includes/footer.php'; ?>