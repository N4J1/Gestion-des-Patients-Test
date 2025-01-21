<?php
// public/index.php

require_once __DIR__ . '/../src/core/Router.php';
require_once __DIR__ . '/../src/controllers/PatientController.php';

$router = new Router();


// routes
$router->addRoute('/patients', ['PatientController', 'list']);

// Dispatch the request
$requestUri = str_replace('/patient-management', '', $_SERVER['REQUEST_URI']);
$requestUri = explode('?', $requestUri)[0];
$router->dispatch($requestUri);