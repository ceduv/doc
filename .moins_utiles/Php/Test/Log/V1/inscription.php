<?php

require "menu" . DIRECTORY_SEPARATOR . "header.php";
require "CLASS" . DIRECTORY_SEPARATOR . "Valid.php";

$errors = [];
var_dump($errors);
//htmlentities possible devant valid ? ou chaque $_post?
if (!empty($_POST)) {
    $valid = new Valid($_POST['firstname'], $_POST['lastname'], $_POST['email'], $_POST['password'], $_POST['passvalid'], $_POST['birthday'], $errors);

    var_dump($valid->isValid());
    if ($valid->isValid() === true) {
        try {
            $pdo = new PDO('mysql:host=127.0.0.1;dbname=test', "test", "test");
            $query = $pdo->prepare('INSERT INTO utilisateurs SET firstname= :firstname,
                                                                 lastname = :lastname,
                                                                 email= :email,
                                                                 pass= :pass,
                                                                 birthday= :birthday');

            $query->execute([
                'firstname' => $_POST['firstname'],
                'lastname' => $_POST['lastname'],
                'email' => $_POST['email'],
                'pass' => $_POST['password'],
                'birthday' => $_POST['birthday']
            ]);
        } catch (PDOException $e) {         //-> je capture ce type d execptions PDO EXCEPTIONS
            $error = $e->getMessage();
        }
    } else {
        $errors = $valid->getErrors();   // si valid==false on recup les erreures 
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
                <h2 class="login-title">Insciption</h2>
                <div class="login-body">
                    <?php if (!empty($_POST)) : ?>
                        <!-- obliger de set ca ? erreur valid pas set -->
                        <?php if ($valid->isValid() === true) : ?>
                            <div class="alert alert-success"> Inscription Reussie ! <a class='login-support' href="http://test/Formation/identification.php">s'identifier</a></div>
                        <?php endif ?>
                    <?php endif ?>
                    <div class="login-input">
                        <!--  wtf?? ])) rouge-->
                        <?php if (isset($errors['checkpass'])) : ?>
                            <div class="alert alert-info"><?= $errors['checkpass'] ?></div>
                        <?php endif ?>

                        <input class="<?php if (isset($valid->errors['firstname'])) {
                                            echo "error";
                                        } ?>" type="text" name="firstname" placeholder="firstname" value="<?= $_POST['firstname'] ?? ""; ?>">
                        <?php if (isset($errors['firstname'])) : ?>
                            <div class="alert alert-primary"><?= $errors['firstname'] ?></div>
                        <?php endif ?>

                        <input class="<?php if (isset($errors['lastname'])) {
                                            echo "error";
                                        } ?>" type="text" name="lastname" placeholder="lastname" value="<?= $_POST['lastname'] ?? ""; ?>">
                        <?php if (isset($errors['lastname'])) : ?>
                            <div class="alert alert-primary"><?= $errors['lastname'] ?></div>
                        <?php endif ?>

                        <input class="" type="email" name="email" placeholder="Email" value="<?= $_POST['email'] ?? ""; ?>">

                        <input class="<?php if (isset($errors['password'])) {
                                            echo "error";
                                        } ?>" type="password" name="password" placeholder="Mot de passe">
                        <?php if (isset($errors['password'])) : ?>
                            <div class="alert alert-primary"><?= $errors['password'] ?></div>
                        <?php endif ?>

                        <input class="<?php if (isset($errors['passvalid'])) {
                                            echo "error";
                                        } ?>" type="password" name="passvalid" placeholder="Répetez mot de passe">
                        <?php if (isset($errors['passvalid'])) : ?>
                            <div class="alert alert-primary"><?= $errors['passvalid'] ?></div>
                        <?php endif ?>

                        <input type="date" name="birthday" id=""> <!-- a VOIR !!! -->
                        <?php if (isset($_POST['firstname']) && empty($_POST['birthday'])) : ?>
                            <div class="alert alert-primary">set birthday</div>
                        <?php endif ?>
                    </div>
                    <div class="login-button">
                        <button type="submit">Valider</button>
                    </div>
                    <div class="login-support">Mot de passe oubli&eacute;, <a href="#">cliquer ici</a></div>

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