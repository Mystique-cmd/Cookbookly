<?php
session_start();
require_once "includes/db.php";

$message_sent = false;
$error_message = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $user_id = isset($_SESSION["id"]) ? $_SESSION["id"] : NULL;
    $user_name = trim($_POST["name"]);
    $email = trim($_POST["email"]);
    $subject = trim($_POST["subject"]);
    $message = trim($_POST["message"]);

    // Basic validation
    if (empty($user_name) || empty($email) || empty($subject) || empty($message)) {
        $error_message = "Please fill in all required fields.";
    } elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $error_message = "Invalid email format.";
    } else {
        $sql = "INSERT INTO contact_messages (user_id, user_name, email, subject, message) VALUES (?, ?, ?, ?, ?)";

        if ($stmt = mysqli_prepare($link, $sql)) {
            mysqli_stmt_bind_param($stmt, "issss", $user_id, $user_name, $email, $subject, $message);

            if (mysqli_stmt_execute($stmt)) {
                $message_sent = true;
                $_SESSION['contact_message_status'] = 'success';
                $_SESSION['contact_message_text'] = 'Your message has been sent successfully!';
            } else {
                $_SESSION['contact_message_status'] = 'error';
                $_SESSION['contact_message_text'] = 'Oops! Something went wrong. Please try again later.';
            }
            mysqli_stmt_close($stmt);
        } else {
            $_SESSION['contact_message_status'] = 'error';
            $_SESSION['contact_message_text'] = 'Database error. Please try again later.';
        }
        mysqli_close($link);
        header("location: contact.php"); // Redirect to prevent form re-submission
        exit();
    }
}

include 'includes/header.php';

// Display session messages if any
$status_message = '';
if (isset($_SESSION['contact_message_status'])) {
    $status_class = ($_SESSION['contact_message_status'] == 'success') ? 'alert-success' : 'alert-danger';
    $status_message = '<div class="alert ' . $status_class . ' text-center mt-3" role="alert">' . $_SESSION['contact_message_text'] . '</div>';
    unset($_SESSION['contact_message_status']);
    unset($_SESSION['contact_message_text']);
}
?>

<main id="main-content">
    <?php echo $status_message; ?>
    <!-- Hero Section for Contact Us -->
    <section class="hero py-5 text-center bg-light" aria-labelledby="contact-hero-heading">
        <div class="container">
            <h1 id="contact-hero-heading" class="display-4 fw-bold">Get in Touch</h1>
            <p class="lead">We'd love to hear from you! Send us a message or find our contact details below.</p>
        </div>
    </section>

    <!-- Contact Form Section -->
    <section class="featured-recipes py-5" aria-labelledby="contact-form-heading">
        <div class="container">
            <h2 id="contact-form-heading" class="text-center mb-4">Send Us a Message</h2>
            <form action="contact.php" method="post" class="contact-form col-md-8 mx-auto">
                <div class="mb-3">
                    <label for="name" class="form-label">Name:</label>
                    <input type="text" id="name" name="name" class="form-control" required aria-label="Your Name">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email:</label>
                    <input type="email" id="email" name="email" class="form-control" required aria-label="Your Email">
                </div>
                <div class="mb-3">
                    <label for="subject" class="form-label">Subject:</label>
                    <input type="text" id="subject" name="subject" class="form-control" required aria-label="Subject of your message">
                </div>
                <div class="mb-3">
                    <label for="message" class="form-label">Message:</label>
                    <textarea id="message" name="message" rows="6" class="form-control" required aria-label="Your Message"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Send Message</button>
            </form>
        </div>
    </section>

    <!-- Contact Information Section -->
    <section class="recipe-of-the-day py-5 bg-light" aria-labelledby="contact-info-heading">
        <div class="container">
            <h2 id="contact-info-heading" class="text-center mb-4">Our Contact Information</h2>
            <div class="contact-details text-center">
                <p class="lead mb-1"><strong>Email:</strong> info@cookbookly.com</p>
                <p class="lead mb-1"><strong>Phone:</strong> +1 (555) 123-4567</p>
                <p class="lead mb-1"><strong>Address:</strong> 123 Recipe Road, Culinary City, CA 90210</p>
            </div>
        </div>
    </section>

    <!-- Map Placeholder Section -->
    <section class="cta py-5" aria-labelledby="map-heading">
        <div class="container">
            <h2 id="map-heading" class="text-center mb-4">Find Us on the Map</h2>
            <div class="map-placeholder bg-secondary text-white d-flex justify-content-center align-items-center rounded" style="height: 300px;">
                [Map Placeholder]
            </div>
        </div>
    </section>
</main>

<?php include 'includes/footer.php'; ?>
