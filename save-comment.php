<?php
session_start();
require_once "libraries/database.php";
require_once "libraries/utils.php";

// Récupération de l'utilisateur authentifié
$user_auth = $_SESSION['auth']['id'] ?? null;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    // Récupérer les données envoyées depuis le formulaire
    $content = $_POST['content'] ?? null;
    $article_id = $_POST['article_id'] ?? null;

    // Validation des données
    if (!$user_auth || !$article_id || !$content) {
        die("Votre formulaire a été mal rempli !");
    }

    // Sécuriser le contenu pour éviter l'injection de code
    $content = htmlspecialchars($content);

    // Vérifier l'existence de l'article
    $article = findArticle($article_id);
    if (!$article) {
        die("L'article $article_id n'existe pas !");
    }

    // Insérer le commentaire
    $data = [
        'content' => $content,
        'article_id' => $article_id,
        'user_auth' => $user_auth,
    ];
    saveComments($data);

    // Rediriger vers l'article
    redirect("article.php?id={$article_id}");
}