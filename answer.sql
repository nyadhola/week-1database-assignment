
-- WEEK 1 DATABASE ASSIGNMENT
-- Project: Library Management System
-- Database: library_management

-- 1. Create the database
CREATE DATABASE IF NOT EXISTS library_management;

-- 2. Select the database
USE library_management;

-- 3. Create Members table
CREATE TABLE members (
    id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(20),
    registration_date DATE NOT NULL
);

-- 4. Create Books table
CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- 5. Create Borrowings table
CREATE TABLE borrowings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date DATE NOT NULL,
    return_date DATE,
    
    FOREIGN KEY (member_id) REFERENCES members(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

-- 6. Display all tables
SHOW TABLES;

-- 7. View table structures
DESCRIBE members;
DESCRIBE books;
DESCRIBE borrowings;
