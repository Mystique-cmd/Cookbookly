<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true || $_SESSION["role"] !== 'admin'){
    header("location: ../login.php");
    exit;
}

require_once "../includes/db.php";

// Add health condition
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = trim($_POST["name"]);
    if (!empty($name)) {
        $sql = "INSERT INTO health_conditions (name) VALUES (?)";
        if ($stmt = mysqli_prepare($link, $sql)) {
            mysqli_stmt_bind_param($stmt, "s", $name);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_close($stmt);
        }
    }
}

// Fetch health conditions
$sql = "SELECT * FROM health_conditions";
$result = mysqli_query($link, $sql);
$health_conditions = mysqli_fetch_all($result, MYSQLI_ASSOC);

?>
<?php include 'includes/header.php'; ?>

<main>
    <h2>Manage Health Conditions</h2>
    <form action="health_conditions.php" method="post">
        <label for="name">Health Condition Name:</label>
        <input type="text" id="name" name="name" required>
        <button type="submit">Add Health Condition</button>
    </form>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($health_conditions as $condition) : ?>
                <tr>
                    <td><?php echo $condition['name']; ?></td>
                    <td>
                        <a href="edit_health_condition.php?id=<?php echo $condition['id']; ?>">Edit</a>
                        <a href="delete_health_condition.php?id=<?php echo $condition['id']; ?>">Delete</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</main>

<?php include 'includes/footer.php'; ?>
