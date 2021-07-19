<?php
$title = "Contact";
require_once "config.php";
require_once "functions.php";
date_default_timezone_set('Europe/Paris');

$heure = (int)($_GET['heure'] ?? date('G'));
$jourChoisi = (int)($_POST['Jours'] ?? date('N') - 1);
// Ternaire  $var = $_POST['action'] ?? "default";    ISSET

$creneaux = CRENEAUX[$jourChoisi];
$customerResponse = in_creneaux($heure, $creneaux);

$color = $customerResponse ? "green" : "red";
// Ternaire  $var = $check ? "true" : "false";        IF/ELSE

require "header.php";
?>


<br>
<br>
<br>
<main>
  <div class="row">
    <div class="col-md-6">
      <h2>Nous contacter</h2>
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus quas reiciendis voluptatum quod at doloribus a facere hic alias nihil, natus incidunt necessitatibus placeat minima, libero vero dignissimos! Assumenda, sunt.</p>



    </div>
    <div class="col-md-6">
      <h2>Horaire</h2>
      <?php if ($customerResponse === true) : ?>
        <div class="alert alert-success"> Le magasin est <strong>Ouvert</strong> .</div>
      <?php else : ?>
        <div class="alert alert-danger">Le magasin est <strong>Fermé</strong> .</div>
      <?php endif ?>
      <ul>
        <?php foreach (JOURS as $k => $jour) : ?>
          <li <?php if ($k + 1 === (int)date('N')) : ?> style="color:<?= $color ?>" <?php endif ?>>
            <strong><?= $jour ?> :</strong>
            <?= creneaux_html(CRENEAUX[$k]); ?>
          </li>
        <?php endforeach;  ?>
      </ul>
    </div>
  </div>



  <?php require "footer.php"; ?>