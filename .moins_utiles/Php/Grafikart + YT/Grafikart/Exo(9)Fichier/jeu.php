<?php
$title = "jeu 1";
$aDeviner = 150;
$erreur = null;
$succes = null;
$valeur = null;

if (isset($_POST['chiffre'])) {
    $valeur = (int)$_POST['chiffre'];
    if ($valeur > $aDeviner) {
        $erreur = "valeur trop grande .";
    } else if ($valeur < $aDeviner) {
        $erreur = "valeure trop petite .";
    } else {
        $succes = "bravo vous avez deviné la bonne valeur : <strong>$aDeviner</strong>";
    }
}

require "header.php";

?>
</br>
</br>
</br>
<?php if ($erreur != null) : ?>
    <div class="alert alert-danger">
        <?= $erreur ?>
    </div>
<?php elseif ($succes != null) : ?>
    <div class="alert alert-success">
        <?= $succes ?>
    </div>
<?php endif ?>

<form action="<?= $lienFichier ?>jeu.php" method="POST">
    <div class="form-group">
        <input type="number" class="form-control" name="chiffre" placeholder="entre 0 et 1000 : " value="<?= $valeur ?>">
    </div>
    </br>
    <button type="submit" class="btn btn-primary">Deviner</button>
</form>


<?php
require "footer2.php";
?>