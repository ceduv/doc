<?php
$today = date('y-m-d');
$allViewFile = __DIR__ . DIRECTORY_SEPARATOR . 'data' . DIRECTORY_SEPARATOR . 'count.txt';
$dayViewFile  = __DIR__ . DIRECTORY_SEPARATOR . 'data' . DIRECTORY_SEPARATOR . $today . '-daycount.txt';
$allView = (int)file_get_contents($allViewFile);
$dayView = null;

if (file_exists($dayViewFile)) {
    $dayView = (int)file_get_contents($dayViewFile);
} else {
    $dayView = 1;
}

require('menu ' . DIRECTORY_SEPARATOR . 'functions.php');
require('menu ' . DIRECTORY_SEPARATOR . 'header.php');

add_view($allViewFile, $allView);
add_view($dayViewFile, $dayView);


?>



<main class="px-3">
    <h1>Cover your page.</h1>
    <p class="lead">Cover is a one-page template for building simple and beautiful home pages. Download, edit the text, and add your own fullscreen background photo to make it your own.</p>
    <p class="lead">
        <a href="#" class="btn btn-lg btn-secondary fw-bold border-white ">Learn more</a>
    <h2>Nombres de visites depuis la creation de la page : <strong><?= $allView ?></strong></h2>
    <?php if (file_exists($dayViewFile) && file_get_contents($dayViewFile) > 1) : ?>
        <h3>Nombres de visites aujourdhui : <strong><?= ++$dayView ?></strong></h3>
    <?php else : ?>
        <h3>Vous etes le <strong>premier visiteur aujourd'hui</strong></h3>
    <?php endif ?>
    </p>
</main>


<?php
require('menu ' . DIRECTORY_SEPARATOR . 'footer.php');
?>