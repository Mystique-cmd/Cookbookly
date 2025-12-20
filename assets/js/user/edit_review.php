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

$rating = $review_text = "";
$rating_err = $review_text_err = "";

if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
    $review_id = trim($_GET["id"]);

    // Fetch review details and ensure it belongs to the logged-in user
    $sql = "SELECT reviews.rating, reviews.review, recipes.title AS recipe_title FROM reviews LEFT JOIN recipes ON reviews.recipe_id = recipes.id WHERE reviews.id = ? AND reviews.user_id = ?";
    if ($stmt = mysqli_prepare($link, $sql)) {
        mysqli_stmt_bind_param($stmt, "ii", $review_id, $user_id);
        if (mysqli_stmt_execute($stmt)) {
            $result = mysqli_stmt_get_result($stmt);
            if (mysqli_num_rows($result) == 1) {
                $review_data = mysqli_fetch_assoc($result);
                $rating = $review_data["rating"];
                $review_text = $review_data["review"];
                $recipe_title = $review_data["recipe_title"];
            } else {
                echo "Review not found or you don't have permission to edit it.";
                exit();
            }
        }
        mysqli_stmt_close($stmt);
    }
} else {
    echo "Review ID parameter is missing.";
    exit();
}


// Process form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $review_id = $_POST["review_id"];
    $rating = trim($_POST["rating"]);
    $review_text = trim($_POST["review"]);

    // Validate inputs
    if (empty($rating)) {
        $rating_err = "Please enter a rating.";
    } elseif (!filter_var($rating, FILTER_VALIDATE_INT, array("options" => array("min_range" => 1, "max_range" => 5)))) {
        $rating_err = "Rating must be between 1 and 5.";
    }
    if (empty($review_text)) {
        $review_text_err = "Please enter your review.";
    }

    // Check input errors before updating in database
    if (empty($rating_err) && empty($review_text_err)) {
        $sql = "UPDATE reviews SET rating = ?, review = ? WHERE id = ? AND user_id = ?";
        if ($stmt = mysqli_prepare($link, $sql)) {
            mysqli_stmt_bind_param($stmt, "isii", $rating, $review_text, $review_id, $user_id);
            if (mysqli_stmt_execute($stmt)) {
                header("location: my_reviews.php");
                exit();
            } else {
                echo "Something went wrong. Please try again later.";
            }
            mysqli_stmt_close($stmt);
        }
    }
    mysqli_close($link);
}

?>
<?php include 'includes/header.php'; ?>

<main>
    <h2>Edit Your Review for "<?php echo $recipe_title; ?>"</h2>
    <form action="edit_review.php?id=<?php echo $review_id; ?>" method="post">
        <input type="hidden" name="review_id" value="<?php echo $review_id; ?>">
        <label for="rating">Rating (1-5):</label>
        <input type="number" id="rating" name="rating" min="1" max="5" value="<?php echo $rating; ?>" required>
        <span><?php echo $rating_err; ?></span>

        <label for="review">Review:</label>
        <textarea id="review" name="review" required><?php echo $review_text; ?></textarea>
        <span><?php echo $review_text_err; ?></span>

        <button type="submit">Update Review</button>
    </form>
</main>

<?php include 'includes/footer.php'; ?>
