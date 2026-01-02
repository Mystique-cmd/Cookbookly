<?php
require_once '../includes/auth_check.php';
check_admin_access();

require_once "../includes/db.php";

$name = "";
$name_err = "";

if (isset($_GET["id"]) && !empty(trim($_GET["id"]))) {
    $id = trim($_GET["id"]);

    // Fetch category
    $sql = "SELECT * FROM categories WHERE id = ?";
    if ($stmt = mysqli_prepare($link, $sql)) {
        mysqli_stmt_bind_param($stmt, "i", $id);
        if (mysqli_stmt_execute($stmt)) {
            $result = mysqli_stmt_get_result($stmt);
            if (mysqli_num_rows($result) == 1) {
                $category = mysqli_fetch_assoc($result);
                $name = $category["name"];
            } else {
                echo "Category not found.";
                exit();
            }
        }
        mysqli_stmt_close($stmt);
    }
} else {
    echo "ID parameter is missing.";
    exit();
}


// Edit category
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST["id"]) && !empty(trim($_POST["id"]))) {
        $id = trim($_POST["id"]);
        $name = trim($_POST["name"]);

        if (!empty($name)) {
            $sql = "UPDATE categories SET name = ? WHERE id = ?";
            if ($stmt = mysqli_prepare($link, $sql)) {
                mysqli_stmt_bind_param($stmt, "si", $name, $id);
                if (mysqli_stmt_execute($stmt)) {
                    header("location: categories.php");
                    exit();
                }
                mysqli_stmt_close($stmt);
            }
        } else {
            $name_err = "Please enter a category name.";
        }
    }
}

?>
<?php include '../includes/header.php'; ?>

<main>
    <h2>Edit Category</h2>
    <form action="edit_category.php" method="post">
        <input type="hidden" name="id" value="<?php echo $id; ?>">
        <label for="name">Category Name:</label>
        <input type="text" id="name" name="name" value="<?php echo $name; ?>" required>
        <span><?php echo $name_err; ?></span>
        <button type="submit">Update Category</button>
    </form>
</main>

<?php include '../includes/footer.php'; ?>
