<?php
session_start();
require_once "libraries/database.php";
require_once "libraries/utils.php";

$pdo = getPdo();

if (isset($_POST['login'])) {
    $errors = "";
    
//   $errors="ok";

    
    if (!empty($_POST['email']) && !empty($_POST['password'])) {

        // Vérification des informations de connexion
        $query = "SELECT * FROM users
        WHERE (email = :email OR username =:email)";
        $query = $pdo->prepare($query);
        $query->execute([
            'email' => $_POST['email'], 
            'password' => $_POST['password']
        ]);
        $user = $query->fetch();
        // echo"<pre>";
        // print_r($user);
        // echo"<pre>";
        // die();
        
        // Si les informations de connexion sont correctes, on crée une session et on redirige vers la page d'accueil de l'admin ou l'utilisateur

        if ($user && password_verify($_POST['password'], $user['password'])) {
            $_SESSION['role'] = $user['role'];
            $_SESSION['auth'] = $user;
           

            // Redirection en fonction du rôle
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
    }else{
        $errors = "Tous les champs doivent être remplis.";
    }
}

/**
 * . On affiche 
 */

//Titre de la page 
$pageTitle = 'login';

render('articles/login');