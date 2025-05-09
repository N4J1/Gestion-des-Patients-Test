<?php

use Smarty\Smarty;

require_once __DIR__ . '/../../vendor/autoload.php';

class SmartyConfig {
    public static function getSmarty() {
        $smarty = new Smarty();

        
        $smarty->setTemplateDir(__DIR__ . '/../../src/views');
        $smarty->setCompileDir(__DIR__ . '/../../smarty/templates');
        $smarty->setCacheDir(__DIR__ . '/../../smarty/cache');
        $smarty->setConfigDir(__DIR__ . '/../../config');

        
        $smarty->caching = Smarty::CACHING_OFF; 
        $smarty->debugging = false;

        return $smarty;
    }
}