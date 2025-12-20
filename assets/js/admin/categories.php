<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true || $_SESSION["role"] !== 'admin'){
    header("location: ../login.php");
    exit;
}

require_once "../includes/db.php";

// Add category
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = trim($_POST["name"]);
    if (!empty($name)) {
        $sql = "INSERT INTO categories (name) VALUES (?)";
        if ($stmt = mysqli_prepare($link, $sql)) {
            mysqli_stmt_bind_param($stmt, "s", $name);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_close($stmt);
        }
    }
}

// Fetch categories
$sql = "SELECT * FROM categories";
$result = mysqli_query($link, $sql);
$categories = mysqli_fetch_all($result, MYSQLI_ASSOC);

?>
<?php include 'includes/header.php'; ?>

<main>
    <h2>Manage Categories</h2>
    <form action="categories.php" method="post">
        <label for="name">Category Name:</label>
        <input type="text" id="name" name="name" required>
        <button type="submit">Add Category</button>
    </form>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($categories as $category) : ?>
                <tr>
                    <td><?php echo $category['name']; ?></td>
                    <td>
                        <a href="edit_category.php?id=<?php echo $category['id']; ?>">Edit</a>
                        <a href="delete_category.php?id=<?php echo $category['id']; ?>">Delete</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</main>

<?php include 'includes/footer.php'; ?>