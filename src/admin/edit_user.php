<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true || $_SESSION["role"] !== 'admin'){
    header("location: ../login.php");
    exit;
}

require_once "../includes/db.php";

$username = $email = $role = "";
$username_err = $email_err = $role_err = "";

if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
    $id = trim($_GET["id"]);

    // Fetch user details
    $sql = "SELECT id, username, email, role FROM users WHERE id = ?";
    if ($stmt = mysqli_prepare($link, $sql)) {
        mysqli_stmt_bind_param($stmt, "i", $id);
        if (mysqli_stmt_execute($stmt)) {
            $result = mysqli_stmt_get_result($stmt);
            if (mysqli_num_rows($result) == 1) {
                $user = mysqli_fetch_assoc($result);
                $username = $user["username"];
                $email = $user["email"];
                $role = $user["role"];
            } else {
                echo "User not found.";
                exit();
            }
        }
        mysqli_stmt_close($stmt);
    }
} else {
    echo "ID parameter is missing.";
    exit();
}


// Edit user
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["id"]) && !empty(trim($_POST["id"]))) {
        $id = trim($_POST["id"]);
        $username = trim($_POST["username"]);
        $email = trim($_POST["email"]);
        $role = trim($_POST["role"]);

        // Validate inputs (basic validation, enhance as needed)
        if (empty($username)) $username_err = "Please enter a username.";
        if (empty($email)) $email_err = "Please enter an email.";
        if (empty($role)) $role_err = "Please select a role.";

        // Check input errors before updating in database
        if (empty($username_err) && empty($email_err) && empty($role_err)) {
            $sql = "UPDATE users SET username = ?, email = ?, role = ? WHERE id = ?";
            if ($stmt = mysqli_prepare($link, $sql)) {
                mysqli_stmt_bind_param($stmt, "sssi", $username, $email, $role, $id);
                if (mysqli_stmt_execute($stmt)) {
                    header("location: users.php");
                    exit();
                }
                mysqli_stmt_close($stmt);
            }
        }
    }
    mysqli_close($link);
}

?>
<?php include '../includes/header.php'; ?>

<main>
    <h2>Edit User</h2>
    <form action="edit_user.php" method="post">
        <input type="hidden" name="id" value="<?php echo $id; ?>">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" value="<?php echo $username; ?>" required>
        <span><?php echo $username_err; ?></span>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="<?php echo $email; ?>" required>
        <span><?php echo $email_err; ?></span>

        <label for="role">Role:</label>
        <select id="role" name="role" required>
            <option value="admin" <?php echo ($role == 'admin') ? 'selected' : ''; ?>>Admin</option>
            <option value="user" <?php echo ($role == 'user') ? 'selected' : ''; ?>>User</option>
            <option value="contributor" <?php echo ($role == 'contributor') ? 'selected' : ''; ?>>Contributor</option>
        </select>
        <span><?php echo $role_err; ?></span>

        <button type="submit">Update User</button>
    </form>
</main>

<?php include '../includes/footer.php'; ?>
