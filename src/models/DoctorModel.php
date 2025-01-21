<?php

require_once __DIR__ . '/../core/Database.php';


class DoctorModel {
    private $pdo;

    public function __construct() {
        $db = new Database();
        $this->pdo = $db->getConnection();
    }

    public function read() {
        $stmt = $this->pdo->prepare('SELECT * FROM doctors');
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getDoctorsByDepartment($departmentId) {
        $query = "SELECT * FROM doctors WHERE department_id = :department_id";
        $stmt = $this->pdo->prepare($query);
        $stmt->bindParam(':department_id', $departmentId, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>  
