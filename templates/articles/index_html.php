<h1>Listes des articles</h1>

<hr>
<div>
  <?php for ($i = 0; $i < count($articles); $i++) : ?>
  <h2> <?= $articles[$i]['title'] ?> </h2>

  <p> <?= $articles[$i]['introduction'] ?> </p>

  <a href="article.php?id=<?= $articles[$i]['id'] ?>">Voir plus</a>

  <?php endfor ?>
</div>