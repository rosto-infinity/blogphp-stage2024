<?php
session_start();
 require_once "database/database.php"; // Fichier de configuration pour la connexion à la base de données


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
                    header("Location: admin_dashboard.php");
                    break;

                default:
                    header("Location: user_dashboard.php");
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

// debut du tampon de la page de sortie
ob_start();

//Inclusion du template de la page d'accueil
require "templates/articles/login_html.php";

//Récuperation du contenu du tampon de la page de sortie
$pageContent = ob_get_clean();

//Inclusion du template de la page de sortie
require "templates/layout_html.php";