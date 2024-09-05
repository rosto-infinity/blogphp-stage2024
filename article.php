<?php 
session_start();
require_once "libraries/database.php";
require_once "libraries/utils.php";

$pdo = getPdo();

$article_id = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT); 

// On peut désormais décider : erreur ou pas ?!
if ($article_id ===null || $article_id ===false){
  die("Vous devez préciser un paramètre `id` valide dans l'URL !");
}
$article =findArticle($article_id);
$commentaires=findAllComments($article_id);
$pageTitle ='Article du  blog'; 

// render('articles/index', compact('articles'));
render('articles/show',compact('article','commentaires','article_id'));