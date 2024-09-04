<?php
session_start();
require_once "database/database.php";
require_once "libraries/utils.php";

if ($_SESSION['role'] != 'default') {
  redirect("index.php");
}


/**
 * . On affiche 
 */

//Titre de la page 
$pageTitle ='Accueil du utilisateur'; 

// admin_dashboard
render('users/user_dashboard');