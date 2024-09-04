<?php 
require_once "libraries/database.php";
require_once "libraries/utils.php";

$pdo = getPdo();
//Récuperation des articles de la base de données
$resultats = $pdo->query("SELECT * FROM articles ORDER BY created_at DESC");
$articles = $resultats->fetchAll();

/**
 * . On affiche 
 */

//Titre de la page 
$pageTitle ='Accueil du blog ';

//require "templates/articles/index_html.php";
// render('articles/index', [
//   'pageTitle' => $pageTitle,  // Titre de la page
//   'articles' => $articles]);

  render('articles/index', compact('articles'));