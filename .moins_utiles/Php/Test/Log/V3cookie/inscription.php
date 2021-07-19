<?php

require "menu" . DIRECTORY_SEPARATOR . "header.php";
require "CLASS" . DIRECTORY_SEPARATOR . "Valid.php";


$errors = [];
if (!empty($_POST)) {
    $valid = new Valid(htmlentities($_POST['firstname']), htmlentities($_POST['lastname']), htmlentities($_POST['email']), htmlentities($_POST['password']), htmlentities($_POST['passvalid']), htmlentities($_POST['birthday']), $errors);
    if ($valid->isValid() === true) {
        try {
            $pdo = new PDO('mysql:host=127.0.0.1;dbname=test', "test", "test");
            $query = $pdo->prepare('INSERT INTO utilisateurs SET firstname= :firstname,
                                                                 lastname = :lastname,
                                                                 email= :email,
                                                                 pass= :pass,
                                                                 birthday= :birthday');

            $password = password_hash($_POST['password'], PASSWORD_DEFAULT);

            $query->execute([
                'firstname' => $_POST['firstname'],
                'lastname' => $_POST['lastname'],
                'email' => $_POST['email'],
                'pass' => $password,
                'birthday' => $_POST['birthday']
            ]);
        } catch (PDOException $e) {
            $error = $e->getMessage();
        }
    } else {
        $errors = $valid->getErrors();
    }
}
if (!empty($_POST)) {
    var_dump($valid->check_db());
    var_dump($valid->isValid());
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
                            <div class="alert alert-success"> Inscription Reussie ! <a class='login-support' href="http://test/Formation/V2/identification.php">connection</a></div>
                        <?php endif ?>
                    <?php endif ?>
                    <?php if (isset($errors['email'])) : ?>
                        <div class="alert alert-danger"><?= $errors['email'] ?></div>
                    <?php endif ?>
                    <div class="login-input">
                        <!--  wtf??  rouge-->
                        <?php if (isset($errors['checkpass'])) : ?>
                            <div class="alert alert-info"><?= $errors['checkpass'] ?></div>
                        <?php endif ?>

                        <input class="<?php if (isset($errors['firstname'])) {
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

                        <input class="<?php if (isset($errors['regex'])) {
                                            echo "error";
                                        } ?>" type="email" name="email" placeholder="Email" value="<?= $_POST['email'] ?? ""; ?>">
                        <?php if (isset($errors['regex'])) : ?>
                            <div class="alert alert-primary"><?= $errors['regex'] ?></div>
                        <?php endif ?>

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