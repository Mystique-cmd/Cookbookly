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

1.  **Create a new database** in your MySQL/MariaDB server (e.g., named `cookbookly`).
2.  **Import the initial database schema and data** from the `database.sql` file:
    ```bash
    mysql -u your_username -p your_database_name < database.sql
    ```
    *(Replace `your_username` and `your_database_name` with your actual credentials and database name.)*
3.  **Apply the RBAC migration:** Execute the `add_user_roles.sql` script to add the `role` column to the `users` table:
    ```bash
    mysql -u your_username -p your_database_name < add_user_roles.sql
    ```
4.  **Apply the Contact Messages table migration:** Execute the `create_contact_messages_table.sql` script to create the `contact_messages` table:
    ```bash
    mysql -u your_username -p your_database_name < create_contact_messages_table.sql
    ```

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
php -S localhost:8000 router.php
```

Then access the application at `http://localhost:8000/`.

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

Upon registration, users are assigned the 'user' role by default. An administrator can change user roles through the admin dashboard.

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
├── add_user_roles.sql      # SQL script to add 'role' column to users table
├── create_contact_messages_table.sql # SQL script to create contact_messages table
├── database.sql            # Initial database schema and seed data
├── README.md               # Project README file
└── router.php              # Central routing file
```
