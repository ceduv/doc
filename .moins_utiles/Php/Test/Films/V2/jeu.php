<?php

$title = "Film Roulette";
$valeur = null;
$test = "base2.php";
$base=file("base2.php"); // fichier importer ds tableau
$max = count($base)-1; // compte element tableau - 1
$rand = rand( 0 , $max); // rand dans toute les valeur du tableau
$value = $base[$rand]; // va chercher la clé dans le tableau grace au rand
if(isset($_POST['titre'])){
    $contents = file_get_contents($test);
    $contents = str_replace($_POST['titre'], '', $contents);
    file_put_contents($test, $contents);

}

require "header.php";

?>
</br>
</br>
</br>


<form action="/Perso/Films/v2/jeu.php" method="POST">
<div class="form-group">
<input type="text" class = "form-control" name="film" placeholder="Ajoutez un film a la base de donnée ." >
</div>
</br>
<button type="submit"class = "btn btn-primary">valider !</button>
</form>
<?php if(isset($_POST["film"])){
$string= $_POST["film"];
$string1= "$string\r\n";
$file = fopen("base2.php", "a");
fwrite ( $file ,$string1) ;
fclose($file);
}
?>
</br>
<form action="/Perso/Films/v2/jeu.php" method="POST">
<div class="form-group">
</div>
</br>
<button type="submit" name="button" value = "1" class = "btn btn-primary">choisir un film</button>
</form>
</br>
<?php if(isset($_POST["button"])): ?>
    <div class="alert alert-success">
    <?= $value ?>
    </div>
<?php endif ?>

<form action="/Perso/Films/v2/jeu.php" method="POST">
</br>
<input type="hidden" value=" <?= $value ?>" name="titre">
<button type="submit" name="button2" value = "2" class = "btn btn-primary">Regarder ce film et le supprimé de la base !</button>
</form>
</br>






</br>


<?php
require "footer.php";

// quand j appui sur regarder , ne pâs relancer value
?>

