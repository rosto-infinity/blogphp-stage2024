<?php
if (session_status() == PHP_SESSION_NONE) {
  session_start();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./templates/style.css">
  <link rel="stylesheet" href="./templates/paginate.css">
  <title>Cours blog PHP 2024 - <?= $pageTitle ?> </title>
</head>

<body>
  <header>
    <div class="logo">
      <h2>
        <a href="http://localhost/cours-2024/stage/blogphp-stage2024/index.php">Blog-2024
        </a>
      </h2>
    </div>

    <nav>
      <ul>
        <?php if (isset($_SESSION['auth'])) : ?>
        <li><a id="gcu" href="logout.php">Se deconnecter</a></li>
        <?php else : ?>
        <li><a href="register.php">S'inscrire</a></li>
        <li><a href="login.php">Se connecter</a></li>
        <?php endif; ?>
      </ul>
    </nav>

  </header>

  <div class="main">

    <?= $pageContent ?>
  </div>
</body>

</html>