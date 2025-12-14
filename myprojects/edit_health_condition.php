<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true || $_SESSION["role"] !== 'admin'){
    header("location: ../login.php");
    exit;
}

require_once "../includes/db.php";

$name = "";
$name_err = "";

if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
    $id = trim($_GET["id"]);

    // Fetch health condition
    $sql = "SELECT * FROM health_conditions WHERE id = ?";
    if ($stmt = mysqli_prepare($link, $sql)) {
        mysqli_stmt_bind_param($stmt, "i", $id);
        if (mysqli_stmt_execute($stmt)) {
            $result = mysqli_stmt_get_result($stmt);
            if (mysqli_num_rows($result) == 1) {
                $condition = mysqli_fetch_assoc($result);
                $name = $condition["name"];
            } else {
                echo "Health condition not found.";
                exit();
            }
        }
        mysqli_stmt_close($stmt);
    }
} else {
    echo "ID parameter is missing.";
    exit();
}


// Edit health condition
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["id"]) && !empty(trim($_POST["id"]))) {
        $id = trim($_POST["id"]);
        $name = trim($_POST["name"]);

        if (!empty($name)) {
            $sql = "UPDATE health_conditions SET name = ? WHERE id = ?";
            if ($stmt = mysqli_prepare($link, $sql)) {
                mysqli_stmt_bind_param($stmt, "si", $name, $id);
                if (mysqli_stmt_execute($stmt)) {
                    header("location: health_conditions.php");
                    exit();
                }
                mysqli_stmt_close($stmt);
            }
        } else {
            $name_err = "Please enter a health condition name.";
        }
    }
}

?>
<?php include 'includes/header.php'; ?>

<main>
    <h2>Edit Health Condition</h2>
    <form action="edit_health_condition.php" method="post">
        <input type="hidden" name="id" value="<?php echo $id; ?>">
        <label for="name">Health Condition Name:</label>
        <input type="text" id="name" name="name" value="<?php echo $name; ?>" required>
        <span><?php echo $name_err; ?></span>
        <button type="submit">Update Health Condition</button>
    </form>
</main>

<?php include 'includes/footer.php'; ?>
