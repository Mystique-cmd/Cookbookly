<?php
// Initialize the session
session_start();

require_once "includes/db.php";

$health_conditions = [];

// Fetch all health conditions
$sql = "SELECT id, name, description FROM health_conditions WHERE status = 1 ORDER BY name ASC";
$result = mysqli_query($link, $sql);
$health_conditions = mysqli_fetch_all($result, MYSQLI_ASSOC);

mysqli_close($link);

?>
<?php include 'includes/header.php'; ?>

<main>
    <h1>Health Conditions</h1>
    <div class="health-condition-list">
        <?php if (!empty($health_conditions)) : ?>
            <?php foreach ($health_conditions as $condition) : ?>
                <div class="health-condition-item">
                    <a href="health_condition.php?id=<?php echo $condition['id']; ?>">
                        <h3><?php echo $condition['name']; ?></h3>
                        <p><?php echo $condition['description']; ?></p>
                    </a>
                </div>
            <?php endforeach; ?>
        <?php else : ?>
            <p>No health conditions found.</p>
        <?php endif; ?>
    </div>
</main>

<?php include 'includes/footer.php'; ?>
