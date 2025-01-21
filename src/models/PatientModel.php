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
        $sql = 'INSERT INTO patients (name, contact, appointment_date, doctor_id) VALUES (?, ?, ?, ?, ?)';
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$name, $contact, $appointment_date, $doctor_id]);
    }

    
    public function read() {
        $sql = 'SELECT * FROM patients';
        $stmt = $this->pdo->query($sql);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    
    public function readById($id) {
        $sql = 'SELECT * FROM patients WHERE id = ?';
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