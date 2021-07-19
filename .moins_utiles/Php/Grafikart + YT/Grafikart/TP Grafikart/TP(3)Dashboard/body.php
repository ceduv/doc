<?php
require('menu' . DIRECTORY_SEPARATOR . 'functions.php');

$annee = (int)date('y');
$annee_select = empty($_GET['annee']) ? null : (int)$_GET['annee'];
$mois_select = empty($_GET['mois']) ? null : $_GET['mois'];
if ($annee_select && $mois_select) {
    $view = display_month_views($annee_select, $mois_select);
    $details = display_details_views($annee_select, $mois_select);
} else {
    $view = display_views();
}
$mois = [
    '01' => 'Janvier',
    '02' => 'Fevrier',
    '03' => 'Mars',
    '04' => 'Avril',
    '05' => 'Mai',
    '06' => 'Juin',
    '07' => 'Juillet',
    '08' => 'Aout',
    '09' => 'Septembre',
    '10' => 'Octobre',
    '11' => 'Novembre',
    '12' => 'Decembre'
];
require('menu ' . DIRECTORY_SEPARATOR . 'header.php');


?>
<br>
<br>

<body>

    <div class="row">
        <div class="col-md-4">
            <div class="list-group">

                <?php for ($i = 0; $i < 5; $i++) : ?>
                    <a class="list-group-item<?= $annee - $i === $annee_select ? ' active' : '' ?>" href="body.php?annee=<?= $annee - $i ?>"><?= $annee - $i ?></a>
                    <?php if ($annee - $i === $annee_select) : ?>
                        <div class="list-group">
                            <?php foreach ($mois as $key => $noms) : ?>
                                <a class="list-group-item<?= $key === $mois_select ? " active" : ""; ?>" href="body.php?annee=<?= $annee - $i ?>&mois=<?= $key ?>"><?= $noms ?></a>
                            <?php endforeach ?>
                        </div>
                    <?php endif ?>
                <?php endfor ?>

            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    Visite<?= $view > 1 ? 's' : '' ?> total : <strong style="font-size: 1em;"><?= $view ?></strong>
                </div>
            </div>
            <?php if (isset($details)) : ?>
                <h2>Details des visites pour le mois</h2>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Jour</th>
                            <th>Visites</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($details as $ligne) : ?>
                            <tr>
                                <td><?= $ligne['jours'] ?></td>
                                <td><?= $ligne['visites'] ?></td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
            <?php endif ?>
        </div>
        <div class="col-md-2">

        </div>
    </div>

</body>

<?php
require('menu ' . DIRECTORY_SEPARATOR . 'footer.php');
?>