<?php

function getPdo()
{

  // Connexion à la base de données avec PDO
  $pdo = new PDO('mysql:host=localhost;dbname=blogphp-stage2024;charset=utf8', 'root', '');

  return $pdo;
}
function findAllArticles()
{
  $pdo = getPdo();
  //Récuperation des articles de la base de données
  $resultats = $pdo->query("SELECT * FROM articles ORDER BY created_at DESC");
  $articles = $resultats->fetchAll();
  return $articles;
}
function findArticle(int $id)
{
  $pdo = getPdo();
  $sql = "SELECT * FROM articles WHERE id = :id";
  $query = $pdo->prepare($sql);
  $query->execute(compact('id'));
  $article = $query->fetch();

  return $article;
}
function findAllComments(int $id)
{
  $pdo = getPdo();
  $sql = "SELECT comments.*, users.username 
      FROM comments
      JOIN users ON comments.user_id = users.id 

      WHERE article_id = :id";

  $query = $pdo->prepare($sql);

  // On exécute la requête en précisant le paramètre :id
  $query->execute(compact('id'));

  // On fouille le résultat pour en extraire les données réelles des commentaires
  $commentaires = $query->fetchAll();
  return $commentaires;
}
function saveComments(array $data)
{
    $pdo = getPdo();

    // Requête SQL pour insérer les données dans la base de données
    $query = $pdo->prepare('INSERT INTO comments (content, article_id, user_id, created_at) VALUES (:content, :article_id, :user_auth, NOW())');

    // Exécuter la requête avec les données du tableau associatif
    $query->execute([
        'content' => $data['content'],
        'article_id' => $data['article_id'],
        'user_auth' => $data['user_auth'],
    ]);
}
function isUsernameTaken($username)
{
  $pdo = getPdo();
    $query = "SELECT * FROM users WHERE username = ?";
    $req = $pdo->prepare($query);
    $req->execute([$username]);
    return $req->fetch(); // Retourne true si un utilisateur est trouvé
}
function isEmailTaken($email)
{
  $pdo = getPdo();
    $query = "SELECT * FROM users WHERE email = ?";
    $req = $pdo->prepare($query);
    $req->execute([$email]);
    return $req->fetch(); // Retourne true si un utilisateur est trouvé
}
function insertUser($username, $email, $password)
{
  $pdo = getPdo();
    $query = "INSERT INTO users(username, email, password) VALUES(?, ?, ?)";
    $req = $pdo->prepare($query);
    return $req->execute([$username, $email, $password]); // Exécute l'insertion
}

function findUserByEmailOrUsername($emailOrUsername)
{
    $pdo = getPdo();
    $query = "SELECT * FROM users WHERE (email = :email OR username = :username)";
    $req = $pdo->prepare($query);
    $req->execute([
        'email' => $emailOrUsername,
        'username' => $emailOrUsername
    ]);
    return $req->fetch(); // Retourne l'utilisateur trouvé ou false
}

function updateArticle($articleId, $title, $slug, $introduction, $content)
{
   $pdo = getPdo();
    $query = $pdo->prepare('UPDATE articles SET title = :title, slug = :slug, introduction = :introduction, content = :content WHERE id = :articleId');
    $update =$query->execute(compact('title', 'slug', 'introduction', 'content', 'articleId'));
    
    return $update;
}
function deleteArticle(int $id)
{
  $pdo = getPdo();
  $query = $pdo->prepare('DELETE FROM articles WHERE id = :id');
  $query->execute(['id' => $id]);
}
/**
 * Fonction pour insérer un nouvel article dans la base de données.
 *
 * @param string $title Le titre de l'article.
 * @param string $slug Le slug de l'article.
 * @param string $introduction L'introduction de l'article.
 * @param string $content Le contenu de l'article.
 * @return bool Indique si l'insertion a réussi.
 */
function insertArticle(string $title, string $slug, string $introduction, string $content): bool
{
    $pdo = getPdo(); // Récupération de la connexion PDO

    // Préparation de la requête d'insertion
    $query = $pdo->prepare('INSERT INTO articles (title, slug, introduction, content, created_at) VALUES (?, ?, ?, ?, NOW())');
    
    // Exécution de la requête
    return $query->execute([$title, $slug, $introduction, $content]); // Retourne vrai si l'insertion réussie
}