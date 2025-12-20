<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}

require_once "includes/db.php";

$user_id = $_SESSION["id"];
$recipe_id = $rating = "";
$review_text = "";
$rating_err = $review_text_err = "";
$recipe_title = "";

if (isset($_GET["recipe_id"]) && !empty(trim($_GET["recipe_id"]))) {
    $recipe_id = trim($_GET["recipe_id"]);

    // Fetch recipe title for display
    $sql_recipe_title = "SELECT title FROM recipes WHERE id = ?";
    if ($stmt_title = mysqli_prepare($link, $sql_recipe_title)) {
        mysqli_stmt_bind_param($stmt_title, "i", $recipe_id);
        mysqli_stmt_execute($stmt_title);
        mysqli_stmt_bind_result($stmt_title, $recipe_title);
        mysqli_stmt_fetch($stmt_title);
        mysqli_stmt_close($stmt_title);
    }
} else {
    echo "Recipe ID parameter is missing.";
    exit();
}

// Process form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $recipe_id = trim($_POST["recipe_id"]);
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

    // Check input errors before inserting in database
    if (empty($rating_err) && empty($review_text_err)) {
        // Check if user has already reviewed this recipe
        $sql_check_review = "SELECT id FROM reviews WHERE user_id = ? AND recipe_id = ?";
        if ($stmt_check_review = mysqli_prepare($link, $sql_check_review)) {
            mysqli_stmt_bind_param($stmt_check_review, "ii", $user_id, $recipe_id);
            mysqli_stmt_execute($stmt_check_review);
            mysqli_stmt_store_result($stmt_check_review);

            if (mysqli_stmt_num_rows($stmt_check_review) > 0) {
                $review_text_err = "You have already submitted a review for this recipe.";
            } else {
                $sql_insert = "INSERT INTO reviews (user_id, recipe_id, rating, review) VALUES (?, ?, ?, ?)";
                if ($stmt_insert = mysqli_prepare($link, $sql_insert)) {
                    mysqli_stmt_bind_param($stmt_insert, "iiis", $user_id, $recipe_id, $rating, $review_text);
                    if (mysqli_stmt_execute($stmt_insert)) {
                        // Add activity for posting a review
                        $activity_type = "posted_review";
                        $activity_details = "Posted review for recipe: " . $recipe_title . " (Rating: " . $rating . ")";
                        $sql_insert_activity = "INSERT INTO user_activity (user_id, activity_type, activity_details) VALUES (?, ?, ?)";
                        if ($stmt_insert_activity = mysqli_prepare($link, $sql_insert_activity)) {
                            mysqli_stmt_bind_param($stmt_insert_activity, "iss", $user_id, $activity_type, $activity_details);
                            mysqli_stmt_execute($stmt_insert_activity);
                            mysqli_stmt_close($stmt_insert_activity);
                        }

                        header("location: recipe.php?id=" . $recipe_id); // Redirect back to the recipe page
                        exit();
                    } else {
                        echo "Something went wrong. Please try again later.";
                    }
                    mysqli_stmt_close($stmt_insert);
                }
            }
            mysqli_stmt_close($stmt_check_review);
        }
    }
    mysqli_close($link);
}

?>
<?php include 'includes/header.php'; ?>

<main>
    <h2>Submit a Review for "<?php echo $recipe_title; ?>"</h2>
    <form action="submit_review.php" method="post">
        <input type="hidden" name="recipe_id" value="<?php echo $recipe_id; ?>">
        <label for="rating">Rating (1-5):</label>
        <input type="number" id="rating" name="rating" min="1" max="5" value="<?php echo $rating; ?>" required>
        <span><?php echo $rating_err; ?></span>

        <label for="review">Your Review:</label>
        <textarea id="review" name="review" required><?php echo $review_text; ?></textarea>
        <span><?php echo $review_text_err; ?></span>

        <button type="submit">Submit Review</button>
    </form>
</main>

<?php include 'includes/footer.php'; ?>
