<?php

function getPdo(){

  // Connexion à la base de données avec PDO
  $pdo = new PDO('mysql:host=localhost;dbname=blogphp-stage2024;charset=utf8', 'root', '');
  
  return $pdo;
}
