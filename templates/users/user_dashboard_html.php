<!-- Contenu spécifique au client -->
<h1>Hello
  <?= isset($_SESSION["auth"]['username']) ? $_SESSION["auth"]['username'] : "" ?></h1>
<?php

?>