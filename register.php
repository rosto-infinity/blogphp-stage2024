<?php
require_once "libraries/database.php";
require_once "libraries/utils.php";

$pdo = getPdo();  // Connexion à la base de données

if (isset($_POST['register'])) {

    $errors = [];

    // Validation du pseudo
    if (empty($_POST['username'])) {
        $errors['username'] = "Pseudo non valide";
    } else {
        if (isUsernameTaken($_POST['username'])) {
            $errors['username'] = "Ce pseudo n'est plus disponible";
        }
    }

    // Validation de l'email
    if (empty($_POST['email']) || !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
        $errors['email'] = "Email non valide";
    } else {
        if (isEmailTaken($_POST['email'])) {
            $errors['email'] = "Cet email est déjà pris";
        }
    }

    // Validation du mot de passe
    if (empty($_POST['password'])) {
        $errors['password'] = "Vous devez entrer un mot de passe ";
    } else if ($_POST['password'] !== $_POST['confirm_password']) {
        $errors['password'] = "Votre mot de passe ne correspond pas !";
    }

    // Insérer l'utilisateur si aucune erreur
    if (empty($errors)) {
        $hashedPassword = password_hash($_POST['password'], PASSWORD_BCRYPT);
        
        if (insertUser($pdo, $_POST['username'], $_POST['email'], $hashedPassword)) {
            // Rediriger vers la page de login après l'inscription réussie
            redirect("login");
        } else {
            $errors['database'] = "Une erreur est survenue lors de l'enregistrement.";
        }
    }
}

/**
 * Affichage de la page
 */
$pageTitle = 'register'; 
render('articles/register');