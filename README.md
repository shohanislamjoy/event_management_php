# Event Management System (PHP)

A comprehensive web-based event management system built with PHP and MySQL. This application provides user authentication, event management capabilities, and an intuitive interface for managing events and user accounts.

## 🚀 Features

- **User Authentication System**
  - User registration and login
  - Secure password hashing
  - Session management
  - Admin authentication
  
- **User Management**
  - User profile management
  - Secure user data storage
  - Role-based access (Admin/User)
  
- **Modern UI/UX**
  - Responsive design using Bootstrap and MDB UI Kit
  - Clean and intuitive interface
  - Mobile-friendly layout

## 📋 Prerequisites

Before you begin, ensure you have the following installed on your system:

- **PHP** (version 7.4 or higher)
- **MySQL** (version 5.7 or higher) or **MariaDB**
- **Web Server** (Apache, Nginx, or built-in PHP server)
- **Web Browser** (Chrome, Firefox, Safari, etc.)

## 🛠️ Installation

### 1. Clone the Repository

```bash
git clone https://github.com/shohanislamjoy/event_management_php.git
cd event_management_php
```

### 2. Database Setup

1. **Create a MySQL database:**
   ```sql
   CREATE DATABASE event_management_php;
   ```

2. **Create the users table:**
   ```sql
   USE event_management_php;
   
   CREATE TABLE users (
       id INT(11) AUTO_INCREMENT PRIMARY KEY,
       name VARCHAR(100) NOT NULL,
       email VARCHAR(100) UNIQUE NOT NULL,
       phone VARCHAR(20) NOT NULL,
       password VARCHAR(255) NOT NULL,
       created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
   );
   ```

3. **Create an admin user (optional):**
   ```sql
   INSERT INTO users (name, email, phone, password) 
   VALUES ('Admin', 'admin@gmail.com', '1234567890', '$2y$10$example_hashed_password');
   ```
   *Note: Use the signup form to create the admin account with email `admin@gmail.com`*

### 3. Configuration

1. **Update database connection settings** in `connection.php`:
   ```php
   $host = "localhost";
   $username = "root";        // Your MySQL username
   $password = "";            // Your MySQL password
   $database = 'event_management_php';
   ```

2. **Ensure proper file permissions** (if on Linux/Mac):
   ```bash
   chmod 755 /path/to/project
   chmod 644 *.php
   ```

### 4. Web Server Setup

#### Option A: Using PHP Built-in Server (Development)
```bash
php -S localhost:8000
```
Then visit: `http://localhost:8000`

#### Option B: Using Apache/Nginx
1. Copy the project files to your web server's document root
2. Configure your virtual host to point to the project directory
3. Access the application through your configured domain/localhost

## 🎯 Usage

### Getting Started

1. **Access the Application**
   - Open your web browser and navigate to your application URL
   - You'll see the main page (`index.php`)

2. **User Registration**
   - Click on "SignUp" or navigate to `signup.php`
   - Fill in the registration form with:
     - Full Name
     - Email Address
     - Phone Number
     - Password
   - Accept the terms of service
   - Click "Register"

3. **User Login**
   - Navigate to `login.php`
   - Enter your email and password
   - Click "LogIn"

4. **Admin Access**
   - Register or login with email: `admin@gmail.com`
   - Admin users will be redirected to `adminLogin.php`

### File Structure

```
event_management_php/
├── README.md              # Project documentation
├── index.php             # Main page/Dashboard
├── signup.php            # User registration page
├── login.php             # User login page
├── login_check.php       # Session validation
├── logout.php            # User logout functionality
├── connection.php        # Database connection configuration
└── frontend/             # Static assets (CSS, images)
    ├── signup.css        # Styling for forms
    └── img/              # Image assets
```

### Key Files Description

- **`connection.php`**: Database connection configuration and setup
- **`signup.php`**: User registration form and processing
- **`login.php`**: User authentication form and processing
- **`login_check.php`**: Session management and user validation
- **`logout.php`**: Session termination and user logout
- **`index.php`**: Main application dashboard/homepage

## 🔧 Configuration

### Database Configuration
Modify `connection.php` to match your database settings:

```php
$host = "your_host";           // Usually 'localhost'
$username = "your_username";   // Your database username
$password = "your_password";   // Your database password
$database = 'event_management_php';
```

### Security Settings
- Passwords are automatically hashed using PHP's `password_hash()` function
- Sessions are used for user authentication
- SQL prepared statements prevent SQL injection attacks

## 🤝 Contributing

We welcome contributions to improve the Event Management System! Here's how you can contribute:

### How to Contribute

1. **Fork the Repository**
   ```bash
   git clone https://github.com/your-username/event_management_php.git
   ```

2. **Create a Feature Branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make Your Changes**
   - Follow the existing code style
   - Add comments for complex logic
   - Test your changes thoroughly

4. **Commit Your Changes**
   ```bash
   git add .
   git commit -m "Add: Brief description of your changes"
   ```

5. **Push to Your Branch**
   ```bash
   git push origin feature/your-feature-name
   ```

6. **Submit a Pull Request**
   - Open a pull request on GitHub
   - Provide a clear description of your changes
   - Include any relevant issue numbers

### Development Guidelines

- **Code Style**: Follow PSR-12 coding standards for PHP
- **Security**: Always validate and sanitize user inputs
- **Database**: Use prepared statements for all database queries
- **Documentation**: Update README.md for any new features
- **Testing**: Test all functionality before submitting

### Areas for Contribution

- Event creation and management features
- User profile management
- Email notifications
- Calendar integration
- Event categories and tags
- File upload functionality
- Enhanced admin panel
- API development
- Mobile app integration

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

### MIT License Summary

```
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
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```

## 📞 Support

If you encounter any issues or have questions:

1. **Check the Issues**: Look at existing [GitHub Issues](https://github.com/shohanislamjoy/event_management_php/issues)
2. **Create an Issue**: If your problem isn't listed, create a new issue
3. **Provide Details**: Include error messages, PHP version, and steps to reproduce

## 🔮 Future Enhancements

- [ ] Event creation and management
- [ ] Calendar view for events
- [ ] Email notifications
- [ ] Event categories and filtering
- [ ] File upload for event images
- [ ] Event booking and RSVP system
- [ ] Payment integration
- [ ] Advanced admin dashboard
- [ ] REST API endpoints
- [ ] Mobile responsive improvements

## 📊 Version History

- **v1.0.0** - Initial release with basic authentication system
  - User registration and login
  - Admin authentication
  - Basic session management

---

**Built with ❤️ using PHP and MySQL**

For more information, visit the [project repository](https://github.com/shohanislamjoy/event_management_php).