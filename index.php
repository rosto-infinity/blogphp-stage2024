<?php 
require_once "database/database.php";

//Récuperation des articles de la base de données
$resultats = $pdo->query("SELECT * FROM articles ORDER BY created_at DESC");
$articles = $resultats->fetchAll();






/**
 * . On affiche 
 */

//Titre de la page 
$pageTitle ='Accueil du blog '; 

// debut du tampon de la page de sortie
ob_start();

//Inclusion du template de la page d'accueil
require"templates/articles/index_html.php";

//Récuperation du contenu du tampon de la page de sortie
$pageContent = ob_get_clean();

//Inclusion du template de la page de sortie
require"templates/layout_html.php";