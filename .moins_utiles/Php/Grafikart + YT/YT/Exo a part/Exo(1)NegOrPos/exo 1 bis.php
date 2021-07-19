<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>exo php</title>
</head>
<body>
<h1>Saisir un nombre</h1>
<form method="POST">
    <input type="number" name="nbr">
    <input type="submit" name="" value="valider !">
</form>
<?php

$A = $_POST['nbr'];

if($A==0){
    echo "tu triches fdp !";
}
elseif($A<0){
    echo "nbr negatif";
 }
else 
    echo "nbr positif";


 
?>
    
</body>
</html>