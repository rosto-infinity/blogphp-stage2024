<?php
session_start();
require_once "database/database.php";
$error="";

echo $error;
/**
 * Éditer un article existant
 */



$error ='';


// Récupération des informations d'un article à modifier
if (isset($_GET['id']) && filter_var($_GET['id'], FILTER_VALIDATE_INT)) {

  // Récupération des informations de l'article à éditer
  $sql = "SELECT * FROM articles WHERE id = ?";
  $query = $pdo->prepare($sql);
  $articleId = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);
  $query->execute([$articleId]);
  $article = $query->fetch(PDO::FETCH_ASSOC);

      // Récupération des données
  $title = $article['title'] ?? "";
  $slug = $article['slug'] ?? "";
  $introduction  = $article['introduction'] ?? "";
  $content = $article['content'] ?? "";
  
}

// Vérification et nettoyage des entrées
function clean_input($data){
  return htmlspecialchars(stripslashes(trim($data)));
}

if (isset($_POST['update'])) {

  // Nettoyage des entrées
  $title = clean_input(filter_input(INPUT_POST, 'title', FILTER_DEFAULT));
  $slug = strtolower(str_replace(' ', '-', $title)); // Mise à jour du slug à partir du titre
  $introduction = clean_input(filter_input(INPUT_POST, 'introduction', FILTER_DEFAULT));
  $content = clean_input(filter_input(INPUT_POST, 'content', FILTER_DEFAULT));
  $articleId = clean_input(filter_input(INPUT_POST, 'id', FILTER_VALIDATE_INT));

  // Validation des données
  if (empty($title) || empty($slug) || empty($introduction) || empty($content)) {
    $error = "Veuillez remplir tous les champs du formulaire !";
  } else {
   
   
   // Mise à jour de l'article dans la base de données
    $data = compact('title', 'slug', 'introduction', 'content', 'articleId');
    $query = $pdo->prepare('UPDATE articles SET title = :title, slug = :slug, introduction = :introduction, content = :content WHERE id = :articleId');
    $query->execute($data);

    // Redirection vers la page d'adim
    header("Location: admin_dashboard");
    exit();
  }
}


$pageTitle = "Éditer un article";
ob_start();
require 'templates/articles/edit-article_html.php';

$pageContent = ob_get_clean();

require 'templates/layout_html.php';