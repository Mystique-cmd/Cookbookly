<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true || $_SESSION["role"] !== 'admin'){
    header("location: ../login.php");
    exit;
}

require_once "../includes/db.php";

$username = $email = "";
$username_err = $email_err = $password_err = "";

// Fetch admin user data
$id = $_SESSION["id"];
$sql = "SELECT username, email FROM users WHERE id = ?";
if ($stmt = mysqli_prepare($link, $sql)) {
    mysqli_stmt_bind_param($stmt, "i", $id);
    if (mysqli_stmt_execute($stmt)) {
        $result = mysqli_stmt_get_result($stmt);
        if (mysqli_num_rows($result) == 1) {
            $user = mysqli_fetch_assoc($result);
            $username = $user["username"];
            $email = $user["email"];
        } else {
            echo "Admin user not found.";
            exit();
        }
    }
    mysqli_stmt_close($stmt);
}

// Process form submission for profile update
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Validate username
    if (empty(trim($_POST["username"]))) {
        $username_err = "Please enter a username.";
    } else {
        $username = trim($_POST["username"]);
    }

    // Validate email
    if (empty(trim($_POST["email"]))) {
        $email_err = "Please enter an email.";
    } else {
        $email = trim($_POST["email"]);
    }

    // Validate password if provided
    $password = trim($_POST["password"]);
    if (!empty($password) && strlen($password) < 6) {
        $password_err = "Password must have at least 6 characters.";
    }

    // Check input errors before updating in database
    if (empty($username_err) && empty($email_err) && empty($password_err)) {
        if (!empty($password)) {
            $hashed_password = password_hash($password, PASSWORD_DEFAULT);
            $sql = "UPDATE users SET username = ?, email = ?, password = ? WHERE id = ?";
            if ($stmt = mysqli_prepare($link, $sql)) {
                mysqli_stmt_bind_param($stmt, "sssi", $username, $email, $hashed_password, $id);
            }
        } else {
            $sql = "UPDATE users SET username = ?, email = ? WHERE id = ?";
            if ($stmt = mysqli_prepare($link, $sql)) {
                mysqli_stmt_bind_param($stmt, "ssi", $username, $email, $id);
            }
        }

        if (mysqli_stmt_execute($stmt)) {
            // Update session username if it changed
            $_SESSION["username"] = $username;
            header("location: profile.php"); // Redirect to refresh page and show updated info
            exit();
        } else {
            echo "Something went wrong. Please try again later.";
        }
        mysqli_stmt_close($stmt);
    }
    mysqli_close($link);
}

?>
<?php include 'includes/header.php'; ?>

<main>
    <h2>Admin Profile</h2>
    <form action="profile.php" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" value="<?php echo $username; ?>" required>
        <span><?php echo $username_err; ?></span>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="<?php echo $email; ?>" required>
        <span><?php echo $email_err; ?></span>

        <label for="password">New Password (leave blank to keep current):</label>
        <input type="password" id="password" name="password">
        <span><?php echo $password_err; ?></span>

        <button type="submit">Update Profile</button>
    </form>
</main>

<?php include 'includes/footer.php'; ?>
