# Grandma's Kitchen

This project is a web application for managing recipes, health conditions, and user interactions.

## Setup Instructions

Follow these steps to get the project up and running on your local machine.

### 1. Database Setup

This project uses a MySQL/MariaDB database.

1.  **Install MySQL/MariaDB Server (if not already installed):**
    ```bash
    sudo apt update
    sudo apt install mysql-server
    ```
    (Follow prompts to set a root password during installation.)

2.  **Log in to MySQL as root:**
    ```bash
    sudo mysql -u root -p
    ```
    (Enter your MySQL root password when prompted.)

3.  **Create a Database:** Create a new database named `recipe_website`.
    ```sql
    CREATE DATABASE recipe_website;
    ```

4.  **Create a new MySQL user and grant privileges (recommended for security):** Replace `'your_username'` and `'your_password'` with your desired database username and a strong password.
    ```sql
    CREATE USER 'your_username'@'localhost' IDENTIFIED BY 'your_password';
    GRANT ALL PRIVILEGES ON recipe_website.* TO 'your_username'@'localhost';
    FLUSH PRIVILEGES;
    ```

5.  **Exit MySQL:**
    ```sql
    EXIT;
    ```

6.  **Import Schema:** Import the `database.sql` file into the newly created database.
    ```bash
    mysql -u your_username -p recipe_website < database.sql
    ```
    (Replace `your_username` with the username you created, and enter its password when prompted.)

### 2. Configure Database Connection

Update the database connection details in `includes/db.php` with your database credentials.

```php
// Database credentials
define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'your_username'); // Your MySQL username
define('DB_PASSWORD', 'your_password');     // Your MySQL password
define('DB_NAME', 'recipe_website');
```

### 3. Web Server Setup

You have two options for running the web server:

#### Option A: Apache with PHP (Recommended for full features)

1.  **Install Apache and PHP:**
    ```bash
    sudo apt update
    sudo apt install apache2 php libapache2-mod-php php-mysql
    ```
    (For Debian/Ubuntu. Commands may vary for other Linux distributions.)

2.  **Enable PHP module for Apache:**
    First, find your PHP version (e.g., `php8.4`).
    ```bash
    ls /etc/apache2/mods-available/ | grep php
    ```
    Then enable it (replace `phpX.Y` with your version):
    ```bash
    sudo a2enmod phpX.Y
    ```

3.  **Create Apache Virtual Host Configuration:**
    Create a new file `/etc/apache2/sites-available/grandmas_kitchen.conf` with the following content. Note the double quotes around paths with spaces.

    ```apache
    <VirtualHost *:80>
        ServerAdmin webmaster@localhost
        DocumentRoot "path_to_your_directory"
        ServerName grandmaskitchen.local

        <Directory "path_to_your_directory">
            Options Indexes FollowSymLinks
            AllowOverride All
            Require all granted
        </Directory>

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
    </VirtualHost>
    ```
    You can create/edit this file using:
    ```bash
    sudo nano /etc/apache2/sites-available/grandmas_kitchen.conf
    ```

4.  **Enable the Virtual Host:**
    ```bash
    sudo a2ensite grandmas_kitchen.conf
    ```

5.  **Add an entry to your `/etc/hosts` file:**
    This maps `grandmaskitchen.local` to your local machine.
    ```bash
    echo "127.0.0.1 grandmaskitchen.local" | sudo tee -a /etc/hosts
    ```
    (Alternatively, manually edit with `sudo nano /etc/hosts` and add `127.0.0.1 grandmaskitchen.local`.)

6.  **Set Directory Permissions:**
    Apache (running as `www-data` user) needs appropriate permissions to access your project files.

    *   **Grant execute permission to parent directories:**
        ```bash
        sudo chmod o+x /home/username/
        sudo chmod o+x /home/username/Desktop/
        ```
    *   **Set ownership and permissions for the project directory:**
        ```bash
        sudo chown -R www-data:www-data "path_to_yout_directory"
        sudo chmod -R 755 "path_to_your_directory"
        ```

7.  **Test Apache Configuration and Restart:**
    ```bash
    sudo apachectl configtest
    sudo systemctl restart apache2
    ```
    If `configtest` shows `Syntax OK`, Apache should restart successfully.

#### Option B: PHP Built-in Web Server (Quick Development)

For quick testing without full Apache configuration, you can use PHP's built-in server.
Navigate to your project's root directory and run:
```bash
php -S localhost:8000
```
Then access your project at `http://localhost:8000/`. Note that this server does not handle `.htaccess` files or complex routing, which might affect styling or URL structure.

### 4. Install JavaScript Dependencies

This project uses npm for managing frontend JavaScript dependencies.

1.  Navigate to the project's root directory in your terminal.
2.  Run the following command to install the dependencies:
    ```bash
    npm install
    ```

### 5. Access the Application

After completing the above steps, you should be able to access the application through your web server.
Open your web browser and navigate to the URL configured for your web server:

*   **Apache:** `http://grandmaskitchen.local/`
*   **PHP Built-in Server:** `http://localhost:8000/`

## Project Structure

*   `admin/`: Admin panel files
*   `assets/`: CSS, JavaScript, and images
*   `includes/`: PHP include files (database connection, headers, footers)
*   `user/`: User-specific panel files
*   `database.sql`: Database schema
*   `package.json`, `package-lock.json`: Node.js package manager files
*   `sw.js`: Service Worker file
*   `add_favorite.php`, `logout.php`, etc.: Root level PHP scripts

---
**Note**: This README is a basic guide. Depending on your environment, you might need additional configurations.
```
The datatables folder holds the sql files.Something worth noting is that the image_recipes.sql is not a table by itself,
 I added it as a column in the recipes table and has the image URLs of the recipe
-All other tables follow the structure in the schema.sql
recipe-website/
│
├── index.php              # Home page
├── recipes.php            # All recipes listing
├── recipe.php             # Single recipe view
├── categories.php         # Categories listing
├── category.php           # Recipes by category
├── health.php             # Health conditions listing
├── health_condition.php   # Recipes by health condition
├── about.php              # About page
├── contact.php            # Contact form
├── login.php              # Login page
├── register.php           # Register page
├── search.php             # Search results
│
├── admin/                 # Admin dashboard
│   ├── index.php          # Admin home
│   ├── add_recipe.php     # Add new recipe
│   ├── recipes.php        # Manage recipes
│   ├── edit_recipe.php    # Edit recipe
│   ├── categories.php     # Manage categories
│   ├── health_conditions.php # Manage health conditions
│   ├── users.php          # Manage users
│   ├── profile.php        # Admin profile
│   └── logout.php         # Admin logout
│
├── user/                  # User dashboard
│   ├── index.php          # User home
│   ├── my_recipes.php     # User-submitted recipes
│   ├── favorites.php      # Saved recipes
│   ├── my_reviews.php     # User reviews
│   ├── profile.php        # Profile settings
│   ├── health_preferences.php # Health filters
│   └── logout.php         # User logout
│
├── includes/              # Shared components
│   ├── header.php         # Site header
│   ├── footer.php         # Site footer
│   ├── db.php             # Database connection
│   └── auth.php           # Authentication logic
│
├── assets/                # Static assets
│   ├── css/               # Stylesheets
│   ├── js/                # JavaScript files
│   └── images/            # General images
│
├── uploads/               # Uploaded content
│   ├── recipes/           # Recipe images
│   ├── categories/        # Category images
│   ├── health/            # Health condition images
│   └── users/             # User profile pictures
│
└── README.md              # Project documentation
```
