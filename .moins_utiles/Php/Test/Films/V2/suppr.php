<?php 
session_start();

$title = "Film Roulette";
$valeur = null;
$test = "base2.php";
$base=file("base2.php"); // fichier importer ds tableau
$max = count($base)-1; // compte element tableau - 1
$rand = rand( 0 , $max); // rand dans toute les valeur du tableau
$value = $base[$rand]; // va chercher la clé dans le tableau grace au rand
$_SESSION["save"]=$value;

require "header.php";

?>

</br>
</br>
</br>
<div class="alert alert-success">
    <?= $value ?>
    </div>




<form action="/Perso/Films/v2/jeu.php" method="POST">
</br>
<button type="submit" name="button2" value = "2" class = "btn btn-primary">Regarder ce film et le supprimé de la base !</button>
</form>
</br>
<?php if(isset($_POST["button2"])){
    
$contents = file_get_contents($test);
$contents = str_replace($_SESSION["save"], '', $contents);
file_put_contents($test, $contents);
session_destroy();
}
?>




<?= $value ?>
</br>
<?= $_SESSION["save"] ?>


<?php
require "footer.php";
// si click bouton1 ou 2 ne pas relancer $value
// else 
?>