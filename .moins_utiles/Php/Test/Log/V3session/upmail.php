<?php
session_start();


require_once "function" . DIRECTORY_SEPARATOR . "functions.php";
require "menu" . DIRECTORY_SEPARATOR . "header.php";
require "CLASS" . DIRECTORY_SEPARATOR . "UpdateEmail.php";

$error = null;      // manque un champs
$errorpass = null;  // mauvais passe db
$erroremail = null;   // erreur nouveau mot de passe taille
$success = null;

$_POST['password'] ?? null;
$_POST['oldemail'] ?? null;
$_POST['newemail'] ?? null;
$email = $_SESSION['user'];

if (!empty($_POST['password']) && !empty($_POST['oldemail']) && !empty($_POST['newemail'])) {
    try {
        // conection
        $pdo = new PDO('mysql:host=localhost;dbname=test', "test", "test");
        $query = $pdo->query('SELECT * FROM utilisateurs');
        //  secu data
        $oldemail = htmlentities($_POST['oldemail']);
        $password = htmlentities($_POST['password']);
        $newemail = htmlentities($_POST['newemail']);
        // recup mail pass db
        $check = $pdo->prepare(('SELECT email, pass, id_user, firstname, lastname FROM utilisateurs WHERE email=?'));
        // check la base par l email rentré -> WHERE
        $check->execute([$oldemail]);
        $data = $check->fetch();
        // on compte les resultas
        $row = $check->rowCount();
        // si on en a c est que le mail existe alors on check le pass
        if ($row == 1) {
            if (password_verify($password, $data['pass'])) {
                $verif = new CheckEmail($newemail, $oldemail, $data['email']);
                // si le nouvelle email est valide
                if ($verif->is_valid_email() === true) {
                    // on update la db avec le nouvel email
                    // et on insert dans une autre base l ancien mail
                    try {
                        $update = $pdo->prepare('INSERT INTO oldutilisateurs (firstname,lastname,id_user,email)  
                    SELECT firstname ,lastname ,id_user ,email FROM utilisateurs where id_user=:id; 
                                            UPDATE utilisateurs SET email= :newemail WHERE id_user=:id');
                        $update->execute([
                            'id' => $data['id_user'],
                            'newemail' => $newemail
                        ]);
                        $success = "changement reussie";
                        session_unset();
                        $_SESSION['user'] = $newemail;
                        $email = $_SESSION['user'];
                    } catch (PDOException $e) {
                        $error = $e->getMessage();
                    }
                } else {
                    $erroremail = "email pb";
                }
            } else {
                $errorpass = "password incorrect";
            }
        } else {
            $erroremail = "email invalide";
        }
    } catch (PDOException $e) {
        $error = $e->getMessage();
    }
} else {
    // si 1 champ vide renvoi erreur
    if (empty($_POST['password']) && empty($_POST['oldemail']) && empty($_POST['newemail'])) {
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
                <h2 class="login-title">Changer d'adresse email</h2>
                <div class="login-body">
                    <div class="login-input">
                        <h4><?= $email ?></h4>
                        <input class="<?= $erroremail != null ? "error" : "" ?>" type="text" name="oldemail" placeholder="Adresse a remplacer">
                        <input class="<?= $errorpass != null ? "error" : "" ?>" type="password" name="password" placeholder="Mot de passe">
                        <input class="<?= $erroremail != null ? "error" : "" ?>" type="text" name="newemail" placeholder="Votre nouvelle adresse">

                    </div>
                    <div class="login-button">
                        <?php if (isset($success)) : ?>
                            <div class="alert alert-success"><?= $success ?></div>
                        <?php elseif (isset($error)) : ?>
                            <div class="alert alert-danger"><?= $error ?></div>
                        <?php elseif (isset($errorpass)) : ?>
                            <div class="alert alert-danger"><?= $errorpass ?></div>
                        <?php elseif (isset($erroremail)) : ?>
                            <div class="alert alert-danger"><?= $erroremail ?></div>
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