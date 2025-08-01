# Event Management System (PHP)

A comprehensive web-based event management system built with PHP and MySQL, featuring user authentication, admin panel, and modern responsive design.

## 📋 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Database Setup](#database-setup)
- [Usage](#usage)
- [File Structure](#file-structure)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)

## 🎯 Overview

This Event Management System is a PHP-based web application designed to streamline event organization and user management. The system provides a secure authentication framework with role-based access control, allowing both regular users and administrators to interact with the platform according to their permissions.

### Key Highlights

- **Secure Authentication**: Password hashing and session management
- **Role-Based Access**: Separate admin and user dashboards
- **Responsive Design**: Bootstrap-powered modern UI
- **Database Integration**: MySQL backend for data persistence
- **Scalable Architecture**: Clean PHP structure for easy expansion

## ✨ Features

### Current Features

- **User Management**
  - User registration with email verification
  - Secure login with password hashing
  - Session-based authentication
  - Profile management

- **Admin Features**
  - Admin role detection (admin@gmail.com)
  - Separate admin dashboard access
  - User management capabilities

- **Security**
  - Password hashing using PHP's `password_hash()`
  - SQL injection prevention with prepared statements
  - Session management for secure user tracking

- **UI/UX**
  - Responsive design with Bootstrap/MDB framework
  - Modern gradient backgrounds and styling
  - Font Awesome icons integration
  - Mobile-friendly interface

### Planned Features

- Event creation and management
- Event booking and ticket management
- Calendar integration
- Email notifications
- Payment processing
- Advanced admin analytics

## 🛠 Requirements

### System Requirements

- **PHP**: 7.4 or higher (tested with PHP 8.3)
- **MySQL**: 5.7 or higher
- **Web Server**: Apache or Nginx
- **Browser Support**: All modern browsers

### PHP Extensions

- `mysqli` - MySQL database connectivity
- `session` - Session management
- `password` - Password hashing functions

## 📦 Installation

### Step 1: Clone the Repository

```bash
git clone https://github.com/shohanislamjoy/event_management_php.git
cd event_management_php
```

### Step 2: Configure Web Server

#### Apache Configuration

1. Copy files to your web server directory:
   ```bash
   cp -r * /var/www/html/event_management/
   ```

2. Ensure proper permissions:
   ```bash
   chmod -R 755 /var/www/html/event_management/
   ```

#### Local Development (XAMPP/WAMP)

1. Copy the project folder to your htdocs directory
2. Start Apache and MySQL services
3. Access via `http://localhost/event_management_php/`

### Step 3: Database Configuration

Update the database connection settings in `connection.php`:

```php
$host = "localhost";        // Your MySQL host
$username = "root";         // Your MySQL username
$password = "";             // Your MySQL password
$database = 'event_management_php';  // Database name
```

## 🗄 Database Setup

### Create Database

```sql
CREATE DATABASE event_management_php;
USE event_management_php;
```

### Create Users Table

```sql
CREATE TABLE users (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

### Create Admin User

```sql
INSERT INTO users (name, email, phone, password) VALUES 
('Administrator', 'admin@gmail.com', '1234567890', '$2y$10$example_hashed_password');
```

> **Note**: Replace `$2y$10$example_hashed_password` with a properly hashed password using PHP's `password_hash()` function.

## 🚀 Usage

### For Users

1. **Registration**: 
   - Visit `signup.php`
   - Fill in your details (name, email, phone, password)
   - Submit to create your account

2. **Login**:
   - Visit `login.php`
   - Enter your email and password
   - Access your user dashboard

### For Administrators

1. **Admin Access**:
   - Use the admin email: `admin@gmail.com`
   - Login through the same `login.php` page
   - Automatically redirected to admin dashboard

### Navigation

- **Homepage**: `index.php` - Main landing page
- **Registration**: `signup.php` - User registration form
- **Login**: `login.php` - User authentication
- **Logout**: `logout.php` - End user session

## 📁 File Structure

```
event_management_php/
├── README.md                 # Project documentation
├── index.php                 # Main homepage
├── connection.php            # Database connection configuration
├── login.php                 # User login form and authentication
├── signup.php                # User registration form
├── login_check.php           # Session validation utility
├── logout.php                # User logout functionality
└── frontend/                 # Frontend assets (CSS, JS, images)
    ├── signup.css            # Styling for registration/login forms
    └── img/                  # Image assets
```

### Core Files Description

- **`connection.php`**: Establishes MySQL database connection with error handling
- **`login.php`**: Handles user authentication and role-based redirection
- **`signup.php`**: Manages user registration with password hashing
- **`login_check.php`**: Provides session validation utilities
- **`logout.php`**: Handles secure user logout and session destruction

## ⚙️ Configuration

### Database Configuration

Edit `connection.php` to match your database settings:

```php
$host = "your_mysql_host";
$username = "your_mysql_username"; 
$password = "your_mysql_password";
$database = 'event_management_php';
```

### Admin Configuration

The system recognizes `admin@gmail.com` as the admin account. To change this:

1. Open `login.php`
2. Find line 26: `if ($email === "admin@gmail.com")`
3. Replace with your desired admin email

### Frontend Customization

- Modify `frontend/signup.css` for custom styling
- Update image paths in `frontend/img/` directory
- Customize Bootstrap/MDB components as needed

## 🤝 Contributing

We welcome contributions to improve the Event Management System! Here's how you can help:

### Getting Started

1. **Fork the Repository**
   ```bash
   git clone https://github.com/yourusername/event_management_php.git
   ```

2. **Create a Feature Branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make Your Changes**
   - Follow PHP coding standards
   - Add comments for complex logic
   - Test your changes thoroughly

4. **Submit a Pull Request**
   - Provide a clear description of changes
   - Include screenshots for UI changes
   - Reference any related issues

### Development Guidelines

- **Code Style**: Follow PSR-12 PHP coding standards
- **Security**: Always use prepared statements for database queries
- **Documentation**: Update README for new features
- **Testing**: Test on multiple PHP versions when possible

### Areas for Contribution

- [ ] Event management functionality
- [ ] Email notification system
- [ ] Payment integration
- [ ] Calendar integration
- [ ] Advanced admin features
- [ ] API development
- [ ] Unit testing implementation
- [ ] Documentation improvements

## 📝 License

This project is licensed under the MIT License - see below for details:

```
MIT License

Copyright (c) 2024 Event Management PHP

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## 📞 Support

If you encounter any issues or have questions:

1. Check the [Issues](https://github.com/shohanislamjoy/event_management_php/issues) page
2. Create a new issue with detailed description
3. Include PHP version, MySQL version, and error messages

---

**Happy Event Managing! 🎉**