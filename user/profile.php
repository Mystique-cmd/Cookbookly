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

$username = $email = $profile_pic = "";
$username_err = $email_err = $password_err = $profile_pic_err = "";

// Fetch user data
$sql = "SELECT username, email, profile_pic FROM users WHERE id = ?";
if ($stmt = mysqli_prepare($link, $sql)) {
    mysqli_stmt_bind_param($stmt, "i", $user_id);
    if (mysqli_stmt_execute($stmt)) {
        $result = mysqli_stmt_get_result($stmt);
        if (mysqli_num_rows($result) == 1) {
            $user = mysqli_fetch_assoc($result);
            $username = $user["username"];
            $email = $user["email"];
            $profile_pic = $user["profile_pic"];
        } else {
            echo "User not found.";
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

    $new_profile_pic = $profile_pic;
    // Handle profile picture upload
    if (isset($_FILES["profile_pic"]) && $_FILES["profile_pic"]["error"] == 0) {
        $target_dir = "../uploads/users/";
        $imageFileType = strtolower(pathinfo($_FILES["profile_pic"]["name"],PATHINFO_EXTENSION));
        $new_image_name = uniqid() . "." . $imageFileType;
        $target_file = $target_dir . $new_image_name;

        $check = getimagesize($_FILES["profile_pic"]["tmp_name"]);
        if($check !== false) {
            if (move_uploaded_file($_FILES["profile_pic"]["tmp_name"], $target_file)) {
                $new_profile_pic = $new_image_name;
            } else {
                $profile_pic_err = "Sorry, there was an error uploading your file.";
            }
        } else {
            $profile_pic_err = "File is not an image.";
        }
    }

    // Check input errors before updating in database
    if (empty($username_err) && empty($email_err) && empty($password_err) && empty($profile_pic_err)) {
        if (!empty($password)) {
            $hashed_password = password_hash($password, PASSWORD_DEFAULT);
            $sql = "UPDATE users SET username = ?, email = ?, password = ?, profile_pic = ? WHERE id = ?";
            if ($stmt = mysqli_prepare($link, $sql)) {
                mysqli_stmt_bind_param($stmt, "ssssi", $username, $email, $hashed_password, $new_profile_pic, $user_id);
            }
        } else {
            $sql = "UPDATE users SET username = ?, email = ?, profile_pic = ? WHERE id = ?";
            if ($stmt = mysqli_prepare($link, $sql)) {
                mysqli_stmt_bind_param($stmt, "sssi", $username, $email, $new_profile_pic, $user_id);
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
    <h2>My Profile</h2>
    <form action="profile.php" method="post" enctype="multipart/form-data">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" value="<?php echo $username; ?>" required>
        <span><?php echo $username_err; ?></span>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="<?php echo $email; ?>" required>
        <span><?php echo $email_err; ?></span>

        <label for="password">New Password (leave blank to keep current):</label>
        <input type="password" id="password" name="password">
        <span><?php echo $password_err; ?></span>

        <label for="profile_pic">Profile Picture:</label>
        <?php if (!empty($profile_pic)) : ?>
            <p>Current picture: <img src="../uploads/users/<?php echo $profile_pic; ?>" width="100"></p>
        <?php endif; ?>
        <input type="file" id="profile_pic" name="profile_pic">
        <span><?php echo $profile_pic_err; ?></span>

        <button type="submit">Update Profile</button>
    </form>

    <p><a href="health_preferences.php">Manage Health/Dietary Preferences</a></p>
</main>

<?php include 'includes/footer.php'; ?>