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

$health_conditions_data = [];
$user_health_prefs = [];

// Fetch all available health conditions
$sql_all_conditions = "SELECT id, name FROM health_conditions ORDER BY name ASC";
$result_all_conditions = mysqli_query($link, $sql_all_conditions);
$health_conditions_data = mysqli_fetch_all($result_all_conditions, MYSQLI_ASSOC);

// Fetch user's current health preferences
$sql_user_prefs = "SELECT health_id FROM user_health_preferences WHERE user_id = ?";
if ($stmt_user_prefs = mysqli_prepare($link, $sql_user_prefs)) {
    mysqli_stmt_bind_param($stmt_user_prefs, "i", $user_id);
    mysqli_stmt_execute($stmt_user_prefs);
    $result_user_prefs = mysqli_stmt_get_result($stmt_user_prefs);
    while ($row = mysqli_fetch_assoc($result_user_prefs)) {
        $user_health_prefs[] = $row['health_id'];
    }
    mysqli_stmt_close($stmt_user_prefs);
}

// Process form submission for updating health preferences
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $selected_conditions = isset($_POST["health_conditions"]) ? $_POST["health_conditions"] : [];

    // Start transaction
    mysqli_begin_transaction($link);

    try {
        // Delete existing preferences for the user
        $sql_delete = "DELETE FROM user_health_preferences WHERE user_id = ?";
        if ($stmt_delete = mysqli_prepare($link, $sql_delete)) {
            mysqli_stmt_bind_param($stmt_delete, "i", $user_id);
            mysqli_stmt_execute($stmt_delete);
            mysqli_stmt_close($stmt_delete);
        } else {
            throw new Exception("Error deleting old preferences.");
        }

        // Insert new preferences
        if (!empty($selected_conditions)) {
            $sql_insert = "INSERT INTO user_health_preferences (user_id, health_id) VALUES (?, ?)";
            if ($stmt_insert = mysqli_prepare($link, $sql_insert)) {
                foreach ($selected_conditions as $health_id) {
                    mysqli_stmt_bind_param($stmt_insert, "ii", $user_id, $health_id);
                    mysqli_stmt_execute($stmt_insert);
                }
                mysqli_stmt_close($stmt_insert);
            } else {
                throw new Exception("Error inserting new preferences.");
            }
        }

        mysqli_commit($link);
        header("location: profile.php"); // Redirect to profile page after update
        exit();

    } catch (Exception $e) {
        mysqli_rollback($link);
        echo "Error: " . $e->getMessage();
    }
    mysqli_close($link);
}

?>
<?php include '../includes/header.php'; ?>

<main>
    <h2>Manage Health/Dietary Preferences</h2>
    <form action="health_preferences.php" method="post">
        <p>Select your health conditions for personalized recipe recommendations:</p>
        <div>
            <?php if (!empty($health_conditions_data)) : ?>
                <?php foreach ($health_conditions_data as $condition) : ?>
                    <input type="checkbox" id="condition_<?php echo $condition['id']; ?>" name="health_conditions[]" value="<?php echo $condition['id']; ?>" <?php echo in_array($condition['id'], $user_health_prefs) ? 'checked' : ''; ?>>
                    <label for="condition_<?php echo $condition['id']; ?>"><?php echo $condition['name']; ?></label><br>
                <?php endforeach; ?>
            <?php else : ?>
                <p>No health conditions available to select.</p>
            <?php endif; ?>
        </div>
        <br>
        <button type="submit">Save Preferences</button>
    </form>
    <p><a href="profile.php">Back to Profile</a></p>
</main>

<?php include '../includes/footer.php'; ?>
