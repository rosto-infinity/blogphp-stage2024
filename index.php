<?php
require_once "libraries/database.php";
require_once "libraries/utils.php";

$articles = findAllArticles();

$pageTitle = 'Accueil du blog ';
render('articles/index', compact('pageTitle', 'articles'));