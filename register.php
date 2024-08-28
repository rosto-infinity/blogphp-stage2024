<?php
require_once "database/database.php"; // Fichier de configuration pour la connexion à la base de données

if (isset($_POST['register'])) {

   $errors = [];

  // Pseudo--------------------------------
  if (empty($_POST['username']) || !preg_match("#^[a-zA-Z0-9_]+$#", $_POST['username'])) {
    
    $errors['username'] = "Pseudo non valide";
    
  } else {
   
    $query = "SELECT * FROM users WHERE username = ?";
    $req = $pdo->prepare($query);
    $req->execute([$_POST['username']]);
    
    if ($req->fetch()) {
      $errors['username'] = "Ce pseudo n'est plus disponible";
      
    }
  }
  

  // Email---------------------------------------
  if (empty($_POST['email']) || !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
    $errors['email'] = "Email non valide";
  } else {
    // SELECT * FROM users WHERE email = post
    $query = "SELECT * FROM users WHERE email = ?";
    $req = $pdo->prepare($query);
    $req->execute([$_POST['email']]);
    if ($req->fetch()) {
      $errors['email'] = "Cet email est déjà pris";
    }
  }

  // Password-----------------------------------------
  if (empty($_POST['password'])) {
    $errors['password'] = "Vous devez entrer un mot de passe ";
  } else if ($_POST['password'] !== $_POST['confirm_password']) {
    $errors['password'] = "Votre mot de passe ne correspond pas !";
  }

  // INSERT INTO------------------------------------------
  if (empty($errors)) {
    $query = "INSERT INTO users(username,email,password) VALUES(?,?,?)";
    $req = $pdo->prepare($query);
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);

    $req->execute([$_POST['username'], $_POST['email'], $password]);
    
    // On redirige vers la page de login

    header("Location: login");
    exit();
  }

  
}


/**
 * . On affiche 
 */

//Titre de la page 
$pageTitle ='register'; 

// debut du tampon de la page de sortie
ob_start();

//Inclusion du template de la page register
require"templates/articles/register_html.php";

//Récuperation du contenu du tampon de la page de sortie
$pageContent = ob_get_clean();

//Inclusion du template de la page de sortie
require"templates/layout_html.php";