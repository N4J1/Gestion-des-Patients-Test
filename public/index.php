<?php


require_once __DIR__ . '/../src/core/Router.php';
require_once __DIR__ . '/../src/controllers/PatientController.php';

$router = new Router();


// routes
$router->addRoute('/', ['PatientController', 'list']);
$router->addRoute('/patients', ['PatientController', 'listOnlyPage']);
$router->addRoute('/patients/create', ['PatientController', 'create']);
$router->addRoute('/patients/edit/{id}', ['PatientController', 'edit']);
$router->addRoute('/patients/delete/{id}', ['PatientController', 'delete']);
$router->addRoute('/doctorsByDepartment/{departmentId}', ['PatientController', 'getDoctorsByDepartment']);


// Dispatch the request
$requestUri = str_replace('/patient-management', '', $_SERVER['REQUEST_URI']);
$requestUri = explode('?', $requestUri)[0];
$router->dispatch($requestUri);