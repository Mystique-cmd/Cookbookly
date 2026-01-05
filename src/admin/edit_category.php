<?php
require_once '../includes/auth_check.php';
check_admin_access();

require_once "../includes/db.php";

$name = "";
$image_url = "";
$name_err = "";
$image_url_err = "";

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
                $image_url = $category["image_url"];
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
        $existing_image = $_POST["existing_image"];

        $image_url = $existing_image;
        // Handle image upload
        if (isset($_FILES["category_image"]) && $_FILES["category_image"]["error"] == 0) {
            $target_dir = "../uploads/categories/";
            $imageFileType = strtolower(pathinfo(basename($_FILES["category_image"]["name"]),PATHINFO_EXTENSION));
            $new_image_name = uniqid() . "." . $imageFileType;
            $target_file = $target_dir . $new_image_name;

            $check = getimagesize($_FILES["category_image"]["tmp_name"]);
            if($check !== false) {
                if (move_uploaded_file($_FILES["category_image"]["tmp_name"], $target_file)) {
                    $image_url = $new_image_name;
                    // Delete old image if it exists
                    if (!empty($existing_image) && file_exists($target_dir . $existing_image)) {
                        unlink($target_dir . $existing_image);
                    }
                } else {
                    $image_url_err = "Sorry, there was an error uploading your file.";
                }
            } else {
                $image_url_err = "File is not an image.";
            }
        }

        if (!empty($name) && empty($name_err) && empty($image_url_err)) {
            $sql = "UPDATE categories SET name = ?, image_url = ? WHERE id = ?";
            if ($stmt = mysqli_prepare($link, $sql)) {
                mysqli_stmt_bind_param($stmt, "ssi", $name, $image_url, $id);
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
    <form action="edit_category.php" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?php echo $id; ?>">
        <input type="hidden" name="existing_image" value="<?php echo $image_url; ?>">
        <label for="name">Category Name:</label>
        <input type="text" id="name" name="name" value="<?php echo $name; ?>" required>
        <span><?php echo $name_err; ?></span>

        <label for="category_image">Category Image:</label>
        <?php if (!empty($image_url)) : ?>
            <p>Current image: <img src="../uploads/categories/<?php echo $image_url; ?>" alt="<?php echo $name; ?>" width="100"></p>
        <?php endif; ?>
        <input type="file" id="category_image" name="category_image">
        <span><?php echo $image_url_err; ?></span>
        <button type="submit">Update Category</button>
    </form>
</main>

<?php include '../includes/footer.php'; ?>
