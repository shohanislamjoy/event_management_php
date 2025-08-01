-- Event Management PHP Database Setup
-- Run this script to set up the database for the Event Management System

-- Create database
CREATE DATABASE IF NOT EXISTS event_management_php;

-- Use the database
USE event_management_php;

-- Create users table
CREATE TABLE IF NOT EXISTS users (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Sample data (optional)
-- Note: The password below is hashed version of 'password123'
-- You can create an admin account using the signup form with email 'admin@gmail.com'

-- INSERT INTO users (name, email, phone, password) 
-- VALUES ('Admin User', 'admin@gmail.com', '1234567890', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi');

-- Display table structure
DESCRIBE users;

-- Show current users (will be empty initially)
SELECT * FROM users;