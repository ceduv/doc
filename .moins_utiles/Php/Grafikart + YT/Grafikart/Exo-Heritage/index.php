<?php
require __DIR__ . DIRECTORY_SEPARATOR . "class" . DIRECTORY_SEPARATOR . "DoubleCompteur.php";

$compteur = new DoubleCompteur(__DIR__ . DIRECTORY_SEPARATOR . 'data' . DIRECTORY_SEPARATOR . 'count.txt');
$vues = $compteur->recuperer();
$allView = $compteur->incrementer($vues);

require('menu ' . DIRECTORY_SEPARATOR . 'header.php');

?>



<main class="px-3">
    <h1>Cover your page.</h1>
    <p class="lead">Cover is a one-page template for building simple and beautiful home pages. Download, edit the text, and add your own fullscreen background photo to make it your own.</p>
    <p class="lead">
        <a href="#" class="btn btn-lg btn-secondary fw-bold border-white ">Learn more</a>
    <h2>Nombres de visites depuis la creation de la page : <strong><?= $allView ?></strong></h2>
    </p>
</main>


<?php
require('menu ' . DIRECTORY_SEPARATOR . 'footer.php');
?>