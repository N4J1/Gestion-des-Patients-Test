<?php
require_once __DIR__ . '/../controllers/PatientController.php';

class Router {
    private $routes = [];

    public function addRoute($route, $handler) {
        $this->routes[$route] = $handler;
    }

    public function dispatch($requestUri) {
        foreach ($this->routes as $pattern => $handler) {
            $pattern = str_replace('/', '\/', $pattern);
            $pattern = preg_replace('/\{(\w+)\}/', '(?P<$1>\d+)', $pattern);
            if (preg_match("/^{$pattern}$/", $requestUri, $matches)) {
                [$PatientController, $action] = $handler;
                $controller = new $PatientController();

                $params = array_filter($matches, 'is_string', ARRAY_FILTER_USE_KEY);
                call_user_func_array([$controller, $action], $params);
                return;
            }
        }

        header("HTTP/1.0 404 Not Found");
        echo "404 - Page Not Found";
    }
}