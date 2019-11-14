<?php
$username = isset($_POST['marcondes']);
$password = isset($_POST['123456']);
$banco = isset(mysql['marcondes']);

try {
    $conn = new PDO('mysql:host=localhost;dbname='.$banco, 
    $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo 'ERROR: ' . $e->getMessage();
}