<?php
$info = "mysql:host=localhost;dbname=5xcli";
$user = "root";
$pass = "";
$utf = array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8");
try 
			 {
			 	$pdo = new PDO($info, $user, $pass, $utf);
			 }
catch (exception $e)
			 {
			 	echo 'une erreur de type '.$e;
			 	die();
			 }
$tempo = $pdo->query('SELECT * FROM membres');
$tempo->execute();
$buffer = $tempo->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($buffer);
			 
?>