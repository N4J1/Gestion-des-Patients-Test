<?php
// src/models/PatientModel.php

require_once __DIR__ . '/../core/Database.php';

class PatientModel {
    private $pdo;

    public function __construct() {
        // Database instance
        $db = new Database();
        $this->pdo = $db->getConnection();
    }

    
    public function create($name, $contact, $appointment_date, $doctor_id) {
        $sql = 'INSERT INTO patients (name, contact, appointment_date, doctor_id) VALUES (?, ?, ?, ?)';
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$name, $contact, $appointment_date, $doctor_id]);
    }

    
    public function read() {
        $sql = 'SELECT * FROM patients';
        $stmt = $this->pdo->query($sql);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function readWithDetails() {
        // select also doctor departement id
        $sql = 'SELECT patients.*, doctors.name AS  doctor_name, doctors.department_id AS doctor_department_id, departments.name AS department_name FROM patients LEFT JOIN doctors ON patients.doctor_id = doctors.id LEFT JOIN departments ON doctors.department_id = departments.id';
        $stmt = $this->pdo->query($sql);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    
    public function readById($id) {
        $sql = 'SELECT patients.*, doctors.name AS  doctor_name, doctors.department_id AS doctor_department_id, departments.name AS department_name FROM patients LEFT JOIN doctors ON patients.doctor_id = doctors.id LEFT JOIN departments ON doctors.department_id = departments.id WHERE patients.id = ?';
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    
    public function update($id, $name, $contact, $appointment_date, $doctor_id) {
        $sql = 'UPDATE patients SET name = ?, contact = ?, appointment_date = ?, doctor_id = ? WHERE id = ?';
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$name, $contact, $appointment_date, $doctor_id, $id]);
    }

    
    public function delete($id) {
        $sql = 'DELETE FROM patients WHERE id = ?';
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$id]);
    }
}