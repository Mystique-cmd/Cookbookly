<?php
require_once '../includes/auth_check.php';
check_admin_access();

require_once "../includes/db.php";

$image_url_err = "";

// Add category
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = trim($_POST["name"]);
    $category_image = "";

    // Handle image upload
    if (isset($_FILES["category_image"]) && $_FILES["category_image"]["error"] == 0) {
        $target_dir = "../uploads/categories/";
        $imageFileType = strtolower(pathinfo(basename($_FILES["category_image"]["name"]),PATHINFO_EXTENSION));
        $new_image_name = uniqid() . "." . $imageFileType;
        $target_file = $target_dir . $new_image_name;

        $check = getimagesize($_FILES["category_image"]["tmp_name"]);
        if($check !== false) {
            if (move_uploaded_file($_FILES["category_image"]["tmp_name"], $target_file)) {
                $category_image = $new_image_name;
            } else {
                $image_url_err = "Sorry, there was an error uploading your file.";
            }
        } else {
            $image_url_err = "File is not an image.";
        }
    } else {
        $image_url_err = "Please upload a category image.";
    }

    if (!empty($name) && empty($image_url_err)) {
        $sql = "INSERT INTO categories (name, image_url) VALUES (?, ?)";
        if ($stmt = mysqli_prepare($link, $sql)) {
            mysqli_stmt_bind_param($stmt, "ss", $name, $category_image);
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
<?php include '../includes/header.php'; ?>

<main>
    <h2>Manage Categories</h2>
    <form action="categories.php" method="post" enctype="multipart/form-data">
        <label for="name">Category Name:</label>
        <input type="text" id="name" name="name" required>
        <label for="category_image">Category Image:</label>
        <input type="file" id="category_image" name="category_image" required>
        <span><?php echo $image_url_err; ?></span>
        <button type="submit">Add Category</button>
    </form>
    <table>
        <thead>
            <tr>
                <th>Name</th>
                <th>Image</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($categories as $category) : ?>
                <tr>
                    <td><?php echo $category['name']; ?></td>
                    <td><img src="../uploads/categories/<?php echo $category['image_url']; ?>" alt="<?php echo $category['name']; ?>" width="50"></td>
                    <td>
                        <a href="edit_category.php?id=<?php echo $category['id']; ?>">Edit</a>
                        <a href="delete_category.php?id=<?php echo $category['id']; ?>">Delete</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</main>

<?php include '../includes/footer.php'; ?>