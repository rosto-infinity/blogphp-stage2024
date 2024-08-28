<h1 class="article-title"><?= $article['title'] ?></h1><br>
<p class="article-title"><?= $article['introduction'] ?></p><br>
<p>poster le <?= $article['created_at'];?></p><br>


<?php if (count($commentaires) === 0) : ?>
<h2 class="comment-heading">Il n'y a pas encore de commentaires pour cet
  article... SOYEZ LE PREMIER ! :D</h2>
<?php else : ?>
<h2 class="comment-heading">Il y a déjà <?= count($commentaires) ?> réactions :</h2>

<?php foreach ($commentaires as $commentaire) : ?>
<h3 class="comment-author">Commentaire de <?= $commentaire['username'] ?></h3>
<small class="comment-date">Le <?= $commentaire['created_at'] ?></small>
<blockquote class="comment-content">
  <em><?= $commentaire['content'] ?></em>
</blockquote>
<?php 
// var_dump($_SESSION['auth']['username']);
// die();

?>


<?php endforeach ?>

<?php endif ?>


<?php 
// Vérifier si l'utilisateur est connecté
if (isset($_SESSION['auth'])) {
?>

<form action="save-comment" method="POST" class="comment-form">

  <h3 class="comment-form-heading"> Vous voulez reagir ? N'hesitez pas bros !</h3><br>


  <textarea name="content" cols="30" rows="10" placeholder="Votre commentaire ..."
    class="comment-form-content"></textarea><br>

  <input type="hidden" name="article_id" value="<?= $article_id ?>"><br>
  <input type="hidden" name="user_id" value="<?= $_SESSION['auth']['id'] ?>"><br>

  <button class="comment-form-submit">COMMENTER !</button><br>

</form>


<?php 
} else {
    // Rediriger vers register.php si l'utilisateur n'est pas connecté
    echo '<p>Veuillez vous connecter ou vous inscrire pour commenter.</p>';
    echo '<a href="register.php">S\'inscrire</a> | <a href="login.php">Se connecter</a>';
}
?>
</div>