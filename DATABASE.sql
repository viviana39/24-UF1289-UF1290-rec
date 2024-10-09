-- Database: school

CREATE DATABASE IF NOT EXISTS school;
USE school;

-- Table for persons with enum role (student, professor, admin)
CREATE TABLE IF NOT EXISTS persons (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  role ENUM('student', 'professor', 'admin') NOT NULL,
  score INT NULL
);

-- Sample data for persons
INSERT INTO persons (name, email, role, score) VALUES
('Alice Smith', 'alice.smith@example.com', 'student', 85),
('Bob Johnson', 'bob.johnson@example.com', 'student', 92),
('Charlie Brown', 'charlie.brown@example.com', 'student', 78),
('Dr. Emily Green', 'emily.green@example.com', 'professor', NULL),
('Dr. John Black', 'john.black@example.com', 'professor', NULL),
('Admin Jane Doe', 'jane.doe@example.com', 'admin', NULL);
