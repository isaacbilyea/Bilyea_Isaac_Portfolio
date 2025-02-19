<?php

$dsn = "mysql:host=localhost;dbname=isaacbil28_portfolio;charset=utf8mb4";

try {
$connect = new PDO($dsn, 'isaacbil28_portfolio', 'KNVgLFFzg2QphCDje5Gv');
} catch (Exception $e) {
    error_log($e->getMessage());
    exit('unable to connect');
}
?>