<div class="content">
  <div class="container">
    <div class="header">
      <h2>S'inscrire</h2>
    </div>

    <?php
    if (!empty($errors)) {
      echo '<div style="color:white; text-align: center; background-color:#ff6c6c;padding:2px 7px; margin-bottom:10px; font-size:23px;">' . reset($errors) . '</div>';
    }
    ?>


    <form action="register" class="form" id="form" method="post" enctype="multipart/form-data">

      <div class="form-control">
        <label for="username">Nom d'utilisateur</label>
        <input type="text" id="username" placeholder="rostodev" name="username" autocomplete="off"
          value="<?= isset($_POST['username']) ? $_POST['username'] : '' ?>">
      </div>


      <div class="form-control">
        <label for="email">Email</label>
        <input type="email" id="email" placeholder="rostodev@gmail.com" name="email"
          value="<?= isset($_POST['email']) ? $_POST['email'] : '' ?>">
      </div>

      <div class="form-control">
        <label for="password">Mot de passe</label>
        <input type="password" id="password" name="password">

      </div>

      <div class="form-control">
        <label for="confirm_password">Confirmation du mot de passe</label>
        <input type="password" id="confirm_password" name="confirm_password">

      </div>


      <button type="submit" name="register"> S'inscrire</button>

    </form>

  </div>
</div>