<?php

require_once __DIR__ . '/../core/Database.php';
class DepartementModel {
    private $pdo;

    public function __construct() {
        $db = new Database();
        $this->pdo = $db->getConnection();
    }

    public function read() {
        $stmt = $this->pdo->prepare('SELECT * FROM departments');
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
