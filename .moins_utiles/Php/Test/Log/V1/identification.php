<?php

require_once "function" . DIRECTORY_SEPARATOR . "functions.php";
require "menu" . DIRECTORY_SEPARATOR . "header.php";
$error = null;
$errorpass = null;
$success = null;

$_POST['password'] ?? null;
$_POST['email'] ?? null;

if (!empty($_POST['password']) && !empty($_POST['email'])) {
  $login = isLog($_POST['email'], $_POST['password']);
  $pdo = new PDO('mysql:host=localhost;dbname=test', "test", "test");
  $query = $pdo->query('SELECT * FROM utilisateurs');    // retourne un jeu de résultats en tant qu'objet PDOStatement
  if ($query === false) {
    var_dump($pdo->errorInfo());
    die('erreur SQL');
  } else {
    $email = htmlentities($_POST['email']);            // previent injection sql
    $password = htmlentities($_POST['password']);

    $check = $pdo->prepare(('SELECT email, pass FROM utilisateurs WHERE email=?')); // je cherche email et pass dans ... ou ?= tout les champs email?
    $check->execute([$email]);  // execution requete
    $data = $check->fetch();    //  j importe les donnes trouvé dans date
    $row = $check->rowCount();  // on compte le nombre de resulta trouvé pour email
    if ($row == 1) {
      if ($data['pass'] === $password) {               // on cherche dans le tableau data la cle pass qu on compare au password rentré
        header('location:mainboard.php');              // on redirige
        // on initialise la session ????
        // session_start(); 1ere ligne
        // $_SESSION['user']= $data['?????'] ID || mail
        // cree une verif si pas deja une session d initialiser sur insciption et identif
        // si oui redirige direct vers main board
      } else {
        $errorpass = "password incorrect";
      }
    } else {
      $error = "Vous n'etes pas enregistré";
    }
  }
}
?>


<main class="main">
  <div class="container">

    <div class="banner">
      <img src="assets/img/banner-1.png" alt="" width="800" height="170">
    </div>
    <!-- banner -->

    <form action="" method="POST">
      <section class="login">
        <h2 class="login-title">Identification</h2>
        <div class="login-body">
          <div class="login-input">
            <input class="<?= $error != null ? "error" : "" ?>" type="email" name="email" placeholder="Email">
            <input class="<?= $errorpass != null ? "error" : "" ?>" type="password" name="password" placeholder="Mot de passe">

          </div>
          <div class="login-button">
            <?php if (isset($success)) : ?>
              <div class="alert alert-success"><?= $success ?></div>
            <?php elseif (isset($error)) : ?>
              <div class="alert alert-danger"><?= $error ?></div>
            <?php elseif (isset($errorpass)) : ?>
              <div class="alert alert-danger"><?= $errorpass ?></div>
            <?php endif ?>
            <button type="submit">Valider</button>
          </div>
          <div class="login-support">Mot de passe oubli&eacute;, <a href="#">cliquer ici</a></div>
          <div class="login-support">Inscription , <a href="inscription.php">cliquer ici</a></div>
        </div>


      </section>

    </form>
    <!-- login -->

  </div>
</main>
<!-- main -->
</div>
<?php
require "menu" . DIRECTORY_SEPARATOR . "header.php";
?>