<?php 
session_start();
require_once "database/database.php";

/**
 * 1. Récupération du param "id" et vérification de celui-ci
 */
$article_id = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT); 

// On peut désormais décider : erreur ou pas ?!
if ($article_id ===null || $article_id ===false){
  die("Vous devez préciser un paramètre `id` valide dans l'URL !");
}

/**
 * 2. Récupération de l'article en question
 * On va ici utiliser une requête préparée car elle inclue une variable qui provient de l'utilisateur : Ne faites
 * jamais confiance à ce connard d'utilisateur ! :D
 */
$sql="SELECT * FROM articles WHERE id = :article_id";
$query = $pdo->prepare($sql);

// On exécute la requête en précisant le paramètre :article_id 
$query->execute(compact('article_id'));

// On fouille le résultat pour en extraire les données réelles de l'article
$article = $query->fetch();


/**
 * 3. Récupération des commentaires de l'article en question et les users
 * Pareil, toujours une requête préparée pour sécuriser la donnée filée par l'utilisateur (cet enfoiré en puissance !)
 */

$sql ="SELECT comments.*, users.username 
      FROM comments
      JOIN users ON comments.user_id = users.id 

      WHERE article_id = :article_id";

$query = $pdo->prepare($sql);

// On exécute la requête en précisant le paramètre :article_id
$query->execute(compact('article_id'));

// On fouille le résultat pour en extraire les données réelles des commentaires
$commentaires= $query->fetchAll();








/**
 * . On affiche 
 */

 
//Titre de la page 
$pageTitle ='Article du  blog'; 

// debut du tampon de la page de sortie
ob_start();

//Inclusion du template de la page d'accueil
require"templates/articles/show_html.php";

//Récuperation du contenu du tampon de la page de sortie
$pageContent = ob_get_clean();

//Inclusion du template de la page de sortie
require"templates/layout_html.php";