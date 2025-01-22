-- database schema
CREATE TABLE departments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE doctors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact VARCHAR(15) NOT NULL,
    qualification VARCHAR(100) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(id) ON DELETE CASCADE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE patients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact VARCHAR(15) NOT NULL,
    appointment_date DATETIME NOT NULL,
    doctor_id INT NOT NULL,
    FOREIGN KEY (doctor_id) REFERENCES doctors(id) ON DELETE CASCADE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);




-- seed data
INSERT INTO departments (name) VALUES ('Pediatrics'), ('Cardiology'),('Gynecology'),('Orthopedics'),('Dermatology'),('Neurology'),('Internal Medicine'),('Ophthalmology');

INSERT INTO doctors (name, contact, qualification, department_id) VALUES 
('Dr. Alice Smith', '555-101-2020', 'Pediatrician', 1),
('Dr. Bob Johnson', '555-202-3030', 'Cardiologist', 2),
('Dr. Carol Williams', '555-303-4040', 'Gynecologist', 3),
('Dr. David Brown', '555-404-5050', 'Orthopedic Surgeon', 4),
('Dr. Eva Davis', '555-505-6060', 'Dermatologist', 5),
('Dr. Frank Miller', '555-606-7070', 'Neurologist', 6),
('Dr. Grace Wilson', '555-707-8080', 'Internal Medicine', 7),
('Dr. Henry Moore', '555-808-9090', 'Ophthalmologist', 8);

INSERT INTO patients (name, contact, appointment_date, doctor_id) VALUES 
('John Doe', '555-111-2222', '2023-10-01 09:00:00', 1),
('Jane Smith', '555-222-3333', '2023-10-02 11:30:00', 2),
('Emily Johnson', '555-333-4444', '2023-10-03 14:00:00', 3),
('Michael Brown', '555-444-5555', '2023-10-04 10:15:00', 4),
('Sarah Davis', '555-555-6666', '2023-10-05 13:45:00', 5),
('Chris Wilson', '555-666-7777', '2023-10-06 15:30:00', 6),
('Jessica Taylor', '555-777-8888', '2023-10-07 08:00:00', 7),
('Daniel Anderson', '555-888-9999', '2023-10-08 12:00:00', 8);


