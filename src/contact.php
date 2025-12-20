<?php include 'includes/header.php'; ?>

<main id="main-content">
    <!-- Hero Section for Contact Us -->
    <section class="hero" aria-labelledby="contact-hero-heading">
        <div class="container">
            <h1 id="contact-hero-heading">Get in Touch</h1>
            <p>We'd love to hear from you! Send us a message or find our contact details below.</p>
        </div>
    </section>

    <!-- Contact Form Section -->
    <section class="featured-recipes" aria-labelledby="contact-form-heading">
        <div class="container">
            <h2 id="contact-form-heading">Send Us a Message</h2>
            <form action="contact.php" method="post" class="contact-form">
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required aria-label="Your Name">
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required aria-label="Your Email">
                </div>
                <div class="form-group">
                    <label for="subject">Subject:</label>
                    <input type="text" id="subject" name="subject" required aria-label="Subject of your message">
                </div>
                <div class="form-group">
                    <label for="message">Message:</label>
                    <textarea id="message" name="message" rows="6" required aria-label="Your Message"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Send Message</button>
            </form>
        </div>
    </section>

    <!-- Contact Information Section -->
    <section class="recipe-of-the-day" aria-labelledby="contact-info-heading">
        <div class="container">
            <h2 id="contact-info-heading">Our Contact Information</h2>
            <div class="contact-details">
                <p><strong>Email:</strong> info@cookbookly.com</p>
                <p><strong>Phone:</strong> +1 (555) 123-4567</p>
                <p><strong>Address:</strong> 123 Recipe Road, Culinary City, CA 90210</p>
            </div>
        </div>
    </section>

    <!-- Map Placeholder Section -->
    <section class="cta" aria-labelledby="map-heading">
        <div class="container">
            <h2 id="map-heading">Find Us on the Map</h2>
            <div class="map-placeholder" style="height: 300px; background-color: #e0e0e0; display: flex; justify-content: center; align-items: center; color: #757575;">
                [Map Placeholder]
            </div>
        </div>
    </section>
</main>

<?php include 'includes/footer.php'; ?>
