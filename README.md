# Cookbookly

Cookbookly is a responsive web application designed to help users discover, share, and manage recipes. It features a user-friendly interface, role-based access control (RBAC) for different user types (admin, regular user), and a contact form for user feedback. The application is built with PHP and MySQL, utilizing Bootstrap for a modern and responsive design.

## Features

*   **Responsive Design:** Built with Bootstrap 5 to ensure a seamless experience across various devices and screen sizes.
*   **Role-Based Access Control (RBAC):** Differentiates between admin and regular users, providing tailored access to features and dashboards.
    *   **Admin Dashboard:** For managing users, recipes, categories, and health conditions.
    *   **User Dashboard:** For managing personal recipes, favorites, reviews, and health preferences.
*   **Dark/Light Mode Toggle:** Users can switch between dark and light themes for improved readability and personalized experience.
*   **Recipe Management:** Users can add, edit, and delete their own recipes. Admins have full control over all recipes.
*   **Category and Health Condition Management:** Recipes can be organized by categories and associated with health conditions.
*   **Contact Form:** Users can send messages to the administrators, with submissions stored in the database for review.
*   **User Authentication:** Secure user registration and login system.

## Setup Instructions

Follow these steps to get the Cookbookly project up and running on your local machine.

### 1. Prerequisites

*   **PHP** (version 8.0 or higher)
*   **MySQL/MariaDB**
*   **Web Server** (Apache, Nginx, or PHP's built-in server)

### 2. Clone the Repository

```bash
git clone https://github.com/your-username/Cookbookly.git
cd Cookbookly
```

### 3. Database Setup

The project uses a consolidated `setup.sql` script that handles all database schema creation, table alterations, and data population.

1.  **Create a new database** in your MySQL/MariaDB server (e.g., named `cookbookly`).
2.  **Ensure you have the `admin` user and `password` credentials** configured in your MariaDB/MySQL.
3.  **Run the consolidated setup script.** This command will drop the database if it exists (for a clean start), re-create it, and then execute all schema definitions, alterations, and data insertions:
    ```bash
    mariadb -u admin -p -e "DROP DATABASE IF EXISTS cookbookly; CREATE DATABASE cookbookly;"
    mariadb -u admin -p cookbookly < setup.sql
    ```
    *(You will be prompted to enter the `admin` user's password for each command.)*

### 4. Environment Configuration

1.  **Create a `.env` file** by copying the `.env.example` file:
    ```bash
    cp .env.example .env
    ```
2.  **Update the `.env` file** with your database credentials and any other necessary configurations.

### 5. Web Server Setup

#### Option A: PHP Built-in Web Server (for development)

Navigate to the project's root directory and run:

```bash
php -S localhost:8080 -t src
```

Then access the application at `http://localhost:8080/`.

#### Option B: Apache or Nginx

Configure your web server to use the project's root directory as the document root and ensure `router.php` handles all requests.

### 6. Access the Application

Open your web browser and navigate to the URL configured for your web server (e.g., `http://localhost:8000/`).

## Technologies Used

*   **Backend:** PHP
*   **Database:** MySQL
*   **Frontend:** HTML5, CSS3 (Bootstrap 5), JavaScript
*   **Icons:** Font Awesome

## Admin and User Roles

*   **Admin:** Full access to all features, including user, recipe, category, and health condition management.
*   **User:** Can manage their own recipes, favorites, reviews, and health preferences.

Upon registration, users are assigned the 'user' role by default. To create an initial admin user:
1.  Register a new user through the application.
2.  Connect to your MariaDB/MySQL database:
    ```bash
    mariadb -u admin -p
    ```
    (Enter the `admin` user's password when prompted)
3.  Use the `cookbookly` database:
    ```sql
    USE cookbookly;
    ```
4.  Update the registered user's role to 'admin':
    ```sql
    UPDATE users SET role = 'admin' WHERE email = 'your_registered_email@example.com';
    ```
    (Replace `your_registered_email@example.com` with the email of the user you just registered.)
5.  Exit the database client:
    ```sql
    exit;
    ```
You can now log in with these credentials to access the Admin Dashboard.

## Project Structure

```
.
├── src/
│   ├── admin/              # Admin-specific pages and functionalities
│   │   ├── includes/       # Admin header/footer
│   │   └── ...             # Admin management pages (users, recipes, categories, etc.)
│   ├── assets/
│   │   ├── css/            # Stylesheets (including dark-mode.css)
│   │   ├── js/             # JavaScript files (including dark-mode.js)
│   │   └── images/         # Image assets
│   ├── includes/           # Reusable PHP components (db.php, header.php, footer.php, auth_check.php)
│   ├── user/               # User-specific pages and functionalities
│   │   ├── includes/       # User header/footer
│   │   └── ...             # User dashboard, my recipes, favorites, etc.
│   ├── 404.php             # Custom 404 error page
│   ├── about.php           # About Us page
│   ├── categories.php      # Lists all recipe categories
│   ├── category.php        # Displays recipes for a specific category
│   ├── contact.php         # Contact Us page with form submission
│   ├── health_condition.php# Displays recipes for a specific health condition
│   ├── health.php          # Lists all health conditions
│   ├── index.php           # Homepage
│   ├── login.php           # User login page
│   ├── recipe.php          # Displays a single recipe
│   ├── recipes.php         # Lists all recipes
│   ├── register.php        # User registration page
│   ├── search.php          # Search results page
│   └── submit_review.php   # Handles recipe review submissions
├── .env.example            # Example environment variables
├── .gitignore              # Git ignore rules
├── setup.sql               # Consolidated database schema, migrations, and seed data
├── README.md               # Project README file
└── router.php              # Central routing file
```
