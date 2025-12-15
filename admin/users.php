<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true || $_SESSION["role"] !== 'admin'){
    header("location: ../login.php");
    exit;
}

require_once "../includes/db.php";

// Fetch users
$sql = "SELECT id, username, email, role FROM users";
$result = mysqli_query($link, $sql);
$users = mysqli_fetch_all($result, MYSQLI_ASSOC);

?>
<?php include 'includes/header.php'; ?>

<main>
    <h2>Manage Users</h2>
    <table>
        <thead>
            <tr>
                <th>Username</th>
                <th>Email</th>
                <th>Role</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($users as $user) : ?>
                <tr>
                    <td><?php echo $user['username']; ?></td>
                    <td><?php echo $user['email']; ?></td>
                    <td><?php echo $user['role']; ?></td>
                    <td>
                        <a href="edit_user.php?id=<?php echo $user['id']; ?>">Edit</a>
                        <a href="delete_user.php?id=<?php echo $user['id']; ?>">Delete</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</main>

<?php include 'includes/footer.php'; ?>