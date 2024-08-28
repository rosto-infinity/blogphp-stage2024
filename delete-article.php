<?php
session_start();
require_once "database/database.php";
/**
 * DANS CE FICHIER, ON CHERCHE À SUPPRIMER L'ARTICLE DONT L'ID EST PASSE EN GET
 * 
 * Il va donc falloir bien s'assurer qu'un paramètre "id" est bien passé en GET, puis que cet article existe bel et bien
 * Ensuite, on va pouvoir effectivement supprimer l'article et rediriger vers la page d'accueil
 */

/**
 * 1. On vérifie que le GET possède bien un paramètre "id" (delete?id=202) et que c'est bien un nombre

**/
$id = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);
if ($id === null || $id === false) {
    die("Ho ?! Tu n'as pas précisé l'id de l'article !");
}

/**
 * 3. Vérification que l'article existe bel et bien
 */
$query = $pdo->prepare('SELECT * FROM articles WHERE id = :id');
$query->execute(['id' => $id]);
$article = $query->fetch();

if (!$article) {
    die("L'article $id n'existe pas, vous ne pouvez donc pas le supprimer !");
}
/**
 * 4. Réelle suppression de l'article
 */
$query = $pdo->prepare('DELETE FROM articles WHERE id = :id');
$query->execute(['id' => $id]);

/**
 * 5. Redirection vers la page d'accueil
 */
header("Location: admin_dashboard.php");
exit();