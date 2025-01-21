<?php
// src/controllers/PatientController.php

require_once __DIR__ . '/../core/SmartyConfig.php';
require_once __DIR__ . '/../models/PatientModel.php';

class PatientController {
    private $model;
    

    public function __construct() {
        $this->model = new PatientModel();
        
    }

    public function list() {
        $patients = $this->model->read();
        echo "<pre>";
        print_r($patients);
        echo "</pre>";
    }

    
}