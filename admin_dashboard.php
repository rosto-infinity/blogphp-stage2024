<?php
session_start();
require_once "libraries/database.php";
require_once "libraries/utils.php";
$pdo = getPdo();

if ($_SESSION['role'] != 'admin') {
    redirect("index.php");  
}

/**
 * Ajouter un nouvel article
 */

// Vérification de l'authentification de l'utilisateur
// Assurez-vous que l'utilisateur est connecté avant de lui permettre d'ajouter un article

// Vérification et nettoyage des entrées
function clean_input($data){
    return htmlspecialchars(stripslashes(trim($data)));
}
// Récupération des données du formulaire
if (isset($_POST['add-article'])) {
    
   // Nettoyage des entrées
  $title = clean_input(filter_input(INPUT_POST, 'title', FILTER_DEFAULT));
  $slug = strtolower(str_replace(' ', '-', $title)); // Mise à jour du slug à partir du titre
  $introduction = clean_input(filter_input(INPUT_POST, 'introduction', FILTER_DEFAULT));
  $content = clean_input(filter_input(INPUT_POST, 'content', FILTER_DEFAULT));

  // Validation des données
  if (empty($title) || empty($slug) || empty($introduction) || empty($content)) {
    $error = "Veuillez remplir tous les champs du formulaire !";
  } else {


        // Insertion du nouvel article dans la base de données
        $query = $pdo->prepare('INSERT INTO articles (title, slug, introduction, content, created_at) VALUES (?, ?, ?, ?, NOW())');
        $query->execute([$title, $slug, $introduction, $content]);
    }
}


// Configuration
$articlesPerPage = 6; // Nombre d'articles par page

// Utilisation de filter_input pour une meilleure sécurité
$page = filter_input(INPUT_GET, 'page', FILTER_VALIDATE_INT) ?: 1;

// Récupération des articles depuis votre source de données
$allArticles = getAllArticles($pdo); // Fonction pour récupérer tous les articles
$totalArticles = count($allArticles); // Nombre total d'articles

// Calcul du nombre total de pages
$totalPages = ceil($totalArticles / $articlesPerPage);

// Vérification de la validité de la page demandée
$page = max(1, min($page, $totalPages));

// Calcul des indices de début des articles à afficher
$startIndex = ($page - 1) * $articlesPerPage;


// Fonction pour récupérer tous les articles
function getAllArticles($pdo)
{


$query = "SELECT * FROM articles ORDER BY created_at DESC";
$stmt = $pdo->prepare($query);
$stmt->execute();
return $stmt->fetchAll();
}

/**
 * . On affiche 
 */
//Titre de la page
$pageTitle = "Ajouter un article";

render('admin/admin_dashboard', compact('allArticles','startIndex','articlesPerPage','totalPages','page'));