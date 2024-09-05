<?php
session_start();
require_once "libraries/database.php";
require_once "libraries/utils.php";

$pdo = getPdo();
$error = "";

/**
 * Récupération des informations de l'article à éditer
 */
if (isset($_GET['id']) && filter_var($_GET['id'], FILTER_VALIDATE_INT)) {
    $articleId = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);
    
    $article = findArticle($articleId); // Utilisation de la fonction dans database.php

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
        $update = updateArticle($articleId, $title, $slug, $introduction, $content);
        if ($update) {
            // Redirection vers la page d'admin
            redirect("admin_dashboard");
        } else {
            $error = "Erreur lors de la mise à jour de l'article.";
        }
    }
}

$pageTitle = "Éditer un article";
render('articles/edit-article', compact('title', 'slug', 'introduction', 'content', 'articleId', 'error'));