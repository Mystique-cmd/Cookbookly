# Cookbookly

This project is a web application for managing recipes, health conditions, and user interactions.

## Setup Instructions

Follow these steps to get the project up and running on your local machine.

### 1. Prerequisites

*   **PHP** (version 8.0 or higher)
*   **MySQL/MariaDB**
*   **Composer** ([Install Composer](https://getcomposer.org/download/))
*   **Node.js and npm** ([Install Node.js](https://nodejs.org/en/download/))

### 2. Clone the Repository

```bash
git clone https://github.com/your-username/Cookbookly.git
cd Cookbookly
```

### 3. Install Dependencies

```bash
composer install
npm install
```

### 4. Database Setup

1.  **Create a new database** in your MySQL/MariaDB server named `cookbookly`.
2.  **Import the database schema** from the `database.sql` file:
    ```bash
    mysql -u your_username -p cookbookly < database.sql
    ```

### 5. Environment Configuration

1.  **Create a `.env` file** by copying the `.env.example` file:
    ```bash
    cp .env.example .env
    ```
2.  **Update the `.env` file** with your database credentials.

### 6. Web Server Setup

#### Option A: PHP Built-in Web Server (for development)

Navigate to the project's root directory and run:

```bash
php -S localhost:8000 router.php
```

Then access the application at `http://localhost:8000/src`.

#### Option B: Apache or Nginx

Configure your web server to use the `src` directory as the document root.

### 7. Access the Application

Open your web browser and navigate to the URL configured for your web server.

## Project Structure

```
.
├── src/
│   ├── admin/
│   ├── assets/
│   │   ├── css/
│   │   ├── js/
│   │   └── images/
│   ├── includes/
│   ├── user/
│   ├── 404.php
│   ├── about.php
│   ├── ...and other PHP files
├── .env
├── .env.example
├── .gitignore
├── composer.json
├── composer.lock
├── database.sql
├── package.json
├── package-lock.json
├── README.md
└── router.php
```