<div class=" content">

  <div class="container">
    <div class="header">
      <h2>Se Connecter</h2>
    </div>
    <?php
            if (!empty($errors)) {
                echo "<div style=\"color:white; text-align: center; background-color:#ff6c6c;padding:2px 7px; margin-bottom:10px; font-size:23px;\">$errors</div>";
            }
            ?>


    <form action="login" class="form" id="form" method="POST">
      <div class="form-control">
        <label for="email">Nom d'utilisateur ou l'émail</label>
        <input type="text" id="email" placeholder="rostodev" autocomplete="off" name="email">

      </div>

      <div class=" form-control">
        <label for="password">Mot de passe <a class="passforget" href="#remember.php">(J'ai oublié mon mot de
            passe)</a>
        </label>
        <input type="password" id="password" name="password">

      </div>

      <div class="form-controlg remember">
        <label for="remember"> <input type="checkbox" name="remember" value="1"> Se souvenir de moi</label>


      </div>

      <button type="submit" name="login"> Se connecter</button>
    </form>

  </div>

</div>