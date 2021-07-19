<?php
session_start();
require "menu" . DIRECTORY_SEPARATOR . "header.php";
require_once "function" . DIRECTORY_SEPARATOR . "functions.php";
leaveSession(); // si bouton deco

try {
    $pdo = new PDO('mysql:host=localhost;dbname=test', "test", "test");
    $query = $pdo->query('SELECT * FROM utilisateurs');
    $email = $_SESSION['user'];
    $check = $pdo->prepare(('SELECT email, firstname, lastname, created_at FROM utilisateurs WHERE email=?'));
    $check->execute([$email]);  // execution requete
    $data = $check->fetch();
    $firstname = $data['firstname'];
    $lastname = $data['lastname'];
    $email = $data['email'];
    $date  = $data['created_at'];
    $date = substr($date, 0, 10);
} catch (PDOException $e) {
    $error = $e->getMessage();
}

?>




<div class="container">

    <div class="banner">
        <img src="assets/img/banner-1.png" alt="" width="800" height="170">
    </div>

    <form action="" method="POST">
        <section class="login">
            <h2 class="login-title">Bienvenue <?= $firstname . " " . $lastname ?></h2>
            <div class="login-body">
                <p>contact : <strong><?= $email ?></strong></p>
                <p>vous etes inscrit depuis le : <strong><?= $date ?></strong></p>
            </div>
            <div class="login-button">
                <button type="submit" name="deco">Se deconnecter</button>
            </div>
            <div class="login-support">changer votre <a href="upmail.php">email</a></div>
            <div class="login-support">changer votre <a href="uppass.php">mot de passe</a></div>



        </section>

    </form>
    <!-- login -->

</div>
</main>

<?php
require "menu" . DIRECTORY_SEPARATOR . "footer.php";
// une x identifier mettre donne ds cookies
?>