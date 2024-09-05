<?php
session_start();
require_once "libraries/database.php";
require_once "libraries/utils.php";

$pdo = getPdo();  // Connexion à la base de données

if (isset($_POST['login'])) {
    $errors = "";

    // Vérification que les champs sont remplis
    if (!empty($_POST['email']) && !empty($_POST['password'])) {

        // Rechercher l'utilisateur avec l'email ou le nom d'utilisateur
        $user = findUserByEmailOrUsername($_POST['email']);

        // Vérifier si l'utilisateur existe et si le mot de passe est correct
        if ($user && password_verify($_POST['password'], $user['password'])) {
            // Si l'utilisateur est authentifié, on stocke les informations dans la session
            $_SESSION['role'] = $user['role'];
            $_SESSION['auth'] = $user;

            // Redirection selon le rôle de l'utilisateur
            switch ($user['role']) {
                case 'admin':
                    redirect("admin_dashboard.php");
                    break;

                default:
                    redirect("user_dashboard.php");
                    break;
            }
        } else {
            $errors = "Email ou mot de passe incorrect.";
        }
    } else {
        $errors = "Tous les champs doivent être remplis.";
    }
}

/**
 * Affichage de la page
 */
$pageTitle = 'login'; 
render('articles/login');