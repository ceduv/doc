<?php
$dir=file("base2.php");
$max = count($dir)-1; // compte element tableau - 1
$rand = rand( 0 , $max); // rand dans toute les valeur du tableau
$value = $dir[$rand];

$test = "base2.php";

$contents = file_get_contents($test);
$contents = str_replace($value, '', $contents);
file_put_contents($test, $contents);
///

<form action="/Perso/Films/jeu.php" method="POST">
</br>
<button type="submit" name="button2" value = "2" class = "btn btn-primary">Regarder ce film et le supprimé de la base !</button>
</form>
</br>
<?php if(isset($_POST["button2"])){
    
$contents = file_get_contents($test);
$contents = str_replace($value, '', $contents);
file_put_contents($test, $contents);
}
?>

