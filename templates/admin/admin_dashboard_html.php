<h1><u>Gestions des articles</u></h1>
<!-- Contenu spécifique à l'admin -->
<h3>Hello <?= isset($_SESSION["auth"]['username']) ? $_SESSION["auth"]['username'] : "" ?></h3>
<div class="admin">

  <div class="article adm">
    <span style='color:#FF6600 ; font-size:4rem; text-align:center; font-weight: 700px;'>Adminitrateur : </span>


  </div>

  <?php
if (isset($error)) {
        echo "<p style='color: #fff;padding:20px; background:#FF6600; width:400px'>$error</p>";
}
?>
  <h1>Ajouter un nouvel article</h1>

  <form method="POST" action="admin_dashboard">
    <label for="title">Title:</label>
    <input type="text" name="title" id="title">

    <br>

    <div hidden>
      <label for="slug">Slug:</label>
      <input type="text" name="slug" id="slug">
    </div>

    <br>

    <label for="introduction">Introduction:</label>
    <textarea name="introduction" id="introduction"></textarea>

    <br>

    <label for="content">Content:</label>
    <textarea name="content" id="content"></textarea>

    <br>

    <button type="submit" name="add-article" value="add-article">Ajouter</button>

</div>
<?php
// Récupération des articles à afficher pour la page actuelle
$articles = array_slice($allArticles, $startIndex, $articlesPerPage);

// Affichage des articles
echo "<h1>Nos articles</h1>";
echo "<p>Il y a " . count($allArticles) . " articles.</p>";
echo '<div class="article-grid">';
foreach ($articles as $article) {
echo '<div class="article">';
echo '<h2>' . htmlspecialchars($article['title']) . '</h2>';
echo '<small>Ecrit le ' . htmlspecialchars($article['created_at']) . '</small><br>';
echo '<a href="article?id=' . urlencode($article['id']) . '">voir</a>';
echo '<a href="edit-article?id=' . urlencode($article['id']) . '">Éditer</a>';
echo '<a href="delete-article?id=' . urlencode($article['id']) .
        '" onclick="return confirm(\'Êtes-vous sûr de vouloir supprimer cet article ?!\')">Supprimer</a>';
echo '</div>';
}
echo '</div>';

// Affichage des liens de pagination
echo "<div class='pagination'>";
if ($totalPages > 1) {
echo $page > 1 ? "<a href='admin_dashboard?page=1'>Première page</a> <a href='admin_dashboard?page=" . ($page - 1) . "'>Page précédente</a> " : '';
for ($i = 1; $i <= $totalPages; $i++) {
        echo $i == $page ? "<span class='current-page'>$i</span> " : "<a href='admin_dashboard?page=$i'>$i</a> ";
}
echo $page < $totalPages ? "<a href='admin_dashboard?page=" . ($page + 1) . "'>Page suivante</a> <a href='admin_dashboard?page=$totalPages'>Dernière page</a> " : '';
}
echo "</div>";

?>