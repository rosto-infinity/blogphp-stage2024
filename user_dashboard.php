<?php
session_start();
require_once "database/database.php";


if ($_SESSION['role'] != 'default') {
  header("Location: index.php");
  exit();
}


/**
 * . On affiche 
 */

//Titre de la page 
$pageTitle ='Accueil du utilisateur'; 

// debut du tampon de la page de sortie
ob_start();

//Inclusion du template de la page d'accueil
require"templates/users/user_dashboard_html.php";

//Récuperation du contenu du tampon de la page de sortie
$pageContent = ob_get_clean();

//Inclusion du template de la page de sortie
require"templates/layout_html.php";