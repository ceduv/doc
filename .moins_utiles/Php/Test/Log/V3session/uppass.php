<?php
session_start();

require_once "function" . DIRECTORY_SEPARATOR . "functions.php";
require "menu" . DIRECTORY_SEPARATOR . "header.php";
require "CLASS" . DIRECTORY_SEPARATOR . "UpdatePass.php";

$error = null;      // manque un champs
$errorpass = null;  // mauvais passe db
$errornewpass = null;   // erreur nouveau mot de passe taille
$success = null;

$_POST['password'] ?? null;
$_POST['newpassword'] ?? null;
$_POST['newpassword2'] ?? null;
$email = $_SESSION['user'];

if (!empty($_POST['password']) && !empty($_POST['newpassword']) && !empty($_POST['newpassword2'])) {
    try {
        // conection
        $pdo = new PDO('mysql:host=localhost;dbname=test', "test", "test");
        $query = $pdo->query('SELECT * FROM utilisateurs');
        //  secu data
        $password = htmlentities($_POST['password']);
        $newpassword = htmlentities($_POST['newpassword']);
        $newpassword2 = htmlentities($_POST['newpassword2']);
        // recup mail pass db
        $check = $pdo->prepare(('SELECT email, pass FROM utilisateurs WHERE email=?'));
        $check->execute([$email]);
        $data = $check->fetch();
        //verif password entré + db
        if (password_verify($password, $data['pass'])) {
            $verif = new CheckPassword($newpassword, $newpassword2);
            // verif taille + egalité password
            if ($verif->verifPassword() == true) {
                // update db + hash
                $query = $pdo->prepare('UPDATE utilisateurs SET pass= :pass where email=:email');
                $newpassword = password_hash($newpassword, PASSWORD_DEFAULT);
                $query->execute([
                    'email' => $email,
                    'pass' => $newpassword
                ]);
                $success = "changement reussie";
            } else {
                $errornewpass = "nouveau password different ou trop court";
            }
        } else {
            $errorpass = "password incorrect";
        }
    } catch (PDOException $e) {
        $error = $e->getMessage();
    }
} else {
    // si 1 champ vide renvoi erreur
    if (empty($_POST['password']) && empty($_POST['newpassword']) && empty($_POST['newpassword2'])) {
    } else {
        $error = " remplir tous les champs ";
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
                <h2 class="login-title">Changer de mot de passe</h2>
                <div class="login-body">
                    <div class="login-input">
                        <input class="<?= $errorpass != null ? "error" : "" ?>" type="password" name="password" placeholder="Mot de passe">
                        <input class="<?= $errornewpass != null ? "error" : "" ?>" type="password" name="newpassword" placeholder="Nouveau mot de passe">
                        <input class="<?= $errornewpass != null ? "error" : "" ?>" type="password" name="newpassword2" placeholder="encore 1x">

                    </div>
                    <div class="login-button">
                        <?php if (isset($success)) : ?>
                            <div class="alert alert-success"><?= $success ?></div>
                        <?php elseif (isset($error)) : ?>
                            <div class="alert alert-danger"><?= $error ?></div>
                        <?php elseif (isset($errorpass)) : ?>
                            <div class="alert alert-danger"><?= $errorpass ?></div>
                        <?php elseif (isset($errornewpass)) : ?>
                            <div class="alert alert-danger"><?= $errornewpass ?></div>
                        <?php endif ?>
                        <button type="submit">Valider</button>
                    </div>
                    <div class="login-support">revenir a vos informations : <a href="mainboard.php">cliquer ici</a></div>
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