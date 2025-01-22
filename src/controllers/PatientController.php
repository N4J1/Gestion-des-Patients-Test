<?php

require_once __DIR__ . '/../core/SmartyConfig.php';
require_once __DIR__ . '/../models/PatientModel.php';
require_once __DIR__ . '/../models/DepartementModel.php';
require_once __DIR__ . '/../models/DoctorModel.php';

class PatientController {
    private $patients;
    private $departments;
    private $doctors;
    private $smarty;
    

    public function __construct() {
        $this->patients = new PatientModel();
        $this->departments = new DepartementModel();
        $this->doctors = new DoctorModel();
        $this->smarty = SmartyConfig::getSmarty();
    }

    public function list() {
        $patients = $this->patients->readWithDetails();
        $doctors = $this->doctors->read();
        $this->smarty->assign('title', 'Dashboard');
        $this->smarty->assign('patients', $patients);
        $this->smarty->assign('patients_count', count($patients));
        $this->smarty->assign('doctors', $doctors);
        $this->smarty->assign('doctors_count', count($doctors));

        $this->smarty->display('patients.tpl');
    }

    public function listOnlyPage() {
        $patients = $this->patients->readWithDetails();
        $this->smarty->assign('title', 'Patients Details');
        $this->smarty->assign('patients', $patients);
        $this->smarty->display('patients_page.tpl');
    }

    public function create() {
        
        if ($_SERVER['REQUEST_METHOD'] === 'POST' && $_POST['name'] && $_POST['contact'] && $_POST['appointment_date'] && $_POST['doctor_id']) {
            $this->patients->create($_POST['name'], $_POST['contact'], $_POST['appointment_date'], $_POST['doctor_id']);
            header('Location: /patients');
        } else {
            $this->smarty->assign('title', 'Create Patient');
            $departments = $this->departments->read();
            $doctors = $this->doctors->read();
            $this->smarty->assign('departments', $departments);
            $this->smarty->assign('doctors', $doctors);

            $this->smarty->display('patients_create.tpl');
        }
    }

    public function edit($id) {

        if ($_SERVER['REQUEST_METHOD'] === 'POST' && $_POST['name'] && $_POST['contact'] && $_POST['appointment_date'] && $_POST['doctor_id']) {
            $this->patients->update($id, $_POST['name'], $_POST['contact'], $_POST['appointment_date'], $_POST['doctor_id']);
            header('Location: /patients');
        } else {
            $this->smarty->assign('title', 'Edit Patient');
        $patient = $this->patients->readById($id);
        $departments = $this->departments->read();
        $doctors = $this->doctors->getDoctorsByDepartment($patient['doctor_department_id']);
            $this->smarty->assign('patient', $patient);
            $this->smarty->assign('departments', $departments);
            $this->smarty->assign('doctors', $doctors);
            $this->smarty->display('patients_edit.tpl');
        }
    }

    public function delete($id) {
        $this->patients->delete($id);
        header('Location: /patients');
    }

    // I dont want to create a controller for this ,its the only function i need for the create patient page
    public function getDoctorsByDepartment($departmentId) {
       
        $doctors = $this->doctors->getDoctorsByDepartment($departmentId);
        echo json_encode($doctors);
    }

    

    
}